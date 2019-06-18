using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using DoAnCoSo1.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Authorization;

namespace DoAnCoSo1.Controllers
{
    //[Authorize]
    public class AdminController : Controller
    {
        DACSDBContext data = new DACSDBContext();
        //Update Database
        //Scaffold-DbContext "Server=DESKTOP-3URSRU2\SQLEXPRESS;Database=DACSDB;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -f

        public IActionResult Home()
        {
            var tinTuc = (from tt in data.Tintuc select tt).OrderByDescending(tt => tt.Ngaydang);
            return View(tinTuc);
        }

        [HttpGet]
        public IActionResult Banner()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Banner(Banner bnr) {
            var banner = data.Banner.FirstOrDefault(b => b.MaBanner == "banner");
            banner.LinkBanner = bnr.LinkBanner;
            data.Banner.Update(banner);
            data.SaveChanges();
            return RedirectToAction("Home");
        }

        [HttpGet]
        [AllowAnonymous]
        public IActionResult Login(/*string returnUrl = null*/)
        {
            return View();
            //if (!string.IsNullOrEmpty(returnUrl) && Url.IsLocalUrl(returnUrl))
            //    return Redirect(returnUrl);
            //else
            //    return RedirectToAction("Home", "Admin");
        }

        [HttpPost]
        public IActionResult Login(Admin ad) {
            var admin = data.Admin.SingleOrDefault(adm => adm.AdminTaikhoan == ad.AdminTaikhoan && adm.AdminPassword == ad.AdminPassword);
            if (admin == null)
            {
                ViewBag.LoiDangnhap = "Sai tên tài khoản hoặc mật khẩu!";
            }
            else {
                HttpContext.Session.SetString("Admin", admin.AdminTaikhoan);
                return RedirectToAction("Home");
            }   
            return View();
        }

        [HttpGet]
        public IActionResult ThemTintuc()
        {
            ViewBag.MaTheloai = new SelectList(data.Theloai, "MaTheloai", "TenTheloai");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult ThemTintuc(Tintuc tt)
        {
            ViewBag.MaTheloai = new SelectList(data.Theloai, "MaTheloai", "TenTheloai");
            tt.Ngaydang = DateTime.Parse(DateTime.Now.ToString());
            if (ModelState.IsValid)
            {
                data.Tintuc.Add(tt);
                data.SaveChanges();
            }
            else
                return View();
            return RedirectToAction("Home");
        }

        public IActionResult AdminChitietTintuc(int maTT)
        {
            var newsDetail = data.Tintuc.SingleOrDefault(cttt => cttt.MaTintuc == maTT);
            return View(newsDetail);
        }

        public IActionResult AdminXoaTintuc(int maTT) {
            var tinTuc = data.Tintuc.SingleOrDefault(tt => tt.MaTintuc == maTT);
            data.Tintuc.Remove(tinTuc);
            data.SaveChanges();
            return RedirectToAction("Home");
        }
    }
}
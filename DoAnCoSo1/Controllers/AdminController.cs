using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using DoAnCoSo1.Models;

namespace DoAnCoSo1.Controllers
{
    public class AdminController : Controller
    {
        DACSDBContext data = new DACSDBContext();

        public IActionResult Home()
        {
            var tinTuc = from tt in data.Tintuc select tt;
            return View(tinTuc);
        }

        public IActionResult Login()
        {
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
    }
}
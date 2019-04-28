using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using DoAnCoSo1.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;

namespace DoAnCoSo1.Controllers
{
    public class TrangchuController : Controller
    {
        //Tạo đối tượng context
        DACSDBContext data = new DACSDBContext();

        //Lấy tất cả tin tức trong database đưa ra trang chủ
        public IActionResult Index()
        {
            var news = (from tt in data.Tintuc select tt).OrderByDescending(tt => tt.Ngaydang);
            return View(news);
        }

        public IActionResult GameTheoTheloai(string maTL) {
            var newsTL = from tt in data.Tintuc where tt.MaTheloai == maTL select tt;
            return View(newsTL);
        }

        public IActionResult ChitietTintuc(int maTT) {
            var newsDetail = data.Tintuc.SingleOrDefault(cttt => cttt.MaTintuc == maTT);
            return View(newsDetail);
        }

        [HttpGet]
        public IActionResult ThemTintuc() {
            ViewBag.MaTheloai = new SelectList(data.Theloai, "MaTheloai", "TenTheloai");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult ThemTintuc(Tintuc tt) {
            tt.Ngaydang = DateTime.Parse(DateTime.Now.ToString());
            if (ModelState.IsValid)
            {
                data.Tintuc.Add(tt);
                data.SaveChanges();
            }
            else
                return RedirectToAction("Home", "Admin");
            return RedirectToAction("Index");
        }
    }
}
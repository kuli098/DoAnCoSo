using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using DoAnCoSo1.Models;
using Microsoft.EntityFrameworkCore;

namespace DoAnCoSo1.Controllers
{
    public class TrangchuController : Controller
    {
        //Tạo đối tượng context
        DACSDBContext data = new DACSDBContext();

        //Lấy tất cả tin tức trong database đưa ra trang chủ
        public IActionResult Index()
        {
            var news = from tt in data.Tintuc select tt;
            return View(news);
        }

        public IActionResult GameTheoTheloai(string maTL) {
            var newsTL = from tt in data.Tintuc where tt.MaTheloai == maTL select tt;
            return View(newsTL);
        }
    }
}
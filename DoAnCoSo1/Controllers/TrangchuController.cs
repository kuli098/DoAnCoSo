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
        public async Task<IActionResult> Index()
        {
            return View(await data.Tintuc.ToListAsync());
        }

        //Lấy tất cả các thể loại game đưa vào Partial View để làm thanh menu
        public async Task<IActionResult> TheloaiGame() {
            return PartialView(await data.Theloai.ToListAsync());
        }
    }
}
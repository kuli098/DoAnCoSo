using System;
using DACSFinal.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Linq;

namespace DACSFinal.Controllers
{
    [Authorize]                                                             //Yêu cầu đang nhập để truy cập các View trong Controller này
    public class UserController : Controller
    {
        DACSDBContext data = new DACSDBContext();                           //Tạo đối tượng database để truy suất dữ liệu

        private readonly UserManager<IdentityUser> userManager;             //**
        public UserController(UserManager<IdentityUser> _userManager) {     // Tạo đối tượng UserManager để lấy thông tin của user đang đăng nhập
            userManager = _userManager;                                     //
        }                                                                   //**

        // Chức năng thêm tin tức
        [HttpGet]
        public IActionResult ThemTintuc()
        {
            ViewBag.userID = userManager.GetUserName(HttpContext.User);     // Lấy tên của user đang đăng nhập
            // Lấy danh sách các thể loại tin tức
            ViewBag.MaTheloai = new SelectList(data.DboTheLoai, "MaTheloai", "TenTheloai");
            return View();
        }

        // Post tin tức vừa thêm vào database
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult ThemTintuc(DboTinTuc tt)
        {
            ViewBag.MaTheloai = new SelectList(data.DboTheLoai, "MaTheloai", "TenTheloai");
            ViewBag.userID = userManager.GetUserName(HttpContext.User);

            // Cập nhật ngày đăng
            tt.NgayDang = DateTime.Parse(DateTime.Now.ToString());
            tt.UserId = userManager.GetUserId(HttpContext.User);
            // Tin tức mới đăng sẽ ở trạng thái đợi duyệt
            tt.Duyet = false;

            if (ModelState.IsValid)
            {
                // Thêm record vào database
                data.DboTinTuc.Add(tt);
                data.SaveChanges();
            }
            else
                return View();

            return LocalRedirect("/Identity/Account/Manage");
        }

        // Lấy các tin tức đã được user đó thêm và đưa ra trang cá nhân của user đó
        // Hình như là cái đoạn này dư thừa
        //public IActionResult ListNews() {
        //    var news = from n in data.DboTinTuc where n.UserId == userManager.GetUserId(HttpContext.User) select n;
        //    return View(news);
        //}
    }
}
using System;
using DACSFinal.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Linq;

namespace DACSFinal.Controllers
{
    [Authorize]
    public class UserController : Controller
    {
        aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context data = new aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context();

        private readonly UserManager<IdentityUser> userManager;
        public UserController(UserManager<IdentityUser> _userManager) {
            userManager = _userManager;
        }

        [HttpGet]
        public IActionResult ThemTintuc()
        {
            ViewBag.userID = userManager.GetUserName(HttpContext.User);
            ViewBag.MaTheloai = new SelectList(data.DboTheLoai, "MaTheloai", "TenTheloai");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult ThemTintuc(DboTinTuc tt)
        {
            ViewBag.MaTheloai = new SelectList(data.DboTheLoai, "MaTheloai", "TenTheloai");
            ViewBag.userID = userManager.GetUserName(HttpContext.User);

            tt.NgayDang = DateTime.Parse(DateTime.Now.ToString());
            tt.UserId = userManager.GetUserId(HttpContext.User);
            tt.Duyet = false;

            if (ModelState.IsValid)
            {
                data.DboTinTuc.Add(tt);
                data.SaveChanges();
            }
            else
                return View();

            return LocalRedirect("/Identity/Account/Manage");
        }

        public IActionResult ListNews() {
            var news = from n in data.DboTinTuc where n.UserId == userManager.GetUserId(HttpContext.User) select n;
            return View(news);
        }
    }
}
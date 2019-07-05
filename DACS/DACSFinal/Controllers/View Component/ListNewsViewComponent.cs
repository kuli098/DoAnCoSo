using DACSFinal.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DACSFinal.Controllers.View_Component
{
    [Authorize]
    public class ListNewsViewComponent : ViewComponent
    {
        DACSDBContext data = new DACSDBContext();

        private readonly UserManager<IdentityUser> userManager;
        public ListNewsViewComponent(UserManager<IdentityUser> _userManager)
        {
            userManager = _userManager;
        }

        // Lấy các tin tức đã được user đang đăng nhập thêm và tình trạng duyệt của tin tức đó
        public async Task<IViewComponentResult> InvokeAsync()
        {
            var tinTuc = from tt in data.DboTinTuc where tt.UserId == userManager.GetUserId(HttpContext.User) select tt;
            ViewBag.Duyet = "Đã duyệt";
            ViewBag.ChuaDuyet = "Chưa duyệt";
            return View(tinTuc);
        }
    }
}

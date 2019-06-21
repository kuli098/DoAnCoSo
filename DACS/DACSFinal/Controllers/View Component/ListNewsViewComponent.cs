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
        aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context data = new aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context();

        private readonly UserManager<IdentityUser> userManager;
        public ListNewsViewComponent(UserManager<IdentityUser> _userManager)
        {
            userManager = _userManager;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var tinTuc = from tt in data.DboTinTuc where tt.UserId == userManager.GetUserId(HttpContext.User) select tt;
            ViewBag.Duyet = "Đã duyệt";
            ViewBag.ChuaDuyet = "Chưa duyệt";
            return View(tinTuc);
        }
    }
}

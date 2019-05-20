using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using DoAnCoSo1.Models;

namespace DoAnCoSo1.Controllers
{
    public class BannerViewComponent : ViewComponent
    {
        DACSDBContext data = new DACSDBContext();
        public async Task<IViewComponentResult> InvokeAsync()
        {
            var banner = data.Banner.FirstOrDefault(b => b.MaBanner == "banner");
            return View(banner);
        }
    }
}

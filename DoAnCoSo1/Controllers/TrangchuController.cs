using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using DoAnCoSo1.Models;

namespace DoAnCoSo1.Controllers
{
    public class TrangchuController : Controller
    {
        DACSDBContext data = new DACSDBContext();

        public IActionResult Index()
        {
            var news = from n in data.Tintuc select n;
            return View(news);
        }
    }
}
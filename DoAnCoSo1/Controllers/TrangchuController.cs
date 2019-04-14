using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace DoAnCoSo1.Controllers
{
    public class TrangchuController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
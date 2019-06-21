using DACSFinal.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace DACSFinal.Controllers
{
    [Authorize(Roles = "Admin")]
    public class AdminController : Controller
    {
        aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context data = new aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context();

        public IActionResult AdminDashboard()
        {
            return View();
        }

        public IActionResult Members() {
            var members = from m in data.AspNetUsers select m;
            return View(members);
        }
    }
}
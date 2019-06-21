using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using DACSFinal.Models;
using Microsoft.AspNetCore.Http;
using System.Linq;

namespace DACSFinal.Controllers
{
    public class HomeController : Controller
    {
        aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context data = new aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context();

        public IActionResult Index()
        {
            var tinTuc = from tt in data.DboTinTuc select tt;
            return View(tinTuc);
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult GameCategory(string maTL) {
            var ttGameTheoTL = from tgtl in data.DboTinTuc where tgtl.MaTheloai == maTL select tgtl;
            return View(ttGameTheoTL);
        }

        public IActionResult NewsDetail(int maTT) {
            var tinTuc = data.DboTinTuc.SingleOrDefault(tt => tt.MaTintuc == maTT);
            return View(tinTuc);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}

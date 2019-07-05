using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using DACSFinal.Models;
using Microsoft.AspNetCore.Http;
using System.Linq;

namespace DACSFinal.Controllers
{
    public class HomeController : Controller
    {
        DACSDBContext data = new DACSDBContext(); //Tạo đối tượng database để truy suất dữ liệu

        //Trang chủ
        public IActionResult Index()
        {
            //Lấy tất cả tin tức đã được duyệt từ database đưa ra trang chủ
            var tinTuc = from tt in data.DboTinTuc where tt.Duyet == true select tt;
            return View(tinTuc);
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Đồ án cơ sở 2019.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Liên hệ với chúng tôi bằng những thông tin dưới đây.";

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        //Lấy tất cả tin tức có cùng mã thể loại được truyền vào
        public IActionResult GameCategory(string maTL) {
            var ttGameTheoTL = from tgtl in data.DboTinTuc where tgtl.MaTheloai == maTL select tgtl;
            return View(ttGameTheoTL);
        }

        //Trang chi tiết tin tức
        public IActionResult NewsDetail(int maTT) {
            //Lấy đối tượng tin tức trong database
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

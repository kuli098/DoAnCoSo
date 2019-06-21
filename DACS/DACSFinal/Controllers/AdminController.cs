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

        public IActionResult TintucChuaduyet() {
            var tinTuc = from tt in data.DboTinTuc where tt.Duyet == false select tt;
            return View(tinTuc);
        }

        public IActionResult TintucDaduyet()
        {
            var tinTuc = from tt in data.DboTinTuc where tt.Duyet == true select tt;
            return View(tinTuc);
        }

        public IActionResult DuyetTintuc(int maTT) {
            var tinTuc = data.DboTinTuc.SingleOrDefault(tt => tt.MaTintuc == maTT);
            tinTuc.Duyet = true;
            data.DboTinTuc.Update(tinTuc);
            data.SaveChanges();
            return RedirectToAction("TintucChuaduyet");
        }

        public IActionResult XoaTintuc(int maTT) {
            var tinTuc = data.DboTinTuc.SingleOrDefault(tt => tt.MaTintuc == maTT);
            tinTuc.Duyet = true;
            data.DboTinTuc.Remove(tinTuc);
            data.SaveChanges();
            return RedirectToAction("TintucChuaduyet");
        }

        public IActionResult AdminNewsDetail(int maTT) {
            var tinTuc = data.DboTinTuc.SingleOrDefault(tt => tt.MaTintuc == maTT);
            return View(tinTuc);
        }
    }
}
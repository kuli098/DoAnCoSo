using DACSFinal.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace DACSFinal.Controllers
{
    [Authorize(Roles = "Admin")]                        //Yêu cầu đăng nhập dưới quyền admin để truy cập các View trong Controller này
    public class AdminController : Controller
    {
        DACSDBContext data = new DACSDBContext();       //Tạo đối tượng database để truy suất dữ liệu

        //Trang admin dashboard
        public IActionResult AdminDashboard()
        {
            return View();
        }

        //Trang danh sách các user
        public IActionResult Members() {
            //Lấy danh sách các user từ database
            var members = from m in data.AspNetUsers select m;
            return View(members);
        }

        //Trang các tin tức chưa duyệt
        public IActionResult TintucChuaduyet() {
            //Lấy danh sách các tin tức chưa duyệt từ database
            var tinTuc = from tt in data.DboTinTuc where tt.Duyet == false select tt;
            return View(tinTuc);
        }

        //Trang các tin tức đã được duyệt
        public IActionResult TintucDaduyet()
        {
            //Lấy các tin tức đã được duyệt từ database
            var tinTuc = from tt in data.DboTinTuc where tt.Duyet == true select tt;
            return View(tinTuc);
        }

        //Chức năng duyệt tin tức
        public IActionResult DuyetTintuc(int maTT) {
            //Lấy đối tượng tin tức cần duyệt
            var tinTuc = data.DboTinTuc.SingleOrDefault(tt => tt.MaTintuc == maTT);
            //Đổi trạng thái từ chưa duyệt thành đã duyệt
            tinTuc.Duyet = true;
            //Update dùng để cập nhật giá trị vừa được thay đổi vào database
            data.DboTinTuc.Update(tinTuc);
            data.SaveChanges();
            return RedirectToAction("TintucChuaduyet");
        }

        //Chức năng xóa tin tức
        public IActionResult XoaTintuc(int maTT) {
            //Lấy đối tượng tin tức cần xóa
            var tinTuc = data.DboTinTuc.SingleOrDefault(tt => tt.MaTintuc == maTT);
            //Remove dùng để xóa một record trong database
            data.DboTinTuc.Remove(tinTuc);
            data.SaveChanges();
            return RedirectToAction("TintucChuaduyet");
        }

        //Trang chi tiết tin tức trong admin
        public IActionResult AdminNewsDetail(int maTT) {
            var tinTuc = data.DboTinTuc.SingleOrDefault(tt => tt.MaTintuc == maTT);
            return View(tinTuc);
        }
    }
}
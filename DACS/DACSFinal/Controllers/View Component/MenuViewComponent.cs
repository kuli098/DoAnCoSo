using DACSFinal.Models;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;

namespace DACSFinal.Controllers.View_Component
{
    public class MenuViewComponent : ViewComponent
    {
        DACSDBContext data = new DACSDBContext();

        // Lấy danh sách các thể loại để làm thanh menu
        public async Task<IViewComponentResult> InvokeAsync()
        {
            var theLoai = from tl in data.DboTheLoai select tl;
            return View(theLoai);
        }
    }
}

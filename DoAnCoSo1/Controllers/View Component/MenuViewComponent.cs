using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;
using DoAnCoSo1.Models;

namespace DoAnCoSo1.Controllers
{
    public class MenuViewComponent : ViewComponent
    {
        DACSDBContext data = new DACSDBContext();

        public async Task<IViewComponentResult> InvokeAsync() {
            var theLoai = from tl in data.Theloai select tl;
            return View(theLoai);
        }
    }
}

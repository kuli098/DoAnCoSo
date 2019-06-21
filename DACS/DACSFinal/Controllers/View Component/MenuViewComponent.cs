using DACSFinal.Models;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;

namespace DACSFinal.Controllers.View_Component
{
    public class MenuViewComponent : ViewComponent
    {
        aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context data = new aspnetDACSFinalBF08D98794964522B60AD5E13E1C2AA7Context();

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var theLoai = from tl in data.DboTheLoai select tl;
            return View(theLoai);
        }
    }
}

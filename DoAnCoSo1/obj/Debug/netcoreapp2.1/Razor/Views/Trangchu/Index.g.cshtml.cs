#pragma checksum "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "adc0975730e9780be26a2bf13c0d8b97f167f5b1"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Trangchu_Index), @"mvc.1.0.view", @"/Views/Trangchu/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Trangchu/Index.cshtml", typeof(AspNetCore.Views_Trangchu_Index))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\_ViewImports.cshtml"
using DoAnCoSo1;

#line default
#line hidden
#line 2 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\_ViewImports.cshtml"
using DoAnCoSo1.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"adc0975730e9780be26a2bf13c0d8b97f167f5b1", @"/Views/Trangchu/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"99b784242f0a4b1d9dc2db8b4aee37635ec12865", @"/Views/_ViewImports.cshtml")]
    public class Views_Trangchu_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 1 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml"
  
    ViewData["Title"] = "Index";
    Layout = "~/Views/Shared/_LayoutUser.cshtml";

#line default
#line hidden
            BeginContext(92, 30, true);
            WriteLiteral("<div class=\"top-1-news\">\r\n    ");
            EndContext();
            BeginContext(123, 44, false);
#line 6 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml"
Write(await Component.InvokeAsync("TintucMoinhat"));

#line default
#line hidden
            EndContext();
            BeginContext(167, 117, true);
            WriteLiteral("\r\n</div>\r\n<div class=\"break-line\">\r\n    <p>CÁC TIN KHÁC</p>\r\n</div>\r\n<div class=\"container\">\r\n    <div class=\"row\">\r\n");
            EndContext();
#line 13 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml"
         foreach (var news in Model)
        {

#line default
#line hidden
            BeginContext(333, 112, true);
            WriteLiteral("            <div class=\"news\">\r\n                <div class=\"col-sm-4 col-md-4 col-lg-4\">\r\n                    <a");
            EndContext();
            BeginWriteAttribute("href", " href=\"", 445, "\"", 521, 1);
#line 17 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml"
WriteAttributeValue("", 452, Url.Action("ChitietTintuc", "Trangchu", new { maTT = news.MaTintuc}), 452, 69, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(522, 5, true);
            WriteLiteral("><img");
            EndContext();
            BeginWriteAttribute("src", " src=\"", 527, "\"", 545, 1);
#line 17 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml"
WriteAttributeValue("", 533, news.Anhbia, 533, 12, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(546, 114, true);
            WriteLiteral(" /></a>\r\n                </div>\r\n                <div class=\"col-sm-8 col-md-8 col-lg-8\">\r\n                    <h2");
            EndContext();
            BeginWriteAttribute("href", " href=\"", 660, "\"", 736, 1);
#line 20 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml"
WriteAttributeValue("", 667, Url.Action("ChitietTintuc", "Trangchu", new { maTT = news.MaTintuc}), 667, 69, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(737, 1, true);
            WriteLiteral(">");
            EndContext();
            BeginContext(739, 11, false);
#line 20 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml"
                                                                                                Write(news.Tieude);

#line default
#line hidden
            EndContext();
            BeginContext(750, 41, true);
            WriteLiteral("</h2>\r\n                    <p>Ngày đăng: ");
            EndContext();
            BeginContext(792, 13, false);
#line 21 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml"
                             Write(news.Ngaydang);

#line default
#line hidden
            EndContext();
            BeginContext(805, 226, true);
            WriteLiteral("</p>\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n                </div>\r\n            </div>\r\n");
            EndContext();
#line 25 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Trangchu\Index.cshtml"
                                                                          
        }

#line default
#line hidden
            BeginContext(1118, 22, true);
            WriteLiteral("    </div>\r\n</div>\r\n\r\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591

#pragma checksum "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Home\NewsDetail.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "90bcf744f1fb39ad63e410dc13e95af9739a3510"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_NewsDetail), @"mvc.1.0.view", @"/Views/Home/NewsDetail.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Home/NewsDetail.cshtml", typeof(AspNetCore.Views_Home_NewsDetail))]
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
#line 1 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\_ViewImports.cshtml"
using DACSFinal;

#line default
#line hidden
#line 2 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\_ViewImports.cshtml"
using DACSFinal.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"90bcf744f1fb39ad63e410dc13e95af9739a3510", @"/Views/Home/NewsDetail.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3b5b6fb9f7e0178098f1c41f036a9be740dfa56a", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_NewsDetail : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 1 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Home\NewsDetail.cshtml"
  
    ViewData["Title"] = "NewsDetail";
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
            BeginContext(93, 6, true);
            WriteLiteral("\r\n<h3>");
            EndContext();
            BeginContext(100, 12, false);
#line 6 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Home\NewsDetail.cshtml"
Write(Model.TieuDe);

#line default
#line hidden
            EndContext();
            BeginContext(112, 21, true);
            WriteLiteral("</h3>\r\n<p>Ngày đăng: ");
            EndContext();
            BeginContext(134, 14, false);
#line 7 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Home\NewsDetail.cshtml"
         Write(Model.NgayDang);

#line default
#line hidden
            EndContext();
            BeginContext(148, 17, true);
            WriteLiteral("</p>\r\n<hr />\r\n<b>");
            EndContext();
            BeginContext(166, 14, false);
#line 9 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Home\NewsDetail.cshtml"
Write(Model.LoiMoDau);

#line default
#line hidden
            EndContext();
            BeginContext(180, 6, true);
            WriteLiteral("</b>\r\n");
            EndContext();
            BeginContext(187, 58, false);
#line 10 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Home\NewsDetail.cshtml"
Write(Html.Raw(System.Web.HttpUtility.HtmlDecode(Model.NoiDung)));

#line default
#line hidden
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
#pragma checksum "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Admin\AdminNewsDetail.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "cff621c3810dbc74caf826c228de02bc6b58fd7a"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Admin_AdminNewsDetail), @"mvc.1.0.view", @"/Views/Admin/AdminNewsDetail.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Admin/AdminNewsDetail.cshtml", typeof(AspNetCore.Views_Admin_AdminNewsDetail))]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cff621c3810dbc74caf826c228de02bc6b58fd7a", @"/Views/Admin/AdminNewsDetail.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3b5b6fb9f7e0178098f1c41f036a9be740dfa56a", @"/Views/_ViewImports.cshtml")]
    public class Views_Admin_AdminNewsDetail : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(0, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 2 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Admin\AdminNewsDetail.cshtml"
  
    ViewData["Title"] = "AdminNewsDetail";
    Layout = "~/Views/Shared/_LayoutAdmin.cshtml";

#line default
#line hidden
            BeginContext(105, 6, true);
            WriteLiteral("\r\n<h3>");
            EndContext();
            BeginContext(112, 12, false);
#line 7 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Admin\AdminNewsDetail.cshtml"
Write(Model.TieuDe);

#line default
#line hidden
            EndContext();
            BeginContext(124, 21, true);
            WriteLiteral("</h3>\r\n<p>Ngày đăng: ");
            EndContext();
            BeginContext(146, 14, false);
#line 8 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Admin\AdminNewsDetail.cshtml"
         Write(Model.NgayDang);

#line default
#line hidden
            EndContext();
            BeginContext(160, 17, true);
            WriteLiteral("</p>\r\n<hr />\r\n<b>");
            EndContext();
            BeginContext(178, 14, false);
#line 10 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Admin\AdminNewsDetail.cshtml"
Write(Model.LoiMoDau);

#line default
#line hidden
            EndContext();
            BeginContext(192, 6, true);
            WriteLiteral("</b>\r\n");
            EndContext();
            BeginContext(199, 58, false);
#line 11 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Admin\AdminNewsDetail.cshtml"
Write(Html.Raw(System.Web.HttpUtility.HtmlDecode(Model.NoiDung)));

#line default
#line hidden
            EndContext();
            BeginContext(257, 4, true);
            WriteLiteral("\r\n\r\n");
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

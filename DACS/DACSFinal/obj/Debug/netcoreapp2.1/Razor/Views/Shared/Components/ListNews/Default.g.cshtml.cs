#pragma checksum "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "695dc60ed767df526e4f0989506a38528782664a"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared_Components_ListNews_Default), @"mvc.1.0.view", @"/Views/Shared/Components/ListNews/Default.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Shared/Components/ListNews/Default.cshtml", typeof(AspNetCore.Views_Shared_Components_ListNews_Default))]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"695dc60ed767df526e4f0989506a38528782664a", @"/Views/Shared/Components/ListNews/Default.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3b5b6fb9f7e0178098f1c41f036a9be740dfa56a", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared_Components_ListNews_Default : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-area", "", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Home", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "NewsDetail", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 1 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
 foreach (var tinTuc in Model)
{

#line default
#line hidden
            BeginContext(35, 4, true);
            WriteLiteral("    ");
            EndContext();
            BeginContext(39, 1451, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "49af30b8f7a842a5a3634c6924d1e7be", async() => {
                BeginContext(134, 192, true);
                WriteLiteral("\r\n        <div class=\"news\">\r\n            <div class=\"container\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-md-2 col-sm-4 col-xs-4\">\r\n                        <img");
                EndContext();
                BeginWriteAttribute("src", " src=\"", 326, "\"", 346, 1);
#line 8 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
WriteAttributeValue("", 332, tinTuc.AnhBia, 332, 14, false);

#line default
#line hidden
                EndWriteAttribute();
                BeginContext(347, 227, true);
                WriteLiteral(" />\r\n                    </div>\r\n                    <div class=\"col-md-10 col-sm-8 col-xs-8\">\r\n                        <div class=\"row\">\r\n                            <div class=\"col-md-12\">\r\n                                <b>");
                EndContext();
                BeginContext(575, 13, false);
#line 13 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
                              Write(tinTuc.TieuDe);

#line default
#line hidden
                EndContext();
                BeginContext(588, 130, true);
                WriteLiteral("</b>\r\n                            </div>\r\n                            <div class=\"col-md-12\">\r\n                                <p>");
                EndContext();
                BeginContext(719, 15, false);
#line 16 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
                              Write(tinTuc.LoiMoDau);

#line default
#line hidden
                EndContext();
                BeginContext(734, 141, true);
                WriteLiteral("</p>\r\n                            </div>\r\n                            <div class=\"col-md-12\">\r\n                                <p>Ngày đăng: ");
                EndContext();
                BeginContext(876, 15, false);
#line 19 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
                                         Write(tinTuc.NgayDang);

#line default
#line hidden
                EndContext();
                BeginContext(891, 6, true);
                WriteLiteral("</p>\r\n");
                EndContext();
#line 20 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
                                 if (tinTuc.Duyet == false)
                                {

#line default
#line hidden
                BeginContext(993, 72, true);
                WriteLiteral("                                    <p style=\"float: right; color: red\">");
                EndContext();
                BeginContext(1066, 17, false);
#line 22 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
                                                                   Write(ViewBag.ChuaDuyet);

#line default
#line hidden
                EndContext();
                BeginContext(1083, 6, true);
                WriteLiteral("</p>\r\n");
                EndContext();
#line 23 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
                                }
                                else
                                {

#line default
#line hidden
                BeginContext(1197, 74, true);
                WriteLiteral("                                    <p style=\"float: right; color: green\">");
                EndContext();
                BeginContext(1272, 13, false);
#line 26 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
                                                                     Write(ViewBag.Duyet);

#line default
#line hidden
                EndContext();
                BeginContext(1285, 6, true);
                WriteLiteral("</p>\r\n");
                EndContext();
#line 27 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
                                }

#line default
#line hidden
                BeginContext(1326, 160, true);
                WriteLiteral("                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    ");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Area = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-maTT", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#line 3 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
                                                                     WriteLiteral(tinTuc.MaTintuc);

#line default
#line hidden
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["maTT"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-maTT", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["maTT"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1490, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 35 "C:\Users\hutvo\Desktop\DACS\DACSFinal\Views\Shared\Components\ListNews\Default.cshtml"
}

#line default
#line hidden
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

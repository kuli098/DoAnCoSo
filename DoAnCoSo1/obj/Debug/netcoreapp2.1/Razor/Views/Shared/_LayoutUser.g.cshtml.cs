#pragma checksum "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Shared\_LayoutUser.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "66dc695a27f33684929016431e8863ef17d987f5"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared__LayoutUser), @"mvc.1.0.view", @"/Views/Shared/_LayoutUser.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Shared/_LayoutUser.cshtml", typeof(AspNetCore.Views_Shared__LayoutUser))]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"66dc695a27f33684929016431e8863ef17d987f5", @"/Views/Shared/_LayoutUser.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"99b784242f0a4b1d9dc2db8b4aee37635ec12865", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared__LayoutUser : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("href", new global::Microsoft.AspNetCore.Html.HtmlString("~/css/Style.css"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("rel", new global::Microsoft.AspNetCore.Html.HtmlString("stylesheet"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/TinyMCE.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(0, 35, true);
            WriteLiteral("<!DOCTYPE html>\r\n<html lang=\"en\">\r\n");
            EndContext();
            BeginContext(35, 1579, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "3f6a890c4fe24d68aa1dd347e2bb08db", async() => {
                BeginContext(41, 139, true);
                WriteLiteral("\r\n    <title> NewsFeed </title>\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    ");
                EndContext();
                BeginContext(180, 48, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("link", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "b4b09208254341038196dbe269cddc33", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(228, 697, true);
                WriteLiteral(@"
    <link href=""https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300i,700&amp;subset=vietnamese"" rel=""stylesheet"">
    <link href=""https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700&amp;subset=vietnamese"" rel=""stylesheet"">
    <link rel=""stylesheet"" href=""https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css""
          integrity=""sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"" crossorigin=""anonymous"">
    <link rel=""stylesheet"" href=""https://use.fontawesome.com/releases/v5.8.1/css/all.css""
          integrity=""sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"" crossorigin=""anonymous"">
    ");
                EndContext();
                BeginContext(925, 39, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "13cc23e4cbec40b1a5d036af244f7402", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(964, 643, true);
                WriteLiteral(@"
    <script src=""https://code.jquery.com/jquery-3.2.1.slim.min.js""
            integrity=""sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"" crossorigin=""anonymous""></script>
    <script src=""https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js""
            integrity=""sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"" crossorigin=""anonymous""></script>
    <script src=""https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js""
            integrity=""sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"" crossorigin=""anonymous""></script>
");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1614, 2, true);
            WriteLiteral("\r\n");
            EndContext();
            BeginContext(1616, 2392, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "d1d191038b504e51b5fc17c31826f4f5", async() => {
                BeginContext(1622, 1133, true);
                WriteLiteral(@"
    <!-- Banner và Menu -->
    <div class=""container"">
        <div class=""banner-menu"">
            <div class=""row"">
                <!-- Banner -->
                <div class=""banner col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                    <p>BANNNER</p>
                </div> <!-- Hết row banner -->
                <!-- Menu -->
                <div class=""menu col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                    <div class=""navbar-expand-lg"">
                        <nav class=""navbar navbar-expand-lg navbar-light bg-light"">
                            <a class=""navbar-brand"" href=""/"">TRANG CHỦ</a>
                            <button class=""navbar-toggler"" type=""button"" data-toggle=""collapse"" data-target=""#navbarNav"" aria-controls=""navbarNav"" aria-expanded=""false"" aria-label=""Toggle navigation"">
                                <span class=""navbar-toggler-icon""></span>
                            </button>
                            <div class=""collapse navbar-collapse"" i");
                WriteLiteral("d=\"navbarNav\">\r\n                                <ul class=\"navbar-nav\">\r\n                                    ");
                EndContext();
                BeginContext(2756, 35, false);
#line 41 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Shared\_LayoutUser.cshtml"
                               Write(await Component.InvokeAsync("Menu"));

#line default
#line hidden
                EndContext();
                BeginContext(2791, 57, true);
                WriteLiteral("\r\n                                    <a class=\"nav-link\"");
                EndContext();
                BeginWriteAttribute("href", " href=\"", 2848, "\"", 2892, 1);
#line 42 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Shared\_LayoutUser.cshtml"
WriteAttributeValue("", 2855, Url.Action("ThemTintuc", "Trangchu"), 2855, 37, false);

#line default
#line hidden
                EndWriteAttribute();
                BeginContext(2893, 738, true);
                WriteLiteral(@">Thêm tin tức</a>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div> <!-- Hết row menu -->
            </div> <!-- Hết row tổng -->
        </div> <!-- Hết banner - menu -->
    </div>
    <!-- Body trang web -->
    <div class=""container"">
        <div class=""content"">
            <div class=""row"">
                <!-- Thanh quảng cáo bên trái -->
                <div class=""ads-left col-sm-12 col-md-2 col-lg-2"">
                    <p>Quảng cáo bên trái</p>
                </div>
                <!-- Render Body -->
                <div class=""rendered-body col-sm-12 col-lg-8 col-md-8"">
                    ");
                EndContext();
                BeginContext(3632, 12, false);
#line 61 "C:\Users\hutvo\Desktop\DoAnCoSo\DoAnCoSo1\Views\Shared\_LayoutUser.cshtml"
               Write(RenderBody());

#line default
#line hidden
                EndContext();
                BeginContext(3644, 357, true);
                WriteLiteral(@"
                </div>
                <!-- Thanh quảng cáo bên phải -->
                <div class=""ads-right col-sm-12 col-md-2 col-lg-2"">
                    <p>Quảng cáo bên phải</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer trang web -->
    <div class=""footer"">
        <p>footer</p>
    </div>
");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(4008, 9, true);
            WriteLiteral("\r\n</html>");
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

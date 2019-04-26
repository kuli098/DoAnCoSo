USE [DACSDB]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 4/22/2019 9:44:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MaTheloai] [char](10) NOT NULL,
	[TenTheloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_THELOAI] PRIMARY KEY CLUSTERED 
(
	[MaTheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINTUC]    Script Date: 4/22/2019 9:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINTUC](
	[MaTintuc] [int] IDENTITY(1,1) NOT NULL,
	[Tieude] [nvarchar](200) NULL,
	[Noidung] [nvarchar](max) NULL,
	[MaTheloai] [char](10) NULL,
	[Ngaydang] [datetime2](7) NULL,
 CONSTRAINT [PK_TINTUC] PRIMARY KEY CLUSTERED 
(
	[MaTintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[THELOAI] ([MaTheloai], [TenTheloai]) VALUES (N'ES        ', N'Esport')
INSERT [dbo].[THELOAI] ([MaTheloai], [TenTheloai]) VALUES (N'MO        ', N'Mobile')
INSERT [dbo].[THELOAI] ([MaTheloai], [TenTheloai]) VALUES (N'PSC       ', N'PS/Console')
INSERT [dbo].[THELOAI] ([MaTheloai], [TenTheloai]) VALUES (N'WG        ', N'Web Game')
SET IDENTITY_INSERT [dbo].[TINTUC] ON 

INSERT [dbo].[TINTUC] ([MaTintuc], [Tieude], [Noidung], [MaTheloai], [Ngaydang]) VALUES (1, N'TIN TỨC  ESPORT', N'<h3>Lorem ipsum dolor sit amet.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum dolorem provident molestiae quis molestias placeat doloremque deleniti debitis aut saepe!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, soluta.</p>
	<h3>Lorem ipsum dolor sit amet, consectetur.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic distinctio, autem iure, obcaecati explicabo et nostrum, vel placeat expedita earum magni eum cupiditate commodi aut.</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo eius ut, accusantium tenetur fugiat laborum adipisci molestiae maiores, expedita laboriosam!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam eum iusto debitis cupiditate, et exercitationem.</p>', N'ES        ', NULL)
INSERT [dbo].[TINTUC] ([MaTintuc], [Tieude], [Noidung], [MaTheloai], [Ngaydang]) VALUES (2, N'TIN TỨC MOBILE', N'<h3>Lorem ipsum dolor sit amet.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum dolorem provident molestiae quis molestias placeat doloremque deleniti debitis aut saepe!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, soluta.</p>
	<h3>Lorem ipsum dolor sit amet, consectetur.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic distinctio, autem iure, obcaecati explicabo et nostrum, vel placeat expedita earum magni eum cupiditate commodi aut.</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo eius ut, accusantium tenetur fugiat laborum adipisci molestiae maiores, expedita laboriosam!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam eum iusto debitis cupiditate, et exercitationem.</p>', N'MO        ', NULL)
INSERT [dbo].[TINTUC] ([MaTintuc], [Tieude], [Noidung], [MaTheloai], [Ngaydang]) VALUES (3, N'TIN TỨC PS/CONSOLE', N'<h3>Lorem ipsum dolor sit amet.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum dolorem provident molestiae quis molestias placeat doloremque deleniti debitis aut saepe!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, soluta.</p>
	<h3>Lorem ipsum dolor sit amet, consectetur.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic distinctio, autem iure, obcaecati explicabo et nostrum, vel placeat expedita earum magni eum cupiditate commodi aut.</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo eius ut, accusantium tenetur fugiat laborum adipisci molestiae maiores, expedita laboriosam!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam eum iusto debitis cupiditate, et exercitationem.</p>', N'PSC       ', NULL)
INSERT [dbo].[TINTUC] ([MaTintuc], [Tieude], [Noidung], [MaTheloai], [Ngaydang]) VALUES (4, N'TIN TỨC WEBGAME', N'<h3>Lorem ipsum dolor sit amet.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum dolorem provident molestiae quis molestias placeat doloremque deleniti debitis aut saepe!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, soluta.</p>
	<h3>Lorem ipsum dolor sit amet, consectetur.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic distinctio, autem iure, obcaecati explicabo et nostrum, vel placeat expedita earum magni eum cupiditate commodi aut.</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo eius ut, accusantium tenetur fugiat laborum adipisci molestiae maiores, expedita laboriosam!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam eum iusto debitis cupiditate, et exercitationem.</p>', N'WG        ', NULL)
SET IDENTITY_INSERT [dbo].[TINTUC] OFF
ALTER TABLE [dbo].[TINTUC]  WITH CHECK ADD  CONSTRAINT [FK_TINTUC_THELOAI] FOREIGN KEY([MaTheloai])
REFERENCES [dbo].[THELOAI] ([MaTheloai])
GO
ALTER TABLE [dbo].[TINTUC] CHECK CONSTRAINT [FK_TINTUC_THELOAI]
GO

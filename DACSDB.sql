USE [DACSDB]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 6/18/2019 12:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[AdminTaikhoan] [nchar](20) NOT NULL,
	[AdminPassword] [nvarchar](18) NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[AdminTaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANNER]    Script Date: 6/18/2019 12:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANNER](
	[MaBanner] [nchar](10) NOT NULL,
	[LinkBanner] [nvarchar](max) NULL,
 CONSTRAINT [PK_BANNER] PRIMARY KEY CLUSTERED 
(
	[MaBanner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 6/18/2019 12:49:04 PM ******/
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
/****** Object:  Table [dbo].[TINTUC]    Script Date: 6/18/2019 12:49:04 PM ******/
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
	[Anhbia] [nvarchar](max) NULL,
 CONSTRAINT [PK_TINTUC] PRIMARY KEY CLUSTERED 
(
	[MaTintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ADMIN] ([AdminTaikhoan], [AdminPassword]) VALUES (N'long                ', N'nhan')
INSERT [dbo].[BANNER] ([MaBanner], [LinkBanner]) VALUES (N'banner    ', N'https://lh3.googleusercontent.com/r9VutAR5s7POb6Tgjtr6Qy48FFNnEN53ECNDmX28cc77Y-GRV3sBq2JcUA1jeT7v5VEp5hID9YfQPKSvC86-k01ifPf9nAo1HbhqnP79Fsax2QsxMqfUIV_Y-aqUhNfwzvjmQeNVaF3yNGf7oEg4NSqCh08hg4XpD5qe_v868hnY7o51yXRiXB7MBG0WSh8M-9-1E7J3cIG1yPo4xYgadWP1QeN9LW2knd-s5YxSjlNLvrM2hRuku64binfTEMURHRPjR2g_8_4dyk24f1PdmDkt31sNslfRVj4Kym4lSKrmHFBNkIS9qtppiZb96c3AEvY96vU8PDg8dqc-SRAIZoAabFLn6c7DFoOpgZ3084xnJkMDCU8BYQWD3XIw09fvNLF1LNOcYhh5sHzF-_cZArOaI4apz2sUjd9TX2s9YP7S_lrJDd8deezCBR3C8GXzmXREvpewRPPFhTtO2k0x5pzGo0Ut7fQnmlbZVqWDXsNmbnrEZD15PX7Q_Ae8Dx6wAkJxcdsbwHc7CS-qyDP4dU0gygzLNrHBGTyTE68YFl3562e0Ry3UgF6vDhuHE8iwoCwHQCF9y0Hi6S8jNsI9Zf86vGlgIFTu7P4XgXSf2qvmtztm8ruPzbqNloGfm5CTiq-y_cFO8K1Wsbuxg8ESb_qF1-3LCI0=w1110-h145-no')
INSERT [dbo].[THELOAI] ([MaTheloai], [TenTheloai]) VALUES (N'ES        ', N'Esport')
INSERT [dbo].[THELOAI] ([MaTheloai], [TenTheloai]) VALUES (N'MO        ', N'Mobile')
INSERT [dbo].[THELOAI] ([MaTheloai], [TenTheloai]) VALUES (N'PSC       ', N'PS/Console')
INSERT [dbo].[THELOAI] ([MaTheloai], [TenTheloai]) VALUES (N'WG        ', N'Web Game')
SET IDENTITY_INSERT [dbo].[TINTUC] ON 

INSERT [dbo].[TINTUC] ([MaTintuc], [Tieude], [Noidung], [MaTheloai], [Ngaydang], [Anhbia]) VALUES (15, N'ĐÂY LÀ TIN TỨC ESPORT', N'<h2>SAU Đ&Acirc;Y L&Agrave; B&Agrave;I VIẾT MẪU</h2>
<p>Sau đ&acirc;y t&ocirc;i sẽ ch&egrave;n v&agrave;i tấm h&igrave;nh để test</p>
<p><img src="https://lh3.googleusercontent.com/Dk8Vswxi02WmXnKVrOyK4cXUKUttJ32QYPVaje3EYgNcm9Y9lZgVubtfC3IZwkYzD1zscoT6rz6fyOO7Dy_Lv92oPZuiMIaQau00bxipgu61W-dLQTuWLi2eKnIFFMmX4kpaNPprAGrVzp9bBYEFFQLshJWTWJDbQIuzEF_Tivdp68ZJ8-SilBp2Qh0ykag8tGEb6a6IJnevHXO8uKDgaK22OQhfPGVslvpgb5iHmXILnDRJYySdqKNZkdm3-fp_dYUFUZKYuNtVvo2I0axCEWROdmDyhqPsea_OPIu5E_T4ywvoou1v3rA70gpZHMwxFyU2pqJxF2bGg9H1o9hlPdYC-jNGnsPZQP96CufPVSVF0kc2GqoYGeKsX1aaCiRPwOJWlUa1a_g-PipgH2J_fg9KJIaD9ARPPvAyLkDazPsZMqov0A0T_-ljcRE09uvLj2x-SR2JG8UW2ERWnEA6ZLzkYF46seLo9N6i2dUQM97ZP9J92bzrX6o7GNvnF7rycsl0f_DZgOgxhurv6AUDVov3qYavsAtX0p-pKT95h6h6qWbsVtE8rd3Rrxpy6SAelBqGVAJiDXbpsqoeiYJntLJ9mU53Nv4yr8kPfpBtZ5-5fFcuGBqDDkxDgAeK-j-ujmVySTervlZ8-CP3QQdJM0UEcBPcjY0=w653-h368-no" alt="" width="653" height="367" /></p>
<p>T&ocirc;i sẽ ch&egrave;n th&ecirc;m tấm h&igrave;nh nửa nh&eacute;</p>
<p><img src="https://lh3.googleusercontent.com/5e1EuynY0YxhTjVDhjGGLYFcI5gJtl9md-M1FGVZcICixBfGdHs0gsmVHM-mj1qSJekF9ZErUzfapXXmnwMOAMGm-K53Va43GOJv-nbUHJ7M4ZIcqE-8_S959WlxTtFSEZjh1XmAaTZVbYB55_uUHGPlpJJhYk3BqAbIku2_V1vG5sJuzRxoJUj_5Z4MPTSD8r6CJSKFi12t97q64pqrZHPI04CjZSBimfFQJT-XGh9qdiFJIZk2adXTwMGDdzgLXDpmUjE_VicqLlOsl2dTj6rnpeM6bAbb9gnMaVXAmEy0EXHTAl7QWVz_Ar3qDTSgu_ywQp5OVNmspALb0CIEZHa5Uk7TK9xsNtgSytvhFeREXH8rWa-lRM9qKZDdV0A_Iw2_c9Mqpl2mHTvPQrSJZOU111yor83VFC4oxqhTjOsieoZm407WvEk1fdoA6Z61kU0PkJ8HxiEsXUW7jcEkaFdHk6b7bFLGMlgKhUox_rXyHY6HLztazUiDm_Tgtu2SKo7vGuz7HBJvB0I3bPPB1yXK6JyJRUVOfaydanu4-0xZwgQW5dNU6HWB1aGI9u5xRxUoOyTQhKK1ynRKRJVGtFnot5FHjua7-bhfI5ckBuZxUXvPlYf7n3rp8gdzO3gsjKD660_hFV7OrMnoPqG69WsUqV5YiGk=w551-h367-no" alt="" width="551" height="367" /></p>', N'ES        ', CAST(N'2019-05-05T13:55:22.0000000' AS DateTime2), N'https://lh3.googleusercontent.com/fYPDr1zsDkEYa6sHhMPcwfjnSgM8LqL14UEW0SCsogyaHxnS7qjpIbQCDZaW2AseA0QkwlMl_AosyG90-jXq9Y8zNkXuPEDzPcHu3LMUMwrq6gaD0CAr--k5AwKqvuTS1YG0XppmSnaCqCUpbUw1spojqGlNkaQFRN_Duc6gISnWFu3S79YuQvXmp6VHYCHb2K05emNonVXMqjkq-Ytk2iQswsnDFd8errGjYjycOZgDZ_Hv3hGm6xyk9uqJyfhfHdUmtBMa1mPADBW1gV0nbMhoktGvho8T1PGXir7BNFXjuwosM6cgxXs92yIPwtm-Puocv-5f0z1FB1RlE4-i1VaAQJhxMBy9nPMitj_PoXUxnRaeUO9pHl16ujGxDy-6uea4wxfEfxisdohcLSHUmRWVJ_pd64u7_PYG_3XFpNjQlBvxkjc1L36k0vNUu5JNivxMIPy5CxhCi2fep_DpAhYWT2j4eki9IzRpSuMMmbPZdOW0C8oKIjN7YoXuqWbMd3gZqKtFk1HvwaYWlk3r83ppMUWXp3qepWJVcnYMCt3yee_bIV2HJdjJphGZf7IECaaDezYyyWpGtZtl5hg2voW1rzQxWKmfE0H2oKUV8jIjDqp7eP5vZjeRsiFPAPz2U1CIu958rVOfTReEIYKkj82so6uBN4Y=w551-h367-no')
INSERT [dbo].[TINTUC] ([MaTintuc], [Tieude], [Noidung], [MaTheloai], [Ngaydang], [Anhbia]) VALUES (16, N'ĐÂY LÀ TIN TỨC MOBILE', N'<h2 style="box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; font-size: 30px; background-color: #ffffff;">SAU Đ&Acirc;Y L&Agrave; B&Agrave;I VIẾT MẪU</h2>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">Sau đ&acirc;y t&ocirc;i sẽ ch&egrave;n v&agrave;i tấm h&igrave;nh để test</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;"><img style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle;" src="https://lh3.googleusercontent.com/Dk8Vswxi02WmXnKVrOyK4cXUKUttJ32QYPVaje3EYgNcm9Y9lZgVubtfC3IZwkYzD1zscoT6rz6fyOO7Dy_Lv92oPZuiMIaQau00bxipgu61W-dLQTuWLi2eKnIFFMmX4kpaNPprAGrVzp9bBYEFFQLshJWTWJDbQIuzEF_Tivdp68ZJ8-SilBp2Qh0ykag8tGEb6a6IJnevHXO8uKDgaK22OQhfPGVslvpgb5iHmXILnDRJYySdqKNZkdm3-fp_dYUFUZKYuNtVvo2I0axCEWROdmDyhqPsea_OPIu5E_T4ywvoou1v3rA70gpZHMwxFyU2pqJxF2bGg9H1o9hlPdYC-jNGnsPZQP96CufPVSVF0kc2GqoYGeKsX1aaCiRPwOJWlUa1a_g-PipgH2J_fg9KJIaD9ARPPvAyLkDazPsZMqov0A0T_-ljcRE09uvLj2x-SR2JG8UW2ERWnEA6ZLzkYF46seLo9N6i2dUQM97ZP9J92bzrX6o7GNvnF7rycsl0f_DZgOgxhurv6AUDVov3qYavsAtX0p-pKT95h6h6qWbsVtE8rd3Rrxpy6SAelBqGVAJiDXbpsqoeiYJntLJ9mU53Nv4yr8kPfpBtZ5-5fFcuGBqDDkxDgAeK-j-ujmVySTervlZ8-CP3QQdJM0UEcBPcjY0=w653-h368-no" alt="" width="653" height="367" /></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">T&ocirc;i sẽ ch&egrave;n th&ecirc;m tấm h&igrave;nh nửa nh&eacute;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;"><img style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle;" src="https://lh3.googleusercontent.com/5e1EuynY0YxhTjVDhjGGLYFcI5gJtl9md-M1FGVZcICixBfGdHs0gsmVHM-mj1qSJekF9ZErUzfapXXmnwMOAMGm-K53Va43GOJv-nbUHJ7M4ZIcqE-8_S959WlxTtFSEZjh1XmAaTZVbYB55_uUHGPlpJJhYk3BqAbIku2_V1vG5sJuzRxoJUj_5Z4MPTSD8r6CJSKFi12t97q64pqrZHPI04CjZSBimfFQJT-XGh9qdiFJIZk2adXTwMGDdzgLXDpmUjE_VicqLlOsl2dTj6rnpeM6bAbb9gnMaVXAmEy0EXHTAl7QWVz_Ar3qDTSgu_ywQp5OVNmspALb0CIEZHa5Uk7TK9xsNtgSytvhFeREXH8rWa-lRM9qKZDdV0A_Iw2_c9Mqpl2mHTvPQrSJZOU111yor83VFC4oxqhTjOsieoZm407WvEk1fdoA6Z61kU0PkJ8HxiEsXUW7jcEkaFdHk6b7bFLGMlgKhUox_rXyHY6HLztazUiDm_Tgtu2SKo7vGuz7HBJvB0I3bPPB1yXK6JyJRUVOfaydanu4-0xZwgQW5dNU6HWB1aGI9u5xRxUoOyTQhKK1ynRKRJVGtFnot5FHjua7-bhfI5ckBuZxUXvPlYf7n3rp8gdzO3gsjKD660_hFV7OrMnoPqG69WsUqV5YiGk=w551-h367-no" alt="" width="551" height="367" /></p>', N'MO        ', CAST(N'2019-05-05T13:57:08.0000000' AS DateTime2), N'https://lh3.googleusercontent.com/0vMfg4syW0IvA8ZOFVhp0y0RYTHsXba0xyFU4_O9EycIxx53Q9kIxZAg7BDZJUYYwuDMJNPSB_VbLKRhmVOZxuN-Qq0-dkf6unHKfoSviGlGmMy_06A7Rn59SazpTZzGBEaLKp4AhaKYxZlvpH_8Q2cBHkp2Fl8akr5s1ZXe1OJecDxs90LpeCYlzg9XGOeECPqLqpmg4ntjA55FKM7hze2Rx38qUoGWdv4UE-9-bf3LLqGlPcxt3zBoDaPMo834tHn77L9ZP9HGqxR6TKWw9Ph43YDWV1QyeP2HgzhJWs3XwaS8qbqYfOh45IiV556EKq7yHgWGYnyixRmFoYeLjihtQzuwz1LV3ZwNoDwA9ZLZTnPAL_RpMxsHlnUzaWM0XBcUZEye8kbiKB-TRLoro4H0DgclIFIwMUzLMbYsPmqEb8WgNHccjT6CsCibXrl1MKyMGeFZuprp-0CQeNVtKOB_wprPrK-PriW1nNuwTPm9byacMATzeTOe5kOrvucYG1JUGYCRxhOOJEsjulhY6MEFotfYIQNMsQO-w8vns36gve4H_rT6e8P9PxnQ21TAeWWj4GW-KEeROO9aLHi3s-SCMg9sam4V3aXjAIqShIVSImLSexIPWkFaTvvqiCL6icHdk8uSeaS2ATtFoA8M4dJkOG_jeg0=w551-h367-no')
INSERT [dbo].[TINTUC] ([MaTintuc], [Tieude], [Noidung], [MaTheloai], [Ngaydang], [Anhbia]) VALUES (17, N'ĐÂY LÀ TIN TỨC PS/CONSOLE', N'<h2 style="box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; font-size: 30px; background-color: #ffffff;">SAU Đ&Acirc;Y L&Agrave; B&Agrave;I VIẾT MẪU</h2>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">Sau đ&acirc;y t&ocirc;i sẽ ch&egrave;n v&agrave;i tấm h&igrave;nh để test</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;"><img style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle;" src="https://lh3.googleusercontent.com/Dk8Vswxi02WmXnKVrOyK4cXUKUttJ32QYPVaje3EYgNcm9Y9lZgVubtfC3IZwkYzD1zscoT6rz6fyOO7Dy_Lv92oPZuiMIaQau00bxipgu61W-dLQTuWLi2eKnIFFMmX4kpaNPprAGrVzp9bBYEFFQLshJWTWJDbQIuzEF_Tivdp68ZJ8-SilBp2Qh0ykag8tGEb6a6IJnevHXO8uKDgaK22OQhfPGVslvpgb5iHmXILnDRJYySdqKNZkdm3-fp_dYUFUZKYuNtVvo2I0axCEWROdmDyhqPsea_OPIu5E_T4ywvoou1v3rA70gpZHMwxFyU2pqJxF2bGg9H1o9hlPdYC-jNGnsPZQP96CufPVSVF0kc2GqoYGeKsX1aaCiRPwOJWlUa1a_g-PipgH2J_fg9KJIaD9ARPPvAyLkDazPsZMqov0A0T_-ljcRE09uvLj2x-SR2JG8UW2ERWnEA6ZLzkYF46seLo9N6i2dUQM97ZP9J92bzrX6o7GNvnF7rycsl0f_DZgOgxhurv6AUDVov3qYavsAtX0p-pKT95h6h6qWbsVtE8rd3Rrxpy6SAelBqGVAJiDXbpsqoeiYJntLJ9mU53Nv4yr8kPfpBtZ5-5fFcuGBqDDkxDgAeK-j-ujmVySTervlZ8-CP3QQdJM0UEcBPcjY0=w653-h368-no" alt="" width="653" height="367" /></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">T&ocirc;i sẽ ch&egrave;n th&ecirc;m tấm h&igrave;nh nửa nh&eacute;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;"><img style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle;" src="https://lh3.googleusercontent.com/5e1EuynY0YxhTjVDhjGGLYFcI5gJtl9md-M1FGVZcICixBfGdHs0gsmVHM-mj1qSJekF9ZErUzfapXXmnwMOAMGm-K53Va43GOJv-nbUHJ7M4ZIcqE-8_S959WlxTtFSEZjh1XmAaTZVbYB55_uUHGPlpJJhYk3BqAbIku2_V1vG5sJuzRxoJUj_5Z4MPTSD8r6CJSKFi12t97q64pqrZHPI04CjZSBimfFQJT-XGh9qdiFJIZk2adXTwMGDdzgLXDpmUjE_VicqLlOsl2dTj6rnpeM6bAbb9gnMaVXAmEy0EXHTAl7QWVz_Ar3qDTSgu_ywQp5OVNmspALb0CIEZHa5Uk7TK9xsNtgSytvhFeREXH8rWa-lRM9qKZDdV0A_Iw2_c9Mqpl2mHTvPQrSJZOU111yor83VFC4oxqhTjOsieoZm407WvEk1fdoA6Z61kU0PkJ8HxiEsXUW7jcEkaFdHk6b7bFLGMlgKhUox_rXyHY6HLztazUiDm_Tgtu2SKo7vGuz7HBJvB0I3bPPB1yXK6JyJRUVOfaydanu4-0xZwgQW5dNU6HWB1aGI9u5xRxUoOyTQhKK1ynRKRJVGtFnot5FHjua7-bhfI5ckBuZxUXvPlYf7n3rp8gdzO3gsjKD660_hFV7OrMnoPqG69WsUqV5YiGk=w551-h367-no" alt="" width="551" height="367" /></p>', N'PSC       ', CAST(N'2019-05-05T13:57:57.0000000' AS DateTime2), N'https://lh3.googleusercontent.com/wbX349rTtoxCXm3pRn_eSh0hAURR2QqqInMf-h3YOcLEDe7nNmnurTJIuT4TUyOzjogLf2TQHmnVvMd0YK89pc6zhKrGtqCDiWonC2jPuJdlLlVFwllJ9Llas8g0mBLVjXS0G1bq3eJ2qVkrJAUklcDxqBr4q2i3c6GTKPynY65MMYSQF36pOEWHtixUF1N0FXtCmXUi5BrFp22lSZP1FlRBrYrxG-7GPYGj-uUg4M--Nm3DVlkbk-NMR9yay9S17XtpO_eKjDMovKvF6vYOHFIWAo_vJbcAnzwWkFiw7xDS5H8MMrtFIuZIlqnXdP1-fqD_eQ2MzUMRYzOT1TsCVST1Sss_nm72wVXTg6IthYCrHKc7cp9xEuufP5QZ-eXQ-QctOICSFlim-BKkCEiy_vE2gn5uXAioocbcMOYuarLA2wm4jx2KdxImmLWb7CtmJWMcVEsFx4urX3ypOfbX4W9-hRf0XJK2InpnYxp-G47bX90T4yhlBgoWEix4PLiItgKvQPBdgcfObIwKX5ralM1oFeUZHzSXmgIVlcfUlVussxabv_PxcwLmM_OmMTItz3SrMFFRX2EYuTiJLUSHYmU2lLSgh9v6XM887369wCa8nk9l0hGxzKTX8DNj6k5GPSD6pwEtMlxK84e2qh2IS4yCrUEO2fs=w482-h368-no')
INSERT [dbo].[TINTUC] ([MaTintuc], [Tieude], [Noidung], [MaTheloai], [Ngaydang], [Anhbia]) VALUES (18, N'ĐÂY LÀ TIN TỨC WEBGAME', N'<h2 style="box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; font-size: 30px; background-color: #ffffff;">SAU Đ&Acirc;Y L&Agrave; B&Agrave;I VIẾT MẪU</h2>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">Sau đ&acirc;y t&ocirc;i sẽ ch&egrave;n v&agrave;i tấm h&igrave;nh để test</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;"><img style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle;" src="https://lh3.googleusercontent.com/Dk8Vswxi02WmXnKVrOyK4cXUKUttJ32QYPVaje3EYgNcm9Y9lZgVubtfC3IZwkYzD1zscoT6rz6fyOO7Dy_Lv92oPZuiMIaQau00bxipgu61W-dLQTuWLi2eKnIFFMmX4kpaNPprAGrVzp9bBYEFFQLshJWTWJDbQIuzEF_Tivdp68ZJ8-SilBp2Qh0ykag8tGEb6a6IJnevHXO8uKDgaK22OQhfPGVslvpgb5iHmXILnDRJYySdqKNZkdm3-fp_dYUFUZKYuNtVvo2I0axCEWROdmDyhqPsea_OPIu5E_T4ywvoou1v3rA70gpZHMwxFyU2pqJxF2bGg9H1o9hlPdYC-jNGnsPZQP96CufPVSVF0kc2GqoYGeKsX1aaCiRPwOJWlUa1a_g-PipgH2J_fg9KJIaD9ARPPvAyLkDazPsZMqov0A0T_-ljcRE09uvLj2x-SR2JG8UW2ERWnEA6ZLzkYF46seLo9N6i2dUQM97ZP9J92bzrX6o7GNvnF7rycsl0f_DZgOgxhurv6AUDVov3qYavsAtX0p-pKT95h6h6qWbsVtE8rd3Rrxpy6SAelBqGVAJiDXbpsqoeiYJntLJ9mU53Nv4yr8kPfpBtZ5-5fFcuGBqDDkxDgAeK-j-ujmVySTervlZ8-CP3QQdJM0UEcBPcjY0=w653-h368-no" alt="" width="653" height="367" /></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">T&ocirc;i sẽ ch&egrave;n th&ecirc;m tấm h&igrave;nh nửa nh&eacute;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;"><img style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle;" src="https://lh3.googleusercontent.com/5e1EuynY0YxhTjVDhjGGLYFcI5gJtl9md-M1FGVZcICixBfGdHs0gsmVHM-mj1qSJekF9ZErUzfapXXmnwMOAMGm-K53Va43GOJv-nbUHJ7M4ZIcqE-8_S959WlxTtFSEZjh1XmAaTZVbYB55_uUHGPlpJJhYk3BqAbIku2_V1vG5sJuzRxoJUj_5Z4MPTSD8r6CJSKFi12t97q64pqrZHPI04CjZSBimfFQJT-XGh9qdiFJIZk2adXTwMGDdzgLXDpmUjE_VicqLlOsl2dTj6rnpeM6bAbb9gnMaVXAmEy0EXHTAl7QWVz_Ar3qDTSgu_ywQp5OVNmspALb0CIEZHa5Uk7TK9xsNtgSytvhFeREXH8rWa-lRM9qKZDdV0A_Iw2_c9Mqpl2mHTvPQrSJZOU111yor83VFC4oxqhTjOsieoZm407WvEk1fdoA6Z61kU0PkJ8HxiEsXUW7jcEkaFdHk6b7bFLGMlgKhUox_rXyHY6HLztazUiDm_Tgtu2SKo7vGuz7HBJvB0I3bPPB1yXK6JyJRUVOfaydanu4-0xZwgQW5dNU6HWB1aGI9u5xRxUoOyTQhKK1ynRKRJVGtFnot5FHjua7-bhfI5ckBuZxUXvPlYf7n3rp8gdzO3gsjKD660_hFV7OrMnoPqG69WsUqV5YiGk=w551-h367-no" alt="" width="551" height="367" /></p>', N'WG        ', CAST(N'2019-05-05T13:59:02.0000000' AS DateTime2), N'https://lh3.googleusercontent.com/9yyjAaYSdih-JOUfjtIVXI33wDKJIazQ1qek5DjnyRabf7If73xjKjHkpKTMaDR-aluZioSfl98Oxew4syT1Ju_n9y-FfOiwb-cymkTwHORTa8OT9-nrMo_JhVXARhegYpyrSepyXrIE5HASO881G2sYxozCBdGt2_JquYxSueN6nZM9GXOCh-uczz6A5VFfQQaCbhvmrJzHMuEw8IEOobpJuyURkRJp6yuXM5m5KSSwsbKVz-vTyIcp72MPcsTY0nsWYIOYfbtFPyi6pD5PfHHGuzWPZ1lZO74mjMuRKqfG6LVWdFFXqke_SNlKXCoyozM9Z82n4FGQCSC4TUjl5FPT_kd96YAqkQbVitfk5KAIOygYnVlLyDFZ-u8cZg9IhbgjYNWQcdANRCHG6p1HSfeWeeOqEp4wjZaGxx7u5b9SQtOuDFPZsyzvDaRwdrlt2oGPdohh6AzzzNxPUiufUPIQq0EVE3niDCk7lyDVWoQ_8yRe-LLhUK0tcE15D_KXoIILAH-G9gxEsWIVWtUQSsU7UnrYI-8WJa3kh1jGt0-Lmkcvz1FuTX5SEZ_R-AZ4u9MkM6Y0_AfeKi5zNcTN3g2Dl7PRyOUoAFdmQyX6HZna56eIyo-5AnaBVBH5I9lJWjqCO4HE9ed8ms8tM0QWVQ7bNN5EMbk=w551-h367-no')
SET IDENTITY_INSERT [dbo].[TINTUC] OFF
ALTER TABLE [dbo].[TINTUC]  WITH CHECK ADD  CONSTRAINT [FK_TINTUC_THELOAI] FOREIGN KEY([MaTheloai])
REFERENCES [dbo].[THELOAI] ([MaTheloai])
GO
ALTER TABLE [dbo].[TINTUC] CHECK CONSTRAINT [FK_TINTUC_THELOAI]
GO

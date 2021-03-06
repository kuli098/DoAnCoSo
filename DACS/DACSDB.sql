--USE [aspnet-DACSFinal-BF08D987-9496-4522-B60A-D5E13E1C2AA7]
--GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/29/2019 10:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/29/2019 10:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/29/2019 10:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/29/2019 10:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/29/2019 10:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/29/2019 10:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/29/2019 10:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/29/2019 10:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbo.TheLoai]    Script Date: 6/29/2019 10:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo.TheLoai](
	[MaTheloai] [char](10) NOT NULL,
	[TenTheloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbo.TinTuc]    Script Date: 6/29/2019 10:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo.TinTuc](
	[MaTintuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](200) NULL,
	[AnhBia] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[LoiMoDau] [nvarchar](max) NULL,
	[NgayDang] [datetime2](7) NULL,
	[MaTheloai] [char](10) NULL,
	[Duyet] [bit] NULL,
	[UserID] [nvarchar](450) NULL,
 CONSTRAINT [PK_dbo.TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190619045527_AddTwoMoreTable', N'2.1.11-servicing-32099')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'940bea9d-5428-43d4-a1a5-821f63019556', N'Admin', N'ADMIN', N'4fd22c27-435c-4d7d-ba1c-d759c03cf2bc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e686bc9c-969e-4846-8e29-aa01ef1d7b72', N'940bea9d-5428-43d4-a1a5-821f63019556')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5c17ad7e-41d5-4f79-925d-49a12862fe70', N'hoiphununamtinh@gmail.com', N'HOIPHUNUNAMTINH@GMAIL.COM', N'hoiphununamtinh@gmail.com', N'HOIPHUNUNAMTINH@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDhXttUgxBd2Z8Hf9W6rO/3b38qC7zm3W5PwJepMUnaGKyc0KagRvTI+FKPycNesbw==', N'NJ5SURUQJBTOUNCFAZ5F2UBADN37V2DT', N'31ece130-5330-47ce-98d0-8ea644eb215f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b368b938-5a31-45e7-9f76-bcf6d8fe5850', N'vobalong@gmail.com', N'VOBALONG@GMAIL.COM', N'vobalong@gmail.com', N'VOBALONG@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIXwvvHxn9v3qIH5qIyhVvC4Ra7dluCmWjbQWADwl5yb1tujzXlNfsdMdqVo3jQdOw==', N'WOXJHFOQU7BD5WT4VA73RQVQTUSP76VV', N'2a5ce82d-4876-4de3-8887-02b71f3b2bef', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ccaca454-8941-4024-a129-602169c49320', N'khai36477@gmail.com', N'KHAI36477@GMAIL.COM', N'khai36477@gmail.com', N'KHAI36477@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEujQj7IVr5KpfLnd2AFpsHnKsJGhUtPegdQnx/vWV79+x5kSMNpRVCm1/s0wnT91Q==', N'N3MCEW5MUZWSP3E4FFPBUVH5KSFHJX4J', N'4b11e4f6-95ac-4813-9269-96965a11d58e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e686bc9c-969e-4846-8e29-aa01ef1d7b72', N'hutvobalong@gmail.com', N'HUTVOBALONG@GMAIL.COM', N'hutvobalong@gmail.com', N'HUTVOBALONG@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMbyPvD8+usy4cT7gbb6Lf5UFvd101/q+MTkzzQXrcuam2KtTVX3ifDDBaM4rRSADg==', N'34GK2KCEGYIJ3QRZXN7AJY6OD2MVCPKM', N'fb049277-82f5-4792-b324-33dd244fb585', N'0926252667', 0, 0, NULL, 1, 0)
INSERT [dbo].[dbo.TheLoai] ([MaTheloai], [TenTheloai]) VALUES (N'ES        ', N'Esport')
INSERT [dbo].[dbo.TheLoai] ([MaTheloai], [TenTheloai]) VALUES (N'MO        ', N'Mobile')
INSERT [dbo].[dbo.TheLoai] ([MaTheloai], [TenTheloai]) VALUES (N'PSC       ', N'PS/Console')
INSERT [dbo].[dbo.TheLoai] ([MaTheloai], [TenTheloai]) VALUES (N'WG        ', N'Web Game')
SET IDENTITY_INSERT [dbo].[dbo.TinTuc] ON 

INSERT [dbo].[dbo.TinTuc] ([MaTintuc], [TieuDe], [AnhBia], [NoiDung], [LoiMoDau], [NgayDang], [MaTheloai], [Duyet], [UserID]) VALUES (2, N'Đây là tin tức Esport', N'https://lh3.googleusercontent.com/ZiszDVETUyAoVAdgbnKnE-FFhxAg8GTLMOGWNVfUqhE29cGAY6uVWWAUbjv7W6PdYUMiS2mqFLVznetBeY0ednaB5koHFpMlHzYEEMoC8Rtyn6LZJhU71xN_ragoGQSklSPcGubE3uCVqAkx3Nlvd9d92PMOEj46ixgVzkyQcRgiBXHzdtaozFOpmjnWuFCv8G6wFSphEqrP1v6YCUnOfV2gTaR4He0leICPZGjun1KrACgIVty-f2lIHTtRY_WaoUi4f7QL1QB7xLAdkFExubaGvIJElAAtiJzFQ2D68agvlvuwWEBABzjyWufMNiI-vci9ckmFvWQm26edxYwY5EBST4zFuR1L2wbJ3W3aKgxYdVwO3khood_34zXIuGqFuyigUVtmTP4orjpktGCURug75BanJVIn3XWXNHjibvgPc0WgEfX_xc0ULKVeTru7ubFB2GOuN9doRE1Ek9-13v-C392iXdv_GgNWHLKvdrsc7yxs0rpb4kr-NMqCRe8pxf_W_ECMWpMO3YGNELMCBO-QHqEPPrlnQHHVgAPf6T-854sFkP9pBoto4ywQ7t4E_BG0DGJ9eyQ2AS4qxgzqIQ4l6dkJG1M_IrNkrHdNKr7jyG-jwdHXT_9V9-au2za_n0137xhihj6rKeklHOIFtqcJHpu9_us=w551-h367-no', N'<p>Mở đầu l&agrave;n s&oacute;ng BLV chuyển sang l&agrave;m HLV c&oacute; lẽ l&agrave; Minh Hảo của FFQ v&agrave;o m&ugrave;a xu&acirc;n 2019. Sau đ&oacute; l&agrave; Văn T&ugrave;ng đến GAM trong kỳ chuyển nhượng vừa rồi. Tuy nhi&ecirc;n sự ch&uacute; &yacute; trong m&ugrave;a h&egrave; n&agrave;y c&oacute; lẽ sẽ nằm ở hai c&aacute;i t&ecirc;n kh&aacute;c: Yuna (Safety) v&agrave; Ling Cao Thủ. Trong khi Yuna được tin tưởng giao cho dream team của GAM th&igrave; Ling Cao Thủ lại c&oacute; được đội h&igrave;nh vừa thống trị VCS M&ugrave;a Xu&acirc;n: PVB hay nay l&agrave; DBL.</p>', N'Nếu phải chọn ra một điểm nhấn trong hai kỳ chuyển nhượng vừa rồi của VCS thì làn sóng nhân sự Garena và cụ thể là VETV gia nhập các đội tuyển chắc chắn là một ứng cử viên sáng giá. Vậy nguyên nhân nào tạo ra làn sóng này và ảnh hưởng của nó đến giải đấu sẽ như thế nào?', CAST(N'2019-06-19T23:50:32.0000000' AS DateTime2), N'ES        ', 1, N'b368b938-5a31-45e7-9f76-bcf6d8fe5850')
INSERT [dbo].[dbo.TinTuc] ([MaTintuc], [TieuDe], [AnhBia], [NoiDung], [LoiMoDau], [NgayDang], [MaTheloai], [Duyet], [UserID]) VALUES (3, N'Đây là tin tức Mobile', N'https://lh3.googleusercontent.com/_GRKbnEk0RvcvlQdeXC5R9Z5fSA8_omIYJSBO7pHU78WFl6mgTxadfPSUq9Qfvko1BVMhsk4gTtc9iPQXYdgjM8bjjotYYJMQu4BZhUmnDOwVRz4jEg7UzmzyfxaAHQjW0GYc99sRcFl1I2dl14vlZPj3sDNc4BR4SANmZgmpBUxKnU3bSRntfBgtkvXt_TTFcdV5FiabuqK_kf-nVn_KRU0mhiVA6YZ2lrSFfffpWPM1aZaYzyDhtCRcmGfwVGY1oOjkbQUqPhj2nxncwOb7J-1e0EvLkxeSyqJ5hnQvvaxD9j5k8RozHur1c6aA7Cc_RRVJgKkRzSGJ55VaJ7r5KDNikde_ivRuGt8OBQ9L287ph986XRf2P-k89fTnAwcQS2FalHI56hSfUWp8m_a_5B9ZoPymLvmWivn-8MXiC4rNhFE2l1STHEoLcudCr2QxQnz1AfKKMZa9QZb3O0UDHqNwsHROoq6HnUqiz7yWTNGxEGDDCSIcBW29y8yYzDYwEn9xgrqftg3YllQny01KDlLTjcrE6wlRIyawPBV9gei4dv4iIQFTOnsWEcjRYOWvh65mZBbRpyuS0S7lrY0eq1lIMFu9VQWPn6e3imitvocgyi4RkDWrCZ8ZuTFSwBklGT4LXSgztrH8YsnTmPhDMrMq46-ytw=w551-h367-no', N'<p>Black Widow - Natasha Romanoff kh&ocirc;ng c&oacute; si&ecirc;u năng lực n&agrave;o. C&ocirc; đ&atilde; được huấn luyện để trở th&agrave;nh một trong những điệp vi&ecirc;n v&agrave; s&aacute;t thủ đ&aacute;ng sợ nhất thế giới. V&agrave; dưới đ&acirc;y l&agrave; 1 số điều tuyệt vời về nữ si&ecirc;u anh h&ugrave;ng của Marvel:<img src="https://lh3.googleusercontent.com/_GRKbnEk0RvcvlQdeXC5R9Z5fSA8_omIYJSBO7pHU78WFl6mgTxadfPSUq9Qfvko1BVMhsk4gTtc9iPQXYdgjM8bjjotYYJMQu4BZhUmnDOwVRz4jEg7UzmzyfxaAHQjW0GYc99sRcFl1I2dl14vlZPj3sDNc4BR4SANmZgmpBUxKnU3bSRntfBgtkvXt_TTFcdV5FiabuqK_kf-nVn_KRU0mhiVA6YZ2lrSFfffpWPM1aZaYzyDhtCRcmGfwVGY1oOjkbQUqPhj2nxncwOb7J-1e0EvLkxeSyqJ5hnQvvaxD9j5k8RozHur1c6aA7Cc_RRVJgKkRzSGJ55VaJ7r5KDNikde_ivRuGt8OBQ9L287ph986XRf2P-k89fTnAwcQS2FalHI56hSfUWp8m_a_5B9ZoPymLvmWivn-8MXiC4rNhFE2l1STHEoLcudCr2QxQnz1AfKKMZa9QZb3O0UDHqNwsHROoq6HnUqiz7yWTNGxEGDDCSIcBW29y8yYzDYwEn9xgrqftg3YllQny01KDlLTjcrE6wlRIyawPBV9gei4dv4iIQFTOnsWEcjRYOWvh65mZBbRpyuS0S7lrY0eq1lIMFu9VQWPn6e3imitvocgyi4RkDWrCZ8ZuTFSwBklGT4LXSgztrH8YsnTmPhDMrMq46-ytw=w551-h367-no" alt="" width="551" height="367" /></p>
<p>Natasha Romanoff được đ&agrave;o tạo để trở th&agrave;nh gi&aacute;n điệp, kẻ x&acirc;m nhập v&agrave; ngụy trang nhưng b&ecirc;n cạnh đ&oacute; c&ocirc; cũng sử dụng 1 vũ kh&iacute; tối thượng của người phụ nữ xinh đẹp l&agrave; "nhan sắc v&agrave; sự quyến rũ" để moi m&oacute;c th&ocirc;ng tin.</p>', N'Mặc dù không có "siêu năng lực" nhưng đây là một số điều tuyệt vời mà Black Widow có thể làm.', CAST(N'2019-06-19T23:59:37.0000000' AS DateTime2), N'ES        ', 0, N'b368b938-5a31-45e7-9f76-bcf6d8fe5850')
INSERT [dbo].[dbo.TinTuc] ([MaTintuc], [TieuDe], [AnhBia], [NoiDung], [LoiMoDau], [NgayDang], [MaTheloai], [Duyet], [UserID]) VALUES (4, N'Đây là tin tức Mobile', N'https://lh3.googleusercontent.com/wMecCoKTezx7HST-kCCmPzvGuiYidML7voGEd6LYJk5raHlUZ4S_hwLTGfYcrlEtQCKTQvmZCPCMzLmYuFiaPLJ18Ka18oTNtcd88Nrq_BogtCRpuVEIYYiPPh5jyODeIiUgPUlfOzBeaTDLRCf7sSD_fbE1A80dKaWRkAAmu6jNwmmhCNnIAy_oVIOV23y0S1yt4kUm5guGTLK43f0EaQE5NC16ozm8E6RhSfDRRgN0cZYKKNqoGw3c8GSJEDYvCuDqc1uwNFdlHp4VaJAjMUGTMQ8NxT5yBOWH5TQwfr-YdFT56upIZ43BXkZLU-wcc6uynbqU9AjFjJ-p156c-Kduuz9uCxGqe3wooA1qKBkppiWyCFv2MJqimHsCGxn8L8JIkz4ZBpc7GbDfyeieatTdfe1FqsGxyu1lflb0A61Iqb0LWcC6f9U7Knfdeu6ok4VVmlqcGmAmCYdQrEbl43tbuTBPtNTEiMrfFrAwFohbU_Ws-J_Vern4wC7uitM6eaBADZlnQMnq921d6J4ElUSvpBq9GnfxYVk0isEPeLXF9DZBQP5jzYtu1bHMBJnXPKqImaUWthU0RMpAaV7Kx2KJfDpEEvl-EGTt7Y9c8DhUp3rJAKnuug4WctTJB52bru-9T9FCWAPBRE0j-GOABjWw7sa8ARs=w546-h367-no', N'<p>Ở chương 109, người xem đ&atilde; được chứng kiến m&agrave;n thể hiện của 3 si&ecirc;u anh h&ugrave;ng của thế giới One Punch Man - Saitama, Tatsumaki v&agrave; King. Mỗi người đều c&oacute; c&aacute;ch thể hiện v&agrave; chiến đấu kh&aacute;c nhau, thế nhưng đều c&oacute; thể hạ gục qu&aacute;i vật một c&aacute;ch dễ d&agrave;ng.</p>
<p><img src="https://lh3.googleusercontent.com/wMecCoKTezx7HST-kCCmPzvGuiYidML7voGEd6LYJk5raHlUZ4S_hwLTGfYcrlEtQCKTQvmZCPCMzLmYuFiaPLJ18Ka18oTNtcd88Nrq_BogtCRpuVEIYYiPPh5jyODeIiUgPUlfOzBeaTDLRCf7sSD_fbE1A80dKaWRkAAmu6jNwmmhCNnIAy_oVIOV23y0S1yt4kUm5guGTLK43f0EaQE5NC16ozm8E6RhSfDRRgN0cZYKKNqoGw3c8GSJEDYvCuDqc1uwNFdlHp4VaJAjMUGTMQ8NxT5yBOWH5TQwfr-YdFT56upIZ43BXkZLU-wcc6uynbqU9AjFjJ-p156c-Kduuz9uCxGqe3wooA1qKBkppiWyCFv2MJqimHsCGxn8L8JIkz4ZBpc7GbDfyeieatTdfe1FqsGxyu1lflb0A61Iqb0LWcC6f9U7Knfdeu6ok4VVmlqcGmAmCYdQrEbl43tbuTBPtNTEiMrfFrAwFohbU_Ws-J_Vern4wC7uitM6eaBADZlnQMnq921d6J4ElUSvpBq9GnfxYVk0isEPeLXF9DZBQP5jzYtu1bHMBJnXPKqImaUWthU0RMpAaV7Kx2KJfDpEEvl-EGTt7Y9c8DhUp3rJAKnuug4WctTJB52bru-9T9FCWAPBRE0j-GOABjWw7sa8ARs=w546-h367-no" alt="" width="546" height="367" /></p>
<p>Chương 110 của One Punch Man phi&ecirc;n bản manga cũng đ&atilde; được ch&iacute;nh thức ra mắt v&agrave;o h&ocirc;m nay. Phần nửa đầu của bộ truyện tập trung chủ yếu v&agrave;o nh&acirc;n vật anh h&ugrave;ng hạng S kh&aacute;c chưa xuất hiện trong chương trước - Samurai Nguy&ecirc;n Tử.</p>', N'Ngôi sao trong chương 110 của bộ truyện manga One Punch Man là nhân vật Samurai Nguyên Tử khi anh có quá nhiều đất thể hiện.', CAST(N'2019-06-20T00:14:54.0000000' AS DateTime2), N'MO        ', 1, N'b368b938-5a31-45e7-9f76-bcf6d8fe5850')
INSERT [dbo].[dbo.TinTuc] ([MaTintuc], [TieuDe], [AnhBia], [NoiDung], [LoiMoDau], [NgayDang], [MaTheloai], [Duyet], [UserID]) VALUES (5, N'Đây là tin tức PS/Console', N'https://lh3.googleusercontent.com/e-5EDDr8gsG90fYu485YjK0xHL36m4J1siubFIp5f1x0Z5N9OGBFPS1uHDrrukvigUmpaggaBXoT5vPKsa-_VVTaNi7sttoszEU3jbZSxW88hPDPLVEdvEsXZaQ-vHPCr6UnBOurnOAQT36l5Huq0FvO_TN1y0URUlQj4ZB4bY8oKEAFyjussXKhdyHS_m71gDm8iSVjy3Hb7o_Sm46__JSjrnjg8IOiGlOtvV7v1NBUH5edovKJj91wN3YdNM3SJRA0f3yr2Z03AU1g8Fa1azda6I-EBpLVu14WZPOxVdnU7KcQ2yjexju6-BP-TJ7jM42msfwuBFg9bnqO8fJHt5PgLlHQOW3p3L5-fQtzuSwdVOHASX4In-llbgcBmiGLkKgzn-vE9dH-rm_u0RGzrHvRo4GD1wQ0CEAUKa7xIx9I6_RWqqw56iFDIBECQXoSN8C4FyvSgomM0KNXRUQceI_iJcVLYAaIGk0AVoaIVMlY8cBOjRTghxoJTFDyFK44dxxZXip2HQQ4Kx6WmZTgCDAsB2soKQF2cggzYsCLea2GgqJWOkHMFdVfi2TCMOY198LvQWTkZMw_rYIfqURl8EIh1Jps9X2whamRnxR07rjhntCM-FB9bxKbXrGyBe76S1ceuWRvTQnAQLsL58trhHhBB766u0k=w490-h367-no', N'<p>Trong phần đầu, trận chiến giữa ba đệ tử của Samurai Nguy&ecirc;n Tử v&agrave; qu&aacute;i vật hạng Demon - Devil Long Hair đ&atilde; ch&iacute;nh thức c&oacute; kết quả. Mặc d&ugrave; phải kh&aacute; trầy trật, nhưng cả ba cũng đ&atilde; cắt trụi được t&oacute;c của &Aacute;c Quỷ T&oacute;c D&agrave;i v&agrave; khiến hắn đo v&aacute;n.</p>
<p><img src="https://lh3.googleusercontent.com/e-5EDDr8gsG90fYu485YjK0xHL36m4J1siubFIp5f1x0Z5N9OGBFPS1uHDrrukvigUmpaggaBXoT5vPKsa-_VVTaNi7sttoszEU3jbZSxW88hPDPLVEdvEsXZaQ-vHPCr6UnBOurnOAQT36l5Huq0FvO_TN1y0URUlQj4ZB4bY8oKEAFyjussXKhdyHS_m71gDm8iSVjy3Hb7o_Sm46__JSjrnjg8IOiGlOtvV7v1NBUH5edovKJj91wN3YdNM3SJRA0f3yr2Z03AU1g8Fa1azda6I-EBpLVu14WZPOxVdnU7KcQ2yjexju6-BP-TJ7jM42msfwuBFg9bnqO8fJHt5PgLlHQOW3p3L5-fQtzuSwdVOHASX4In-llbgcBmiGLkKgzn-vE9dH-rm_u0RGzrHvRo4GD1wQ0CEAUKa7xIx9I6_RWqqw56iFDIBECQXoSN8C4FyvSgomM0KNXRUQceI_iJcVLYAaIGk0AVoaIVMlY8cBOjRTghxoJTFDyFK44dxxZXip2HQQ4Kx6WmZTgCDAsB2soKQF2cggzYsCLea2GgqJWOkHMFdVfi2TCMOY198LvQWTkZMw_rYIfqURl8EIh1Jps9X2whamRnxR07rjhntCM-FB9bxKbXrGyBe76S1ceuWRvTQnAQLsL58trhHhBB766u0k=w490-h367-no" alt="" width="489" height="367" /></p>
<p><span style="color: #333333; font-family: ''Times New Roman''; font-size: 17px;">Mặc d&ugrave; rất tự tin về khả năng của bản th&acirc;n, thế nhưng Machine God G5 cũng chỉ khiến cho Samurai Nguy&ecirc;n Tử ng&aacute;p ngắn ng&aacute;p d&agrave;i v&agrave; nhanh ch&oacute;ng hạ gục n&oacute; ngay sau đ&oacute;. Tuy nhi&ecirc;n, dường như th&acirc;n x&aacute;c robot n&agrave;y kh&ocirc;ng phải thực thể của G5 khi hắn cũng đ&atilde; nhanh ch&oacute;ng chạy mất.</span></p>', N'Về phần Samurai Nguyên Tử, anh hùng hạng 4 lớp S này đã có những giây phút dường như khá là dễ dàng khi liên tục tiêu diệt những con quái vật lâu la theo cách vô cùng đơn giản.', CAST(N'2019-06-20T00:17:54.0000000' AS DateTime2), N'PSC       ', 1, N'b368b938-5a31-45e7-9f76-bcf6d8fe5850')
INSERT [dbo].[dbo.TinTuc] ([MaTintuc], [TieuDe], [AnhBia], [NoiDung], [LoiMoDau], [NgayDang], [MaTheloai], [Duyet], [UserID]) VALUES (6, N'Đây là tin tức Webgame', N'https://lh3.googleusercontent.com/gKgKqiY8yqbAxxDr1WQfweolknZyDJvP6R_qYb0qlNUHzYpXLiUVkXqrRJIaseTImNWXUMl8oxjaIJ71569Y6q9SF5GS28EJ11HBQ53FWn4c99B5_x9vJmt5yXArAhtfLPsGvj6cLVHoMGNz8_zS5qglnCLy5yJVc5GQUebiVU2Iiw5v2D3LmL5oFw4ANCbQfIvpehhTveJDM4gNdnKhD8g1dD_6_fiU57YhE8XdvOb9cYZU-Wj1L3hzdQTOi2LmDjyk2oYX9EsNHNZTutr4iw8LJuAl0FX_2zZbS6KfTWT_ViFpFUsXDr2xnFx6AGefcHQVErVaBu62jdxaPHqsvyeIiCgYHo4p8ZMhxtsFe03G2xpaHpcMTKXR1EAasp16VuwY-BJeyPkshXv-8P7SMOAe5mMmBgGkCKKPEZlWbPBP3q0nRzoKFRMkDTd1ctsqCkiNSZ32BaUsMkeyjQemdyNXkFg3lLz82rcnFQ-qrn3MZ2WDD4gS5adIBsGjMi0mR1LfxxmUN6Y8kpxB-z0mkcVIL2wjgFIZAeb-cTwiv12S96By7IZktpHNcHMiRB05HCHPz1vJJidD3RlhcU9AqLOND-L7SpHfJT5rm5gbWMBn3N8ekhZJDMYh-IwdK9tQZokFcMr6rxwSMuTTJRk5FOqg2QV85mc=w551-h367-no', N'<p>Được xem như l&agrave; một bom tấn AAA sẽ khuấy đảo E3 2019, tuy nhi&ecirc;n tựa game Marvel''s Avengers của nh&agrave; ph&aacute;t triển Square Enix lại khiến h&agrave;ng triệu game thủ thất vọng trước tạo h&igrave;nh của nh&acirc;n vật ho&agrave;n to&agrave;n xa lạ, kh&ocirc;ng giống game, cũng kh&ocirc;ng giống truyện. Marvel''s Avengers đ&atilde; nhanh ch&oacute;ng bị "gạch đ&aacute;" từ ch&iacute;nh những game thủ cũng như c&aacute;c fan h&acirc;m mộ vũ trụ điện ảnh Marvel.</p>
<p><img src="https://lh3.googleusercontent.com/gKgKqiY8yqbAxxDr1WQfweolknZyDJvP6R_qYb0qlNUHzYpXLiUVkXqrRJIaseTImNWXUMl8oxjaIJ71569Y6q9SF5GS28EJ11HBQ53FWn4c99B5_x9vJmt5yXArAhtfLPsGvj6cLVHoMGNz8_zS5qglnCLy5yJVc5GQUebiVU2Iiw5v2D3LmL5oFw4ANCbQfIvpehhTveJDM4gNdnKhD8g1dD_6_fiU57YhE8XdvOb9cYZU-Wj1L3hzdQTOi2LmDjyk2oYX9EsNHNZTutr4iw8LJuAl0FX_2zZbS6KfTWT_ViFpFUsXDr2xnFx6AGefcHQVErVaBu62jdxaPHqsvyeIiCgYHo4p8ZMhxtsFe03G2xpaHpcMTKXR1EAasp16VuwY-BJeyPkshXv-8P7SMOAe5mMmBgGkCKKPEZlWbPBP3q0nRzoKFRMkDTd1ctsqCkiNSZ32BaUsMkeyjQemdyNXkFg3lLz82rcnFQ-qrn3MZ2WDD4gS5adIBsGjMi0mR1LfxxmUN6Y8kpxB-z0mkcVIL2wjgFIZAeb-cTwiv12S96By7IZktpHNcHMiRB05HCHPz1vJJidD3RlhcU9AqLOND-L7SpHfJT5rm5gbWMBn3N8ekhZJDMYh-IwdK9tQZokFcMr6rxwSMuTTJRk5FOqg2QV85mc=w551-h367-no" alt="" width="551" height="367" /></p>
<p>Đ&atilde; từng c&oacute; một bộ phim cũng nhận được rất nhiều "gạch đ&aacute;" từ ph&iacute;a cộng đồng mạng sau khi tung trailer với thiết kế nhận vật nửa m&ugrave;a v&agrave; được v&iacute; như "giết chết h&igrave;nh tượng". Đ&oacute; ch&iacute;nh l&agrave; bộ phim Sonic The Hedgehog do h&atilde;ng phim Paramount Pictures sản xuất. Sau khi bị ch&ecirc; bai dữ dội, đạo diễn Jeff Fowler đ&atilde; quyết định l&agrave;m lại nh&acirc;n vật Sonic trong bộ phim của m&igrave;nh v&agrave; được rất nhiều fan ủng hộ. Điều n&agrave;y cho thấy sức mạnh của fan h&acirc;m mộ lớn đến cỡ n&agrave;o khi lay chuyển cả một h&atilde;ng phim.</p>', N'Hoàn toàn xa lạ, không giống game, cũng không giống truyện. Marvel''s Avengers đã nhanh chóng bị "gạch đá" từ chính những game thủ cũng như các fan hâm mộ vũ trụ điện ảnh Marvel.', CAST(N'2019-06-20T00:21:39.0000000' AS DateTime2), N'WG        ', 0, N'b368b938-5a31-45e7-9f76-bcf6d8fe5850')
INSERT [dbo].[dbo.TinTuc] ([MaTintuc], [TieuDe], [AnhBia], [NoiDung], [LoiMoDau], [NgayDang], [MaTheloai], [Duyet], [UserID]) VALUES (7, N'Đây là tin tức Mobile 2', N'https://lh3.googleusercontent.com/UW61K1r_LIrOtmWUDN7BDsAcFptN7-zDADSeSwFMtjqA_uj_VL31aCHdccQtW-AxNc_aHXbgjG2uOye9LnQ-LGduozWK1GFK6mMJshaWdhWyyXVCfTDgNGvGRZL7hWwjM_9WtBvS-83q_Onuig5sy8vADPMQpL57vWbwDW-noGL6FfXSi0wt1NTYMuO7oNwcv_S3uM4NO_JXUnm-Qm5pqDJVRqWbWf7C7Dlle0i-V8YDp0eWIJDfQaQZosShSNNfDSMlMS4TmbBOXfAuAh7zV94DAl6Kr-BZVpbVcvNFdimmLaKpyvlCf_tEVI0hWnfL7B66MT7BAE4b8Sy8E6f5ZbWsL-Y1XfXUIJK57TUnZq3Wrmxvmbz7yFgUeSwgM8A5v-Y7e6JWvstk9iBrjn9fkiagCxtrc7YV7TWJPKXNh0URF51lFQhkToPvhYIeU0O2O-1zcS3M-AhcGlOi74t5A5QnYSgoCM7IlxNdQPbkBJt1RHANqNbJpN6J1ZFG25xDYcupW8AExZNLV29RAPlqbRvhdwAFylzf4CyPCihaF0bIvVgPBozTflhc90_OyC9sksXoYITAkG9DEJVlgDieEvr_7l8BUBZGnVrfBWQsiS1eGWdiG7FW4BbswUWDO34auWS33oJpZ4Ku87s21DCEqDvnSBGo6ds=w653-h368-no', N'<p><span style="color: #333333; font-family: ''Times New Roman''; font-size: 17px;">Abe Oto c&oacute; lẽ vẫn c&ograve;n l&agrave; một c&aacute;i t&ecirc;n kh&aacute; v&ocirc; danh đối với c&aacute;c fan h&acirc;m mộ tại Việt Nam. Nhưng ở Nhật Bản, c&ocirc; n&agrave;ng n&agrave;y thậm ch&iacute; c&ograve;n đang trở th&agrave;nh một hiện tượng khi vừa c&oacute; m&agrave;n xuất hiện qu&aacute; đỗi quyến rũ tr&ecirc;n tạp ch&iacute; Playboy th&aacute;ng 5 vừa qua.</span></p>
<p><img src="https://lh3.googleusercontent.com/UW61K1r_LIrOtmWUDN7BDsAcFptN7-zDADSeSwFMtjqA_uj_VL31aCHdccQtW-AxNc_aHXbgjG2uOye9LnQ-LGduozWK1GFK6mMJshaWdhWyyXVCfTDgNGvGRZL7hWwjM_9WtBvS-83q_Onuig5sy8vADPMQpL57vWbwDW-noGL6FfXSi0wt1NTYMuO7oNwcv_S3uM4NO_JXUnm-Qm5pqDJVRqWbWf7C7Dlle0i-V8YDp0eWIJDfQaQZosShSNNfDSMlMS4TmbBOXfAuAh7zV94DAl6Kr-BZVpbVcvNFdimmLaKpyvlCf_tEVI0hWnfL7B66MT7BAE4b8Sy8E6f5ZbWsL-Y1XfXUIJK57TUnZq3Wrmxvmbz7yFgUeSwgM8A5v-Y7e6JWvstk9iBrjn9fkiagCxtrc7YV7TWJPKXNh0URF51lFQhkToPvhYIeU0O2O-1zcS3M-AhcGlOi74t5A5QnYSgoCM7IlxNdQPbkBJt1RHANqNbJpN6J1ZFG25xDYcupW8AExZNLV29RAPlqbRvhdwAFylzf4CyPCihaF0bIvVgPBozTflhc90_OyC9sksXoYITAkG9DEJVlgDieEvr_7l8BUBZGnVrfBWQsiS1eGWdiG7FW4BbswUWDO34auWS33oJpZ4Ku87s21DCEqDvnSBGo6ds=w653-h368-no" alt="" width="653" height="367" /></p>
<p><span style="color: #333333; font-family: ''Times New Roman''; font-size: 17px;">Lật lại một ch&uacute;t về tiểu sử của Abe Oto, c&oacute; thể thấy c&ocirc; n&agrave;ng n&agrave;y đ&atilde; bộc lộ tư chất ngay khi c&ograve;n trẻ.&nbsp;Khi c&ograve;n học trung học, c&ocirc; n&agrave;ng lọt v&agrave;o mắt xanh của Akimoto Yasushi &ndash; &ldquo;cha đẻ&rdquo; của nh&oacute;m nhạc AKB48.&nbsp;</span><span style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 17px; outline: none; color: #333333; font-family: ''Times New Roman'';">Sau đ&oacute;, mỹ nh&acirc;n sinh năm 2000 n&agrave;y trở th&agrave;nh th&agrave;nh vi&ecirc;n của nh&oacute;m nhạc thần tượng. Tuy&nbsp; nhi&ecirc;n, như đ&atilde; đề cập, chỉ khi thử sức với vai tr&ograve; người mẫu, tiềm năng v&agrave; những sở trường của Abe mới được khai ph&aacute;.</span></p>', N'18 tuổi mà đã xuất hiện trên bìa tạp chí Playboy thì anh em đủ hiểu rồi đấy.', CAST(N'2019-06-20T00:36:36.0000000' AS DateTime2), N'ES        ', 0, N'b368b938-5a31-45e7-9f76-bcf6d8fe5850')
INSERT [dbo].[dbo.TinTuc] ([MaTintuc], [TieuDe], [AnhBia], [NoiDung], [LoiMoDau], [NgayDang], [MaTheloai], [Duyet], [UserID]) VALUES (8, N'ĐÂY LÀ TIN TỨC WEBGAME', N'https://lh3.googleusercontent.com/B-FUiHYhmGzPSjOPCJMQJetWPGxqjZ5Fcg2scQ6JCJDOpuPyNFWztownTv-hMFUCVnWkXgbtZtw800vlyIOTgAQfZp_DChiTtbUnSSOPKX3CmsCerlN2c5Mz-yxLYw9yAKsCbcyYsHSJh4vRyiEgC2Onq5Vqv8x_pUfvgY3PoAVPm5WnmwxdDHCZprQ5Wsc3CNGIFZI0dJ7dhkcmgTkahS2aTVrCeg9OSChUl0bhUskS-0RoDB1dH7ZDBxZC0M7JSQHKC9lfIM5JFNqATW6Pen6BuSYU4OXnKVXi7lRKESUjhN2M-44_GUhRsJkCoSBhKvf_IgrDC3YljFgQVQIe6WA0bkoLnMDbT6Lc0dGI07siGdeVVQE2dS0BVcDBR9xMjS32VSUvag-7zz3rPy8HY17t6Dyua275gi2cGeWWEfafShC2A5nnzE6M0Wssqb9xQB0MW0QBlGolBqG0bAT-iEtoF2EYBY8p0LeKpAbGgTxupelvCRGdhgqXXBHNhFKg-3D7EvSGOC6FL5Ju00X7VUQBHk8XvNOJOuODG_cHnFvIrJJXrTixM7jyiGanJOFy7zCQro3o-s_tIFIYZLfAS2lD1ZDnY_5_ttNew-p1dXcBQJ1FfesLwukrGgrIfzTNR7X8Z2UWP5SiA-g8brRksdxBpr6KRrI=w551-h367-no', N'<p>Chia sẻ của đại diện VNG từ đấu trường MSC 2019 &ndash; Manila (Philippines) th&igrave; OverClockerS đ&atilde; c&oacute; một khởi đầu kh&aacute; vất vả trong ng&agrave;y ra qu&acirc;n đầu ti&ecirc;n khi đối mặt Evos Esports SG (Singapore). V&agrave;o trận với t&acirc;m thế tự tin v&agrave; quyết t&acirc;m cao độ, trải qua 3 v&aacute;n đấu, gi&agrave;nh chiến thắng 2-1 trước đại diện Singapore, kết quả n&agrave;y gi&uacute;p đội tuyển Mobile Legends: Bang Bang Việt Nam c&oacute; th&ecirc;m tinh thần cho trận đối đầu đội tuyển chủ nh&agrave; Philippines. Được biết, ArkAngel l&agrave; một đội tuyển mạnh nhất nh&igrave; trong m&ugrave;a giải MSC 2019 năm nay.</p>
<p><img src="https://lh3.googleusercontent.com/B-FUiHYhmGzPSjOPCJMQJetWPGxqjZ5Fcg2scQ6JCJDOpuPyNFWztownTv-hMFUCVnWkXgbtZtw800vlyIOTgAQfZp_DChiTtbUnSSOPKX3CmsCerlN2c5Mz-yxLYw9yAKsCbcyYsHSJh4vRyiEgC2Onq5Vqv8x_pUfvgY3PoAVPm5WnmwxdDHCZprQ5Wsc3CNGIFZI0dJ7dhkcmgTkahS2aTVrCeg9OSChUl0bhUskS-0RoDB1dH7ZDBxZC0M7JSQHKC9lfIM5JFNqATW6Pen6BuSYU4OXnKVXi7lRKESUjhN2M-44_GUhRsJkCoSBhKvf_IgrDC3YljFgQVQIe6WA0bkoLnMDbT6Lc0dGI07siGdeVVQE2dS0BVcDBR9xMjS32VSUvag-7zz3rPy8HY17t6Dyua275gi2cGeWWEfafShC2A5nnzE6M0Wssqb9xQB0MW0QBlGolBqG0bAT-iEtoF2EYBY8p0LeKpAbGgTxupelvCRGdhgqXXBHNhFKg-3D7EvSGOC6FL5Ju00X7VUQBHk8XvNOJOuODG_cHnFvIrJJXrTixM7jyiGanJOFy7zCQro3o-s_tIFIYZLfAS2lD1ZDnY_5_ttNew-p1dXcBQJ1FfesLwukrGgrIfzTNR7X8Z2UWP5SiA-g8brRksdxBpr6KRrI=w551-h367-no" alt="" width="551" height="367" /></p>
<p>Ở trận đ&aacute;nh với Evos Esports SG, OverClockerS cẩn trọng với lối di chuyển hợp l&yacute;, kỹ năng được ph&aacute;t huy đ&uacute;ng thời điểm n&ecirc;n gi&agrave;nh ưu thế ở v&aacute;n đầu ti&ecirc;n. Tuy nhi&ecirc;n v&aacute;n thứ hai xảy ra sai lầm kh&ocirc;ng đ&aacute;ng c&oacute; n&ecirc;n đại diện Singapore đ&atilde; c&acirc;n bằng thế trận. Sau v&aacute;n đầu n&agrave;y, OverClockerS đ&atilde; suy t&iacute;nh v&agrave; đưa ra chiến thuật sửa chữa sai lầm để đấu v&aacute;n cuối c&ugrave;ng với Evos Esports SG. Vẫn tiếp tục l&agrave; Taku, với vị tướng Kagura trong tay, tuyển thủ n&agrave;y đ&atilde; c&oacute; m&agrave;n tr&igrave;nh diễn xuất sắc li&ecirc;n tục ghi được c&aacute;c điểm, hạ gục đối thủ một c&aacute;ch thuyết phục. Những pha c&ocirc;ng &ldquo;thần th&aacute;nh&rdquo; của Taku v&agrave; đồng đội đ&atilde; mang về chiến thắng cuối c&ugrave;ng cho OverClockerS.</p>', N'Xếp hạng 2 bảng B, đứng sau ArkAngel (Philippines) – đó là một kết quả xứng đáng cho sự nỗ lực của OverClockerS. Đội tuyển Mobile Legends: Bang Bang Việt Nam hiện đang cố gắng hết mình thể hiện kỹ năng trước các đối thủ trong giải đấu Vô địch Mobile Legends: Bang Bang Đông Nam Á – MSC 2019', CAST(N'2019-06-21T11:53:37.0000000' AS DateTime2), N'WG        ', NULL, N'b368b938-5a31-45e7-9f76-bcf6d8fe5850')
INSERT [dbo].[dbo.TinTuc] ([MaTintuc], [TieuDe], [AnhBia], [NoiDung], [LoiMoDau], [NgayDang], [MaTheloai], [Duyet], [UserID]) VALUES (1008, N'ĐÂY LÀ TIN TỨC PS/CONSOLE', N'https://lh3.googleusercontent.com/B-FUiHYhmGzPSjOPCJMQJetWPGxqjZ5Fcg2scQ6JCJDOpuPyNFWztownTv-hMFUCVnWkXgbtZtw800vlyIOTgAQfZp_DChiTtbUnSSOPKX3CmsCerlN2c5Mz-yxLYw9yAKsCbcyYsHSJh4vRyiEgC2Onq5Vqv8x_pUfvgY3PoAVPm5WnmwxdDHCZprQ5Wsc3CNGIFZI0dJ7dhkcmgTkahS2aTVrCeg9OSChUl0bhUskS-0RoDB1dH7ZDBxZC0M7JSQHKC9lfIM5JFNqATW6Pen6BuSYU4OXnKVXi7lRKESUjhN2M-44_GUhRsJkCoSBhKvf_IgrDC3YljFgQVQIe6WA0bkoLnMDbT6Lc0dGI07siGdeVVQE2dS0BVcDBR9xMjS32VSUvag-7zz3rPy8HY17t6Dyua275gi2cGeWWEfafShC2A5nnzE6M0Wssqb9xQB0MW0QBlGolBqG0bAT-iEtoF2EYBY8p0LeKpAbGgTxupelvCRGdhgqXXBHNhFKg-3D7EvSGOC6FL5Ju00X7VUQBHk8XvNOJOuODG_cHnFvIrJJXrTixM7jyiGanJOFy7zCQro3o-s_tIFIYZLfAS2lD1ZDnY_5_ttNew-p1dXcBQJ1FfesLwukrGgrIfzTNR7X8Z2UWP5SiA-g8brRksdxBpr6KRrI=w551-h367-no', N'<p>Kh&ocirc;ng thể phủ nhận rằng Nhật Bản từ l&acirc;u đ&atilde; được coi l&agrave; đất nước sản sinh ra những mỹ nữ xinh đẹp sở hữu đường cong gợi cảm chết người. V&agrave; mới đ&acirc;y, xứ sở ph&ugrave; Tang lại tiếp tục giới thiệu th&ecirc;m hai gương mặt với độ tuổi trẻ măng khiến netizen xứ Trung sốt sắng t&igrave;m th&ocirc;ng tin ngay lập tức. Một trong số đ&oacute; ch&iacute;nh l&agrave; Sayaka Tomaru &ndash; ca sĩ ki&ecirc;m diễn vi&ecirc;n, người mẫu của Jbiz.</p>
<p><img src="https://lh3.googleusercontent.com/B-FUiHYhmGzPSjOPCJMQJetWPGxqjZ5Fcg2scQ6JCJDOpuPyNFWztownTv-hMFUCVnWkXgbtZtw800vlyIOTgAQfZp_DChiTtbUnSSOPKX3CmsCerlN2c5Mz-yxLYw9yAKsCbcyYsHSJh4vRyiEgC2Onq5Vqv8x_pUfvgY3PoAVPm5WnmwxdDHCZprQ5Wsc3CNGIFZI0dJ7dhkcmgTkahS2aTVrCeg9OSChUl0bhUskS-0RoDB1dH7ZDBxZC0M7JSQHKC9lfIM5JFNqATW6Pen6BuSYU4OXnKVXi7lRKESUjhN2M-44_GUhRsJkCoSBhKvf_IgrDC3YljFgQVQIe6WA0bkoLnMDbT6Lc0dGI07siGdeVVQE2dS0BVcDBR9xMjS32VSUvag-7zz3rPy8HY17t6Dyua275gi2cGeWWEfafShC2A5nnzE6M0Wssqb9xQB0MW0QBlGolBqG0bAT-iEtoF2EYBY8p0LeKpAbGgTxupelvCRGdhgqXXBHNhFKg-3D7EvSGOC6FL5Ju00X7VUQBHk8XvNOJOuODG_cHnFvIrJJXrTixM7jyiGanJOFy7zCQro3o-s_tIFIYZLfAS2lD1ZDnY_5_ttNew-p1dXcBQJ1FfesLwukrGgrIfzTNR7X8Z2UWP5SiA-g8brRksdxBpr6KRrI=w551-h367-no" alt="" width="551" height="367" /></p>
<p>Kh&ocirc;ng thể phủ nhận rằng Nhật Bản từ l&acirc;u đ&atilde; được coi l&agrave; đất nước sản sinh ra những mỹ nữ xinh đẹp sở hữu đường cong gợi cảm chết người. V&agrave; mới đ&acirc;y, xứ sở ph&ugrave; Tang lại tiếp tục giới thiệu th&ecirc;m hai gương mặt với độ tuổi trẻ măng khiến netizen xứ Trung sốt sắng t&igrave;m th&ocirc;ng tin ngay lập tức. Một trong số đ&oacute; ch&iacute;nh l&agrave; Sayaka Tomaru &ndash; ca sĩ ki&ecirc;m diễn vi&ecirc;n, người mẫu của Jbiz.</p>', N'Cả hai đều là những cô nàng người mẫu đang lên của Nhật Bản.', CAST(N'2019-06-21T12:03:48.0000000' AS DateTime2), N'PSC       ', 1, N'e686bc9c-969e-4846-8e29-aa01ef1d7b72')
SET IDENTITY_INSERT [dbo].[dbo.TinTuc] OFF
ALTER TABLE [dbo].[dbo.TinTuc] ADD  CONSTRAINT [DF_dbo.TinTuc_Duyet]  DEFAULT ((0)) FOR [Duyet]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[dbo.TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TinTuc_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[dbo.TinTuc] CHECK CONSTRAINT [FK_dbo.TinTuc_AspNetUsers]
GO
ALTER TABLE [dbo].[dbo.TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TinTuc_dbo.TheLoai] FOREIGN KEY([MaTheloai])
REFERENCES [dbo].[dbo.TheLoai] ([MaTheloai])
GO
ALTER TABLE [dbo].[dbo.TinTuc] CHECK CONSTRAINT [FK_dbo.TinTuc_dbo.TheLoai]
GO

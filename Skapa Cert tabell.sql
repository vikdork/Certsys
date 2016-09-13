USE [Certificate]
GO

/****** Object:  Table [dbo].[Cert]    Script Date: 2016-09-09 09:43:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cert](
	[CertId] [int] IDENTITY(1,1) NOT NULL,
	[CommonName] [nvarchar](max) NULL,
	[ExpirationDate] [datetime] NULL,
	[Issuer] [nvarchar](max) NULL,
	[Function] [nvarchar](max) NULL,
	[SerialNumber] [nvarchar](50) NULL,
	[SAN] [nvarchar](max) NULL,
	[Notification] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO



USE [Certificate]
GO

/****** Object:  Table [dbo].[Host]    Script Date: 2016-09-09 09:43:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Host](
	[HostId] [int] IDENTITY(1,1) NOT NULL,
	[Host] [nvarchar](max) NULL,
	[Application] [nvarchar](max) NULL,
	[IP] [nvarchar](max) NULL,
 CONSTRAINT [PK_Host] PRIMARY KEY CLUSTERED 
(
	[HostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO



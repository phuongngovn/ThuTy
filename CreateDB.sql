/****** Script for SelectTopNRows command from SSMS  ******/
use LakesideBeautySalon
go

CREATE TABLE [BeautySalonUsers](
	[Id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NULL UNIQUE,
	[EmailConfirmed] bit null default 0,
	[PasswordHash] [nvarchar](MAX) NULL,
	[SecurityStamp] [nvarchar](MAX) NULL,
	[PhoneNumber] nvarchar(MAX) null,
	[PhoneNumberConfirmed] bit not null default 0,
	TwoFactorEnabled bit not null,
	LokoutEndDateUtc datetime null,
	LockoutEnabled bit not null,
	AccessFailedCount int not null,
	[UserName] [nvarchar](256) not NULL
) ON [PRIMARY]

GO

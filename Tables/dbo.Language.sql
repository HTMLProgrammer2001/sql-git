CREATE TABLE [dbo].[Language]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[Code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL,
[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL,
[NameEn] [nvarchar] (50) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DEF_Language_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DEF_Language_VERSION] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DEF_Language_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DEF_Language_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DEF_Language_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Language] ADD CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

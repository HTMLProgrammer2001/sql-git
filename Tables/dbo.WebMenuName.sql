CREATE TABLE [dbo].[WebMenuName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebMenuID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebMenuName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebMenuName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebMenuName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebMenuName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebMenuName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMenuName] ADD CONSTRAINT [PK_WebMenuName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMenuName] ADD CONSTRAINT [FK_WebMenuName_WebMenu] FOREIGN KEY ([WebMenuID]) REFERENCES [dbo].[WebMenu] ([ID]) ON DELETE CASCADE
GO

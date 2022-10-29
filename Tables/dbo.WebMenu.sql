CREATE TABLE [dbo].[WebMenu]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebMenu_ID] DEFAULT (newsequentialid()),
[WebMenuID] [uniqueidentifier] NULL,
[WebPresetID] [uniqueidentifier] NOT NULL,
[WebMenuTypeEnumID] [bigint] NOT NULL,
[WebViewID] [uniqueidentifier] NULL,
[WebIconSvgEnumID] [uniqueidentifier] NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[IsUseTranslateKey] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebMenu_IsUseTranslateKey] DEFAULT ('Y'),
[WebTranslateID] [uniqueidentifier] NULL,
[IsUseViewPermissions] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL,
[URL] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[PermissionObject] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[SortOrder] [bigint] NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebMenu_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebMenu_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebMenu_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebMenu_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebMenu_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[IsActive] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NULL CONSTRAINT [DF_WebMenu_IsActive] DEFAULT ('Y'),
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebMenu_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMenu] ADD CONSTRAINT [PK_WebMenu] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMenu] ADD CONSTRAINT [FK_WebMenu_WebIconSvgEnum] FOREIGN KEY ([WebIconSvgEnumID]) REFERENCES [dbo].[WebIconSvgEnum] ([ID]) ON DELETE SET NULL ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebMenu] ADD CONSTRAINT [FK_WebMenu_WebMenu] FOREIGN KEY ([WebMenuID]) REFERENCES [dbo].[WebMenu] ([ID])
GO
ALTER TABLE [dbo].[WebMenu] ADD CONSTRAINT [FK_WebMenu_WebMenuTypeEnum] FOREIGN KEY ([WebMenuTypeEnumID]) REFERENCES [dbo].[WebMenuTypeEnum] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebMenu] ADD CONSTRAINT [FK_WebMenu_WebPreset] FOREIGN KEY ([WebPresetID]) REFERENCES [dbo].[WebPreset] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebMenu] ADD CONSTRAINT [FK_WebMenu_WebTranslate] FOREIGN KEY ([WebTranslateID]) REFERENCES [dbo].[WebTranslate] ([ID]) ON DELETE SET NULL ON UPDATE CASCADE
GO

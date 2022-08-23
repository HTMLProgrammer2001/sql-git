CREATE TABLE [dbo].[WebView]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebModuleID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[IsAllowForMenu] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[WebIconSvgEnumID_DefaultForMenu] [bigint] NULL,
[WebIconSvgEnumID_DefaultForBookmark] [bigint] NULL,
[WebTranslateID_BaseTree] [bigint] NULL,
[WebTranslateID_DefaultForMenu] [bigint] NULL,
[WebTranslateID_ForTitle] [bigint] NULL,
[WebTranslateID_ForBookmarkName] [bigint] NULL,
[WebTranslateID_ForBookmarkDescription] [bigint] NULL,
[PermissionObjectDefaultForWebTemplate] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Route] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebView_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebView_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebView_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebView_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebView_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [PK_WebView] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebIconSvgEnum_DefaultForBookmark] FOREIGN KEY ([WebIconSvgEnumID_DefaultForBookmark]) REFERENCES [dbo].[WebIconSvgEnum] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebIconSvgEnum_DefaultForMenu] FOREIGN KEY ([WebIconSvgEnumID_DefaultForMenu]) REFERENCES [dbo].[WebIconSvgEnum] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebModule] FOREIGN KEY ([WebModuleID]) REFERENCES [dbo].[WebModule] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebTranslateBaseTree] FOREIGN KEY ([WebTranslateID_BaseTree]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebTranslateDefaultForMenu] FOREIGN KEY ([WebTranslateID_DefaultForMenu]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebTranslateForBookmarkDescription] FOREIGN KEY ([WebTranslateID_ForBookmarkDescription]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebTranslateForBookmarkName] FOREIGN KEY ([WebTranslateID_ForBookmarkName]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebTranslateForTitle] FOREIGN KEY ([WebTranslateID_ForTitle]) REFERENCES [dbo].[WebTranslate] ([ID])
GO

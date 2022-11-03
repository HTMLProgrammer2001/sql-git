CREATE TABLE [dbo].[WebView]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebView_ID2] DEFAULT (newsequentialid()),
[Code] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[WebModuleID] [uniqueidentifier] NULL,
[IsAllowForMenu] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[WebIconSvgEnumID_DefaultForMenu] [uniqueidentifier] NULL,
[WebIconSvgEnumID_DefaultForBookmark] [uniqueidentifier] NULL,
[WebTranslateID_DefaultForMenu] [uniqueidentifier] NULL,
[WebTranslateID_ForBookmarkName] [uniqueidentifier] NULL,
[WebTranslateID_ForBookmarkDescription] [uniqueidentifier] NULL,
[PermissionObjectDefaultForWebTemplate] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Route] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebView_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebView_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebView_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebView_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebView_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebView_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [PK_WebView] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebIconSvgEnum] FOREIGN KEY ([WebIconSvgEnumID_DefaultForBookmark]) REFERENCES [dbo].[WebIconSvgEnum] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebIconSvgEnum1] FOREIGN KEY ([WebIconSvgEnumID_DefaultForMenu]) REFERENCES [dbo].[WebIconSvgEnum] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebTranslate_BookmarkDescription] FOREIGN KEY ([WebTranslateID_ForBookmarkDescription]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebTranslate_BookmarkName] FOREIGN KEY ([WebTranslateID_ForBookmarkName]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebView] ADD CONSTRAINT [FK_WebView_WebTranslate_Menu] FOREIGN KEY ([WebTranslateID_DefaultForMenu]) REFERENCES [dbo].[WebTranslate] ([ID])
GO

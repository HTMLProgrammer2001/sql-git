CREATE TABLE [dbo].[WebViewTemplate]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebViewID] [bigint] NULL,
[IsUseTranslateKey_ForTitle] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewTemplate_IsUseTranslateKey_ForTitle] DEFAULT ('Y'),
[WebTranslateID_ForTitle] [bigint] NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Title] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[IsUseTranslateKey_ForBookmarkName] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewTemplate_IsUseTranslateKey_ForBookmarkName] DEFAULT ('Y'),
[WebTranslateID_ForBookmarkName] [bigint] NULL,
[BookmarkName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[IsUseTranslateKey_ForBookmarkDescription] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewTemplate_IsUseTranslateKey_ForBookmarkDescription] DEFAULT ('Y'),
[WebTranslateID_ForBookmarkDescription] [bigint] NULL,
[BookmarkDescription] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[WebIconSvgEnumID_ForBookmark] [uniqueidentifier] NULL,
[PermissionObject] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[TemplateJsonFragment] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[TemplateJsonFull] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewTemplate_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebViewTemplate_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewTemplate_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebViewTemplate_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebViewTemplate_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewTemplate_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewTemplate] ADD CONSTRAINT [PK_WebViewTemplate] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewTemplate] ADD CONSTRAINT [FK_WebViewTemplate_WebIconSvgEnum] FOREIGN KEY ([WebIconSvgEnumID_ForBookmark]) REFERENCES [dbo].[WebIconSvgEnum] ([ID]) ON DELETE SET NULL ON UPDATE SET NULL
GO
ALTER TABLE [dbo].[WebViewTemplate] ADD CONSTRAINT [FK_WebViewTemplate_WebTranslate] FOREIGN KEY ([WebTranslateID_ForBookmarkDescription]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebViewTemplate] ADD CONSTRAINT [FK_WebViewTemplate_WebTranslate1] FOREIGN KEY ([WebTranslateID_ForBookmarkName]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebViewTemplate] ADD CONSTRAINT [FK_WebViewTemplate_WebTranslate2] FOREIGN KEY ([WebTranslateID_ForTitle]) REFERENCES [dbo].[WebTranslate] ([ID])
GO

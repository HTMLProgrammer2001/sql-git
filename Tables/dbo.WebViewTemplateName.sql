CREATE TABLE [dbo].[WebViewTemplateName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebViewTemplateID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Title] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[BookmarkName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[BookmarkDescription] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[TemplateHtml] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewTemplateName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebViewTemplateName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewTemplateName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebViewTemplateName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebViewTemplateName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewTemplateName] ADD CONSTRAINT [PK_WebViewTemplateName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewTemplateName] ADD CONSTRAINT [FK_WebViewTemplateName_WebViewTemplate] FOREIGN KEY ([WebViewTemplateID]) REFERENCES [dbo].[WebViewTemplate] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

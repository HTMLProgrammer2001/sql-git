CREATE TABLE [dbo].[WebViewSubTemplateName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebViewSubTemplateID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[TemplateHtml] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewSubTemplateName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebViewSubTemplateName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewSubTemplateName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebViewSubTemplateName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebViewSubTemplateName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewSubTemplateName] ADD CONSTRAINT [PK_WebViewSubTemplateName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewSubTemplateName] ADD CONSTRAINT [FK_WebViewSubTemplateName_WebViewSubTemplate] FOREIGN KEY ([WebViewSubTemplateID]) REFERENCES [dbo].[WebViewSubTemplate] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

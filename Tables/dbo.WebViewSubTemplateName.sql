CREATE TABLE [dbo].[WebViewSubTemplateName]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebViewSubTemplateName_ID2] DEFAULT (newsequentialid()),
[WebViewSubTemplateID] [uniqueidentifier] NOT NULL,
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
ALTER TABLE [dbo].[WebViewSubTemplateName] ADD CONSTRAINT [FK_WebViewSubTemplateName_Language] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Language] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebViewSubTemplateName] ADD CONSTRAINT [FK_WebViewSubTemplateName_WebViewSubTemplate] FOREIGN KEY ([WebViewSubTemplateID]) REFERENCES [dbo].[WebViewSubTemplate] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

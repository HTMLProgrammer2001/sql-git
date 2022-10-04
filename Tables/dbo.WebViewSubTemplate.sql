CREATE TABLE [dbo].[WebViewSubTemplate]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebViewSubID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[TemplateJsonFragment] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewSubTemplate_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebViewSubTemplate_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewSubTemplate_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebViewSubTemplate_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebViewSubTemplate_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewSubTemplate_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewSubTemplate] ADD CONSTRAINT [PK_WebViewSubTemplate] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewSubTemplate] ADD CONSTRAINT [FK_WebViewSubTemplate_WebViewSub] FOREIGN KEY ([WebViewSubID]) REFERENCES [dbo].[WebViewSub] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

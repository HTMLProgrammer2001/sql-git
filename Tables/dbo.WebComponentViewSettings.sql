CREATE TABLE [dbo].[WebComponentViewSettings]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebViewID] [bigint] NOT NULL,
[WebComponentID] [bigint] NOT NULL,
[Code] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[SettingsJson] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[ComponentHtml] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponentViewSettings_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebComponentViewSettings_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebComponentViewSettings_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSettings_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebComponentViewSettings_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponentViewSettings_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSettings] ADD CONSTRAINT [PK_WebComponentViewSettings] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSettings] ADD CONSTRAINT [FK_WebComponentViewSettings_WebComponent] FOREIGN KEY ([WebComponentID]) REFERENCES [dbo].[WebComponent] ([ID])
GO
ALTER TABLE [dbo].[WebComponentViewSettings] ADD CONSTRAINT [FK_WebComponentViewSettings_WebView] FOREIGN KEY ([WebViewID]) REFERENCES [dbo].[WebView] ([ID])
GO

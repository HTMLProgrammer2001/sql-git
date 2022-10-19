CREATE TABLE [dbo].[WebComponentViewSubSettings]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettings_ID2] DEFAULT (newsequentialid()),
[WebViewSubID] [bigint] NOT NULL,
[WebComponentID] [uniqueidentifier] NOT NULL,
[Code] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[SettingsJson] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[ComponentHtml] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettings_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettings_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebComponentViewSubSettings_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettings_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebComponentViewSubSettings_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettings_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSubSettings] ADD CONSTRAINT [PK_WebComponentViewSubSettings] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSubSettings] ADD CONSTRAINT [FK_WebComponentViewSubSettings_WebComponent] FOREIGN KEY ([WebComponentID]) REFERENCES [dbo].[WebComponent] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebComponentViewSubSettings] ADD CONSTRAINT [FK_WebComponentViewSubSettings_WebViewSub] FOREIGN KEY ([WebViewSubID]) REFERENCES [dbo].[WebViewSub] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

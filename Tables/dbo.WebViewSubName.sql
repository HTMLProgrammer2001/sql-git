CREATE TABLE [dbo].[WebViewSubName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebViewSubID] [bigint] NULL,
[LanguageID] [bigint] NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewSubName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebViewSubName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewSubName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebViewSubName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebViewSubName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewSubName] ADD CONSTRAINT [PK_WebViewSubName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewSubName] ADD CONSTRAINT [FK_WebViewSubName_WebViewSub] FOREIGN KEY ([WebViewSubID]) REFERENCES [dbo].[WebViewSub] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

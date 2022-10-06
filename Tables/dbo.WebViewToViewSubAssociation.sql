CREATE TABLE [dbo].[WebViewToViewSubAssociation]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebViewID] [bigint] NULL,
[WebViewSubID] [bigint] NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewToViewSubAssotiation_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebViewToViewSubAssotiation_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewToViewSubAssotiation_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebViewToViewSubAssotiation_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebViewToViewSubAssotiation_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewToViewSubAssociation] ADD CONSTRAINT [PK_WebViewToViewSubAssociation] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewToViewSubAssociation] ADD CONSTRAINT [FK_WebViewToViewSubAssotiation_WebView] FOREIGN KEY ([WebViewID]) REFERENCES [dbo].[WebView] ([ID])
GO
ALTER TABLE [dbo].[WebViewToViewSubAssociation] ADD CONSTRAINT [FK_WebViewToViewSubAssotiation_WebViewSub] FOREIGN KEY ([WebViewSubID]) REFERENCES [dbo].[WebViewSub] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

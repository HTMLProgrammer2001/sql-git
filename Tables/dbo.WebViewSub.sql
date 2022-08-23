CREATE TABLE [dbo].[WebViewSub]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewSub_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebViewSub_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewSub_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebViewSub_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebViewSub_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[ComponentHtml] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Code] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewSub] ADD CONSTRAINT [PK_WebViewSub] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

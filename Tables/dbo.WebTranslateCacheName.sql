CREATE TABLE [dbo].[WebTranslateCacheName]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebTranslateCacheName_ID2] DEFAULT (newsequentialid()),
[WebTranslateID_BaseTree] [uniqueidentifier] NOT NULL,
[LanguageID] [bigint] NULL,
[Name] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebTranslateCacheName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebTranslateCacheName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebTranslateCacheName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebTranslateCacheName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebTranslateCacheName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslateCacheName] ADD CONSTRAINT [PK_WebTranslateCacheName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

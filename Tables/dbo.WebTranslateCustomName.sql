CREATE TABLE [dbo].[WebTranslateCustomName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebTranslateID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebTranslateCustomName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebTranslateCustomName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebTranslateCustomName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebTranslateCustomName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebTranslateCustomName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslateCustomName] ADD CONSTRAINT [PK_WebTranslateCustomName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslateCustomName] ADD CONSTRAINT [FK_WebTranslateCustomName_WebTranslate] FOREIGN KEY ([WebTranslateID]) REFERENCES [dbo].[WebTranslate] ([ID])
GO

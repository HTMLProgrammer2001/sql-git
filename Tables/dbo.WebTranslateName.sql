CREATE TABLE [dbo].[WebTranslateName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebTranslateID] [bigint] NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebTranslateName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebTranslateName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebTranslateName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebTranslateName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebTranslateName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslateName] ADD CONSTRAINT [PK_WebTranslateName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslateName] ADD CONSTRAINT [FK_WebTranslateName_Language] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Language] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebTranslateName] ADD CONSTRAINT [FK_WebTranslateName_WebTranslate] FOREIGN KEY ([WebTranslateID]) REFERENCES [dbo].[WebTranslate] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

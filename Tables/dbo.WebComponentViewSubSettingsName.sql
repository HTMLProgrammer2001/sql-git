CREATE TABLE [dbo].[WebComponentViewSubSettingsName]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingsName_ID2] DEFAULT (newsequentialid()),
[WebComponentViewSubSettingsID] [uniqueidentifier] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingsName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingsName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingsName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingsName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebComponentViewSubSettingsName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSubSettingsName] ADD CONSTRAINT [PK_WebComponentViewSubSettingsName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSubSettingsName] ADD CONSTRAINT [FK_WebComponentViewSubSettingsName_Language] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Language] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

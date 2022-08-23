CREATE TABLE [dbo].[WebComponentViewSubSettingsName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebComponentViewSubSettingsID] [bigint] NOT NULL,
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
ALTER TABLE [dbo].[WebComponentViewSubSettingsName] ADD CONSTRAINT [FK_WebComponentViewSubSettingsName_WebComponentViewSubSettings] FOREIGN KEY ([WebComponentViewSubSettingsID]) REFERENCES [dbo].[WebComponentViewSubSettings] ([ID]) ON DELETE CASCADE
GO
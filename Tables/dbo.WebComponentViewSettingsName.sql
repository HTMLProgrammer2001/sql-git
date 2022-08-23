CREATE TABLE [dbo].[WebComponentViewSettingsName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebComponentViewSettingsID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponentViewSettingsName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebComponentViewSettingsName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebComponentViewSettingsName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSettingsName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebComponentViewSettingsName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSettingsName] ADD CONSTRAINT [PK_WebComponentViewSettingsName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSettingsName] ADD CONSTRAINT [FK_WebComponentViewSettingsName_WebComponentViewSettings] FOREIGN KEY ([WebComponentViewSettingsID]) REFERENCES [dbo].[WebComponentViewSettings] ([ID]) ON DELETE CASCADE
GO

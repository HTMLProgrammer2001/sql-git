CREATE TABLE [dbo].[WebPresetName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebPresetID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[WebMenuObject] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebPresetName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebPresetName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebPresetName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebPresetName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebPresetName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPresetName] ADD CONSTRAINT [PK_WebPresetName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPresetName] ADD CONSTRAINT [FK_WebPresetName_WebPreset] FOREIGN KEY ([WebPresetID]) REFERENCES [dbo].[WebPreset] ([ID]) ON DELETE CASCADE
GO

CREATE TABLE [dbo].[WebPresetTypeEnumName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebPresetTypeID] [bigint] NULL,
[LanguageID] [bigint] NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebPresetTypeEnumName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebPresetTypeEnumName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebPresetTypeEnumName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebPresetTypeEnumName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebPresetTypeEnumName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPresetTypeEnumName] ADD CONSTRAINT [PK_WebPresetTypeEnumName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPresetTypeEnumName] ADD CONSTRAINT [FK_WebPresetTypeEnumName_WebPresetTypeEnum] FOREIGN KEY ([WebPresetTypeID]) REFERENCES [dbo].[WebPresetTypeEnum] ([ID]) ON DELETE CASCADE
GO

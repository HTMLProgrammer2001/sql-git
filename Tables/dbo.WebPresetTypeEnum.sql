CREATE TABLE [dbo].[WebPresetTypeEnum]
(
[ID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[SortOrder] [bigint] NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebPresetTypeEnum_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebPresetTypeEnum_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebPresetTypeEnum_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebPresetTypeEnum_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebPresetTypeEnum_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPresetTypeEnum] ADD CONSTRAINT [PK_WebPresetTypeEnum] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

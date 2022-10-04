CREATE TABLE [dbo].[WebPreset]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebPreset_ID] DEFAULT (newsequentialid()),
[WebPresetTypeEnumID] [bigint] NOT NULL,
[RoleID] [bigint] NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebPreset_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebPreset_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebPreset_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebPreset_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebPreset_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[IsActive] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NULL CONSTRAINT [DF_WebPreset_IsActive] DEFAULT ('Y'),
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebPreset_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPreset] ADD CONSTRAINT [PK_WebPreset] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPreset] ADD CONSTRAINT [FK_WebPreset_WebPresetTypeEnum] FOREIGN KEY ([WebPresetTypeEnumID]) REFERENCES [dbo].[WebPresetTypeEnum] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

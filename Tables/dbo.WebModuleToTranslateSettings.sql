CREATE TABLE [dbo].[WebModuleToTranslateSettings]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebModuleToTranslateSettings_ID2] DEFAULT (newsequentialid()),
[WebModuleID] [uniqueidentifier] NOT NULL,
[WebTranslateID_BaseTree] [uniqueidentifier] NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebModuleToTranslateSettings_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebModuleToTranslateSettings_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebModuleToTranslateSettings_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebModuleToTranslateSettings_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebModuleToTranslateSettings_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebModuleToTranslateSettings] ADD CONSTRAINT [PK_WebModuleToTranslateSettings] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebModuleToTranslateSettings] ADD CONSTRAINT [FK_WebModuleToTranslateSettings_WebModule] FOREIGN KEY ([WebModuleID]) REFERENCES [dbo].[WebModule] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebModuleToTranslateSettings] ADD CONSTRAINT [FK_WebModuleToTranslateSettings_WebTranslate] FOREIGN KEY ([WebTranslateID_BaseTree]) REFERENCES [dbo].[WebTranslate] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

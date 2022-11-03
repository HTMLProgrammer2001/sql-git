CREATE TABLE [dbo].[WebComponentViewSettingToViewAssociation]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSettingToViewAssociation_ID] DEFAULT (newsequentialid()),
[WebComponentViewSettingsID] [uniqueidentifier] NOT NULL,
[WebViewID] [uniqueidentifier] NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponentViewSettingToViewAssociation_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebComponentViewSettingToViewAssociation_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebComponentViewSettingToViewAssociation_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSettingToViewAssociation_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebComponentViewSettingToViewAssociation_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSettingToViewAssociation] ADD CONSTRAINT [PK_WebComponentViewSettingToViewAssociation] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSettingToViewAssociation] ADD CONSTRAINT [FK_WebComponentViewSettingToViewAssociation_WebComponentViewSettings] FOREIGN KEY ([WebComponentViewSettingsID]) REFERENCES [dbo].[WebComponentViewSettings] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

CREATE TABLE [dbo].[WebComponentViewSubSettingToViewSubAssociation]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingToViewSubAssociation_ID] DEFAULT (newsequentialid()),
[WebComponentViewSubSettingsID] [uniqueidentifier] NOT NULL,
[WebViewSubID] [uniqueidentifier] NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingToViewSubAssociation_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingToViewSubAssociation_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingToViewSubAssociation_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentViewSubSettingToViewSubAssociation_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebComponentViewSubSettingToViewSubAssociation_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentViewSubSettingToViewSubAssociation] ADD CONSTRAINT [PK_WebComponentViewSubSettingToViewSubAssociation] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

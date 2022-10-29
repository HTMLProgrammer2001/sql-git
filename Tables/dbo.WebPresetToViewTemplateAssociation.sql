CREATE TABLE [dbo].[WebPresetToViewTemplateAssociation]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebPresetToViewTemplateAssociation_ID2] DEFAULT (newsequentialid()),
[WebPresetID] [uniqueidentifier] NULL,
[WebViewID] [uniqueidentifier] NULL,
[WebViewTemplateID] [uniqueidentifier] NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebPresetToViewTemplateAssotiation_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebPresetToViewTemplateAssotiation_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebPresetToViewTemplateAssotiation_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebPresetToViewTemplateAssotiation_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebPresetToViewTemplateAssotiation_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPresetToViewTemplateAssociation] ADD CONSTRAINT [PK_WebPresetToViewTemplateAssociation] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPresetToViewTemplateAssociation] ADD CONSTRAINT [FK_WebPresetToViewTemplateAssociation_WebPreset] FOREIGN KEY ([WebPresetID]) REFERENCES [dbo].[WebPreset] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebPresetToViewTemplateAssociation] ADD CONSTRAINT [FK_WebPresetToViewTemplateAssociation_WebView] FOREIGN KEY ([WebViewID]) REFERENCES [dbo].[WebView] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebPresetToViewTemplateAssociation] ADD CONSTRAINT [FK_WebPresetToViewTemplateAssociation_WebViewTemplate] FOREIGN KEY ([WebViewTemplateID]) REFERENCES [dbo].[WebViewTemplate] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

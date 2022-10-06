CREATE TABLE [dbo].[WebViewTemplateToViewSubTemplateAssociation]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebViewTemplateID] [bigint] NOT NULL,
[WebViewSubID] [bigint] NOT NULL,
[WebViewSubTemplateID] [bigint] NULL,
[IsUse] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewTempateToViewSubTemplateAssociation_IsUse] DEFAULT ('Y'),
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebViewTempateToViewSubTemplateAssociation_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebViewTempateToViewSubTemplateAssociation_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebViewTempateToViewSubTemplateAssociation_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebViewTempateToViewSubTemplateAssociation_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebViewTempateToViewSubTemplateAssociation_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewTemplateToViewSubTemplateAssociation] ADD CONSTRAINT [PK_WebViewTemplateToViewSubTemplateAssociation] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebViewTemplateToViewSubTemplateAssociation] ADD CONSTRAINT [FK_WebViewTempateToViewSubTemplateAssociation_WebViewSub] FOREIGN KEY ([WebViewSubID]) REFERENCES [dbo].[WebViewSub] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebViewTemplateToViewSubTemplateAssociation] ADD CONSTRAINT [FK_WebViewTempateToViewSubTemplateAssociation_WebViewSubTemplate] FOREIGN KEY ([WebViewSubTemplateID]) REFERENCES [dbo].[WebViewSubTemplate] ([ID])
GO
ALTER TABLE [dbo].[WebViewTemplateToViewSubTemplateAssociation] ADD CONSTRAINT [FK_WebViewTempateToViewSubTemplateAssociation_WebViewTemplate] FOREIGN KEY ([WebViewTemplateID]) REFERENCES [dbo].[WebViewTemplate] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

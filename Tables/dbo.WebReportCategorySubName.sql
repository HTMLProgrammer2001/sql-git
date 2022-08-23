CREATE TABLE [dbo].[WebReportCategorySubName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebReportCategorySubID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebReportCategorySubName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebReportCategorySubName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebReportCategorySubName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReportCategorySubName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebReportCategorySubName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategorySubName] ADD CONSTRAINT [PK_WebReportCategorySubName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategorySubName] ADD CONSTRAINT [FK_WebReportCategorySubName_Language] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[WebReportCategorySubName] ADD CONSTRAINT [FK_WebReportCategorySubName_WebReportCategorySub] FOREIGN KEY ([WebReportCategorySubID]) REFERENCES [dbo].[WebReportCategorySub] ([ID])
GO

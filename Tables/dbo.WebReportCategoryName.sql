CREATE TABLE [dbo].[WebReportCategoryName]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReportCategoryName_ID] DEFAULT (newsequentialid()),
[WebReportCategoryID] [uniqueidentifier] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NULL CONSTRAINT [DF_WebReportCategoryName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebReportCategoryName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebReportCategoryName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReportCategoryName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebReportCategoryName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategoryName] ADD CONSTRAINT [PK_WebReportCategoryName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategoryName] ADD CONSTRAINT [FK_WebReportCategoryName_Language] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Language] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebReportCategoryName] ADD CONSTRAINT [FK_WebReportCategoryName_WebReportCategory] FOREIGN KEY ([WebReportCategoryID]) REFERENCES [dbo].[WebReportCategory] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

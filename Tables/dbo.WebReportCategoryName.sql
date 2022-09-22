CREATE TABLE [dbo].[WebReportCategoryName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebReportCategoryID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebReportCategoryName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebReportCategoryName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebReportCategoryName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReportCategoryName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebReportCategoryName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[ID2] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReportCategoryName_ID] DEFAULT (newsequentialid()),
[WebReportCategoryID2] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategoryName] ADD CONSTRAINT [PK_WebReportCategoryName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategoryName] ADD CONSTRAINT [FK_WebReportCategoryName_Language] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[WebReportCategoryName] ADD CONSTRAINT [FK_WebReportCategoryName_WebReportCategory] FOREIGN KEY ([WebReportCategoryID]) REFERENCES [dbo].[WebReportCategory] ([ID])
GO

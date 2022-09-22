CREATE TABLE [dbo].[WebReport]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Code] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Rdl] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[WebReportCategoryID] [bigint] NOT NULL,
[WebReportCategorySubID] [bigint] NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebReport_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebReport_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebReport_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReport_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebReport_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[LanguageID] [bigint] NOT NULL,
[ID2] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReport_ID] DEFAULT (newsequentialid()),
[WebReportCategoryID2] [uniqueidentifier] NULL,
[WebReportCategorySubID2] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReport] ADD CONSTRAINT [PK_WebReport] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReport] ADD CONSTRAINT [FK_WebReport_Language] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[WebReport] ADD CONSTRAINT [FK_WebReport_WebReportCategory] FOREIGN KEY ([WebReportCategoryID]) REFERENCES [dbo].[WebReportCategory] ([ID])
GO
ALTER TABLE [dbo].[WebReport] ADD CONSTRAINT [FK_WebReport_WebReportCategorySub] FOREIGN KEY ([WebReportCategorySubID]) REFERENCES [dbo].[WebReportCategorySub] ([ID])
GO

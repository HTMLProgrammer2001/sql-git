CREATE TABLE [dbo].[WebReportCategorySub]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReportCategorySub_ID] DEFAULT (newsequentialid()),
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[WebReportCategoryID] [uniqueidentifier] NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebReportCategorySub_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebReportCategorySub_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebReportCategorySub_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReportCategorySub_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebReportCategorySub_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategorySub] ADD CONSTRAINT [PK_WebReportCategorySub_1] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategorySub] ADD CONSTRAINT [FK_WebReportCategorySub_WebReportCategory] FOREIGN KEY ([WebReportCategoryID]) REFERENCES [dbo].[WebReportCategory] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

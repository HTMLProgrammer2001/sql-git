CREATE TABLE [dbo].[WebReportCategorySub]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[WebReportCategoryID] [bigint] NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebReportCategorySub_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebReportCategorySub_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebReportCategorySub_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReportCategorySub_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebReportCategorySub_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[ID2] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebReportCategorySub_ID] DEFAULT (newsequentialid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategorySub] ADD CONSTRAINT [PK_WebReportCategorySub] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebReportCategorySub] ADD CONSTRAINT [FK_WebReportCategorySub_WebReportCategorySub] FOREIGN KEY ([WebReportCategoryID]) REFERENCES [dbo].[WebReportCategory] ([ID])
GO

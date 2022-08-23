CREATE TABLE [dbo].[WebTranslateTypeEnum]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[SortOrder] [bigint] NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebTranslateTypeEnum_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebTranslateTypeEnum_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebTranslateTypeEnum_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebTranslateTypeEnum_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebTranslateTypeEnum_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslateTypeEnum] ADD CONSTRAINT [PK_WebTranslateTypeEnum] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

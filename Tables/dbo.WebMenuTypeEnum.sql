CREATE TABLE [dbo].[WebMenuTypeEnum]
(
[ID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[SortOrder] [bigint] NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebMenuTypeEnum_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebMenuTypeEnum_Version] DEFAULT ((1)),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebMenuTypeEnum_GUID] DEFAULT (newid()),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebMenuTypeEnum_IsDeleted] DEFAULT ('N'),
[AppType] [int] NULL CONSTRAINT [DF_WebMenuTypeEnum_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMenuTypeEnum] ADD CONSTRAINT [PK_WebMenuTypeEnum] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

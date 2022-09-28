CREATE TABLE [dbo].[WebErrorGroupEnum]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebErrorGroupEnum_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebErrorGroupEnum_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebErrorGroupEnum_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebErrorGroupEnum_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebErrorGroupEnum_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebErrorGroupEnum_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebErrorGroupEnum] ADD CONSTRAINT [PK_WebErrorGroupEnum] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

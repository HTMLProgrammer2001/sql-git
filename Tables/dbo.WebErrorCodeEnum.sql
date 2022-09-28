CREATE TABLE [dbo].[WebErrorCodeEnum]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[ErrorCode] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebErrorCodeEnum_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebErrorCodeEnum_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebErrorCodeEnum_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebErrorCodeEnum_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebErrorCodeEnum_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebErrorCodeEnum_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebErrorCodeEnum] ADD CONSTRAINT [PK_WebErrorCodeEnum] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

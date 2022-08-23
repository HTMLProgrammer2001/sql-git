CREATE TABLE [dbo].[WebErrorEnum]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebErrorGroupEnumID] [bigint] NOT NULL,
[WebErrorCodeEnumID] [bigint] NOT NULL,
[ErrorMessage] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebErrorEnum_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebErrorEnum_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebErrorEnum_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebErrorEnum_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebErrorEnum_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebErrorEnum] ADD CONSTRAINT [PK_WebErrorEnum] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebErrorEnum] ADD CONSTRAINT [FK_WebErrorEnum_WebErrorCodeEnum] FOREIGN KEY ([WebErrorCodeEnumID]) REFERENCES [dbo].[WebErrorCodeEnum] ([ID])
GO
ALTER TABLE [dbo].[WebErrorEnum] ADD CONSTRAINT [FK_WebErrorEnum_WebErrorGroupEnum] FOREIGN KEY ([WebErrorGroupEnumID]) REFERENCES [dbo].[WebErrorGroupEnum] ([ID])
GO

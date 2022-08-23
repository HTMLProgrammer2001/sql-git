CREATE TABLE [dbo].[WebFileStore]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Url] [nvarchar] (500) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebFileStore_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebFileStore_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebFileStore_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebFileStore_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebFileStore_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebFileStore] ADD CONSTRAINT [PK_WebFileStore] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebFileStore] ADD CONSTRAINT [FK_WebFileStore_WebFileStore] FOREIGN KEY ([ID]) REFERENCES [dbo].[WebFileStore] ([ID])
GO

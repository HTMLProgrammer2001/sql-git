CREATE TABLE [dbo].[WebMockobject]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebMockobject_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebMockobject_Version] DEFAULT ((1)),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebMockobject_GUID] DEFAULT (newid()),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebMockobject_IsDeleted] DEFAULT ('N'),
[AppType] [int] NULL CONSTRAINT [DF_WebMockobject_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMockobject] ADD CONSTRAINT [PK_WebMockobject] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

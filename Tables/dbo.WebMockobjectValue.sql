CREATE TABLE [dbo].[WebMockobjectValue]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebMockobjectID] [bigint] NOT NULL,
[UID] [bigint] NULL,
[Code] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[PropertyNumber] [bigint] NULL,
[PropertyString] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[PropertyBoolean] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[PropertyJson] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[SortOrder] [bigint] NOT NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebMockobjectValue_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebMockobjectValue_Version] DEFAULT ((1)),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebMockobjectValue_GUID] DEFAULT (newid()),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebMockobjectValue_IsDeleted] DEFAULT ('N'),
[AppType] [int] NULL CONSTRAINT [DF_WebMockobjectValue_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebMockobjectValue_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMockobjectValue] ADD CONSTRAINT [PK_WebMockobjectValue] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMockobjectValue] ADD CONSTRAINT [FK_WebMockobjectValue_WebMockobject] FOREIGN KEY ([WebMockobjectID]) REFERENCES [dbo].[WebMockobject] ([ID]) ON DELETE CASCADE
GO

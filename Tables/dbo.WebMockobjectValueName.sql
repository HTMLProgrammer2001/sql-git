CREATE TABLE [dbo].[WebMockobjectValueName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebMockobjectValueID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebMockobjectValueName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebMockobjectValueName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebMockobjectValueName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebMockobjectValueName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebMockobjectValueName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[ID2] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebMockobjectValueName_ID] DEFAULT (newsequentialid()),
[WebMockobjectValueID2] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMockobjectValueName] ADD CONSTRAINT [PK_WebMockobjectValueName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMockobjectValueName] ADD CONSTRAINT [FK_WebMockobjectValueName_WebMockobjectValue] FOREIGN KEY ([WebMockobjectValueID]) REFERENCES [dbo].[WebMockobjectValue] ([ID]) ON DELETE CASCADE
GO

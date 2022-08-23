CREATE TABLE [dbo].[WebComponentName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebComponentID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Title] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Description] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponentName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebComponentName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebComponentName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponentName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebComponentName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentName] ADD CONSTRAINT [PK_WebComponentName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponentName] ADD CONSTRAINT [FK_WebComponentName_WebComponent] FOREIGN KEY ([WebComponentID]) REFERENCES [dbo].[WebComponent] ([ID]) ON DELETE CASCADE
GO

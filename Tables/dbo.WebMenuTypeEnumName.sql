CREATE TABLE [dbo].[WebMenuTypeEnumName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebMenuTypeEnumID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebMenuTypeEnumName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebMenuTypeEnumName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebMenuTypeEnumName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebMenuTypeEnumName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebMenuTypeEnumName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMenuTypeEnumName] ADD CONSTRAINT [PK_WebMenuTypeEnumName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebMenuTypeEnumName] ADD CONSTRAINT [FK_WebMenuTypeEnumName_WebMenuTypeEnum] FOREIGN KEY ([WebMenuTypeEnumID]) REFERENCES [dbo].[WebMenuTypeEnum] ([ID]) ON DELETE CASCADE
GO

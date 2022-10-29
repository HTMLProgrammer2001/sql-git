CREATE TABLE [dbo].[WebErrorEnumName]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebErrorEnumName_ID2] DEFAULT (newsequentialid()),
[WebErrorEnumID] [uniqueidentifier] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[ErrorMessage] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebErrorEnumName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebErrorEnumName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebErrorEnumName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebErrorEnumName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebErrorEnumName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebErrorEnumName] ADD CONSTRAINT [PK_WebErrorEnumName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebErrorEnumName] ADD CONSTRAINT [FK_WebErrorEnumName_Language] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Language] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebErrorEnumName] ADD CONSTRAINT [FK_WebErrorEnumName_WebErrorEnumName] FOREIGN KEY ([WebErrorEnumID]) REFERENCES [dbo].[WebErrorEnum] ([ID])
GO

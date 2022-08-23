CREATE TABLE [dbo].[WebTranslateTypeEnumName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebTranslateTypeEnumID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebTranslateTypeEnumName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebTranslateTypeEnumName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebTranslateTypeEnumName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebTranslateTypeEnumName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebTranslateTypeEnumName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslateTypeEnumName] ADD CONSTRAINT [PK_WebTranslateTypeEnumName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslateTypeEnumName] ADD CONSTRAINT [FK_WebTranslateTypeEnumName_WebTranslateTypeEnum] FOREIGN KEY ([WebTranslateTypeEnumID]) REFERENCES [dbo].[WebTranslateTypeEnum] ([ID]) ON DELETE CASCADE
GO

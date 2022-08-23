CREATE TABLE [dbo].[WebIconSvgEnumName]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebIconSvgEnumID] [bigint] NOT NULL,
[LanguageID] [bigint] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebIconSvgEnumName_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebIconSvgEnumName_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebIconSvgEnumName_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebIconSvgEnumName_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebIconSvgEnumName_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebIconSvgEnumName] ADD CONSTRAINT [PK_WebIconSvgEnumName] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebIconSvgEnumName] ADD CONSTRAINT [FK_WebIconSvgEnumName_WebIconSvgEnum] FOREIGN KEY ([WebIconSvgEnumID]) REFERENCES [dbo].[WebIconSvgEnum] ([ID]) ON DELETE CASCADE
GO

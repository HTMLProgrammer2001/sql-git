CREATE TABLE [dbo].[WebTranslate]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebTranslateID] [bigint] NULL,
[WebTranslateTypeEnumID] [bigint] NOT NULL,
[WebTranslateID_BaseTree] [bigint] NULL,
[LevelTree] [int] NOT NULL,
[FragmentKey] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL,
[TranslateKey] [nvarchar] (512) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebTranslate_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebTranslate_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebTranslate_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebTranslate_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebTranslate_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebTranslate_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslate] ADD CONSTRAINT [PK_WebTranslate] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebTranslate] ADD CONSTRAINT [FK_WebTranslate_WebTranslate_BaseTree] FOREIGN KEY ([WebTranslateID_BaseTree]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebTranslate] ADD CONSTRAINT [FK_WebTranslate_WebTranslate_Tree] FOREIGN KEY ([WebTranslateID]) REFERENCES [dbo].[WebTranslate] ([ID])
GO
ALTER TABLE [dbo].[WebTranslate] ADD CONSTRAINT [FK_WebTranslate_WebTranslateTypeEnum] FOREIGN KEY ([WebTranslateTypeEnumID]) REFERENCES [dbo].[WebTranslateTypeEnum] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

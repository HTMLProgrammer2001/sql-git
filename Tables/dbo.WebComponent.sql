CREATE TABLE [dbo].[WebComponent]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[WebIconSvgEnumID] [uniqueidentifier] NULL,
[Code] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[Title] [nvarchar] (256) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[ComponentHtml] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[ComponentFormBuilderHtml] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[ComponentPreviewHtml] [nvarchar] (max) COLLATE SQL_Latin1_General_CP850_CI_AS NULL,
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponent_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebComponent_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebComponent_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebComponent_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebComponent_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebComponent_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponent] ADD CONSTRAINT [PK_WebComponent] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebComponent] ADD CONSTRAINT [FK_WebComponent_WebIconSvgEnum] FOREIGN KEY ([WebIconSvgEnumID]) REFERENCES [dbo].[WebIconSvgEnum] ([ID]) ON DELETE SET NULL ON UPDATE SET NULL
GO

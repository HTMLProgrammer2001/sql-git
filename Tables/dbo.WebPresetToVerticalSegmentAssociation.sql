CREATE TABLE [dbo].[WebPresetToVerticalSegmentAssociation]
(
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebVerticalSegmentPresetAssociation_ID] DEFAULT (newsequentialid()),
[VerticalID] [bigint] NULL,
[SegmentID] [bigint] NULL,
[WebPresetID] [uniqueidentifier] NOT NULL,
[SortOrder] [bigint] NOT NULL,
[IsDefault] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebVerticalSegmentPresetAssociation_IsDefault] DEFAULT ('N'),
[UpdateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebVerticalSegmentPresetAssociation_UpdateDate] DEFAULT (sysdatetimeoffset()),
[Version] [int] NOT NULL CONSTRAINT [DF_WebVerticalSegmentPresetAssociation_Version] DEFAULT ((1)),
[IsDeleted] [char] (1) COLLATE SQL_Latin1_General_CP850_CI_AS NOT NULL CONSTRAINT [DF_WebVerticalSegmentPresetAssociation_IsDeleted] DEFAULT ('N'),
[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WebVerticalSegmentPresetAssociation_GUID] DEFAULT (newid()),
[AppType] [int] NULL CONSTRAINT [DF_WebVerticalSegmentPresetAssociation_AppType] DEFAULT ((1)),
[UpdateUser] [bigint] NULL,
[CreateDate] [datetimeoffset] NOT NULL CONSTRAINT [DF_WebVerticalSegmentPresetAssociation_CreateDate] DEFAULT (sysdatetimeoffset())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPresetToVerticalSegmentAssociation] ADD CONSTRAINT [PK_WebVerticalSegmentPresetAssociation] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebPresetToVerticalSegmentAssociation] ADD CONSTRAINT [FK_WebVerticalSegmentPresetAssociation_WebPreset] FOREIGN KEY ([WebPresetID]) REFERENCES [dbo].[WebPreset] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

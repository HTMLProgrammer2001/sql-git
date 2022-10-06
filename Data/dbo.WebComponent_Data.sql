SET IDENTITY_INSERT [dbo].[WebComponent] ON
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (7, '0d69f0a0-5c45-ed11-8e5c-4ccc6a2bb6d6', N'edit-text-form-element', N'DONT TOUCH. Edit', N'DONT TOUCH. Edit', N'                ', N'<div *ngIf="self.settings?.is">
      <cr-control-edit
        [dataLabel]="!self.settings.isUseTranslateKey ? self.currentText : null"
        [translateKeys]="self.settings.isUseTranslateKey ? self.settings.translateKey : null"
        [customClass]="self.settings.classes"
        [isDisabled]="self.settings.isDisabled"
      ></cr-control-edit>

      <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-control-edit 
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [customClass]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-07-27 12:43:35.6200000 +00:00', 27, N'N', '5b82e14c-02ff-43b6-b188-621def5bb184', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (9, '0b69f0a0-5c45-ed11-8e5c-4ccc6a2bb6d6', N'checkbox-form-element', N'DONT TOUCH. Checkbox', N'DONT TOUCH. Checkbox', N'', N'<div *ngIf="self.settings?.is">
    <cr-checkbox-control 
        [dataLabel]="!self.settings.isUseTranslateKey ? self.currentText : null"
        [translateKeys]="self.settings.isUseTranslateKey ? self.settings.translateKey : null"
        [isDisabled]="self.settings.isDisabled"
        [class]="self.settings.classes"
    ></cr-checkbox-control>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-checkbox-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-03-10 13:04:31.2100000 +00:00', 10, N'N', '3a91ba24-e71f-4bf3-9d25-19c13e1b1ff6', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (10, NULL, N'grid-form-element', N'DONT TOUCH Grid', N'DONT TOUCH. Grid', N'test', N'<div class="cr-grid-wrapper-new" *ngIf="self.settings?.is">
    <cr-edit-grid-server-paging 
        [useCache]="false" 
        [columnSettings]="self.settings.columns" 
        [dataSource]="self.settings.dataSource"
        [class]="self.settings.classes"
        [allowMultiSelect]="self.settings.allowMultiSelect"
        [uniqueField]="self.settings.uniqueField"
    ></cr-edit-grid-server-paging>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging 
        [useCache]="false" 
        [columnSettings]=''{{columns}}''
        [dataSource]=''{{dataSource}}''
        [class]=''{{classes}}''
        [allowMultiSelect]="{{allowMultiSelect}}"
        [uniqueField]="{{uniqueField}}"
    ></cr-edit-grid-server-paging>
</div>', '2022-03-10 13:04:57.0366667 +00:00', 8, N'N', '015d05d9-612f-44d7-b959-55eab108ac9b', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (11, '0e69f0a0-5c45-ed11-8e5c-4ccc6a2bb6d6', N'button-form-element', N'DONT TOUCH. Button', N'DONT TOUCH. Button', N'test', N'<div *ngIf="self.settings?.is">
      <cr-button-control
        [buttonTemplateType]="self.settings.buttonType"
        [text]="!self.settings.isUseTranslateKey ? self.currentText : null"
        [textTranslateKey]="self.settings.isUseTranslateKey ? self.settings.translateKey : null"
        [icon]="self.settings.icon"
        [classArray]="self.settings.classes"
        [width]="self.settings.width"
        [height]="self.settings.height"
      ></cr-button-control>

      <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
    </div>', N'<cr-button-control 
    [buttonTemplateType]="{{buttonTemplateType}}"
    [text]="{{label}}"
    [textTranslateKey]="{{translateKey}}"
    [classArray]=''{{classes}}''
    [width]="{{width}}"
    [height]="{{height}}"
    [icon]="{{icon}}"
></cr-button-control>', '2022-03-10 13:05:11.6600000 +00:00', 7, N'N', '65187594-e093-437e-a1cf-10a9e3336760', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (13, NULL, N'svg-icon-form-element', N'DONT TOUCH. Svg icon', N'DONT TOUCH. Svg icon', N'Test', N'<div *ngIf="self.settings?.is">
    <cr-svg-icon-control 
        [iconName]="self.settings.iconName" 
        [width]="self.settings.width" 
        [height]="self.settings.height"
        [class]="self.settings.classes"
    ></cr-svg-icon-control>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-svg-icon-control 
    [iconName]="{{icon}}" 
    [width]="{{width}}" 
    [height]="{{height}}"
    [class]=''{{classes}}''
></cr-svg-icon-control>', '2022-03-10 13:05:21.3833333 +00:00', 4, N'N', '4f96a612-5b20-4cbc-8a03-f75cfef127fe', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (14, NULL, N'title-header-form-element', N'DONT TOUCH. Title header', N'DONT TOUCH. Title header', N'<div>Test</div>', N'<div *ngIf="self.settings?.is">
    <cr-title-header 
        [titleTranslateKey]="self.settings.isUseTranslateKey ? self.settings.translateKey : null" 
        [title]="!self.settings.isUseTranslateKey ? self.currentText : null"
        [additionalTranslateKeys]="self.settings.additionalTranslateKey || ''COMMON.NEW''" 
        [buttonSettings]="self.settings.elements"
        [class]="self.settings.rawClass"
    ></cr-title-header>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-title-header 
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [additionalTranslateKeys]="{{additionalTranslateKey}} || ''COMMON.NEW''" 
    [buttonSettings]=''{{elements}}''
    [class]=''{{classes}}''
></cr-title-header>', '2022-03-10 13:05:31.5966667 +00:00', 8, N'N', '39e3e066-d8ed-4fac-bd20-9a524001835c', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (15, NULL, N'smart-dropdown-form-element', N'DONT TOUCH. Smart dropdown', N'DONT TOUCH. Smart dropdown', N'<div>Test</div>', N'<div *ngIf="self.settings?.is">
    <cr-dropdown-smart-control
        [labelTranslateKey]="self.settings.isUseTranslateKey ? self.settings.translateKey : null" 
        [label]="!self.settings.isUseTranslateKey ? self.currentText : null"
        [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
        [valueField]="''id''"
        [dataTranslateKeyField]="''translateKey''"
        [class]="self.settings.rawClass"
    ></cr-dropdown-smart-control>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-dropdown-smart-control
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}" 
    [valueField]="''id''"
    [dataTranslateKeyField]="''translateKey''" 
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-03-10 13:05:43.9100000 +00:00', 6, N'N', '3b0f3673-5ab2-40bf-b4f9-d6b45ede15ad', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (10016, NULL, N'numeric-form-element', N'Numeric', N'Numeric', N'', N'<div *ngIf="self.settings?.is">
      <cr-numeric-control
        [dataLabel]="!self.settings.isUseTranslateKey ? self.currentText : null"
        [translateKeys]="self.settings.isUseTranslateKey ? self.settings.translateKey : null"
        [customClass]="self.settings.classes"
        [isDisabled]="self.settings.isDisabled"
        [format]="self.settings.format"
        [decimals]="self.settings.decimals"
        [min]="self.settings.min"
        [max]="self.settings.max"
        [autoCorrectMinMax]="self.settings.autoCorrectMinMax"
      ></cr-numeric-control>

      <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-numeric-control 
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}" 
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-10 13:06:05.3333333 +00:00', 3, N'N', 'fe88fb6c-7070-41bf-9093-49a110b4fe5c', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (10017, NULL, N'date-picker-form-element', N'Date picker', N'Date picker', N'', N'<div *ngIf="self.settings?.is">
      <cr-control-datepicker
        [dataLabel]="!self.settings.isUseTranslateKey ? self.currentText : null"
        [translateKeys]="self.settings.isUseTranslateKey ? self.settings.translateKey : null"
        [class]="self.settings.classes"
        [isDisabled]="self.settings.isDisabled"
      ></cr-control-datepicker>

      <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-control-datepicker
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-03-10 13:06:14.9500000 +00:00', 3, N'N', '947d4c8f-bf00-4c2e-b0dc-150129ff8036', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (10018, NULL, N'partner-mailing-categories-form-element', N'Partner mailing categories', N'Partner mailing categories', N'', N'<div *ngIf="self.settings.is">
    <cr-partner-mailing-category-control 
        [editable]="self.settings.editable"
        [class]="self.settings.classes"
        [editIcon]="self.settings.editIcon"
        [isMock]="true"
    ></cr-partner-mailing-category-control>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-partner-mailing-category-control 
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
    [isMock]="true"
></cr-partner-mailing-category-control>', '2022-03-10 13:06:55.6966667 +00:00', 5, N'N', 'f31a6040-fa5e-40eb-81cd-ac53c2789575', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (10019, NULL, N'panel-form-element', N'Panel', N'Panel', N'', N'test', N'test', '2022-03-04 15:34:28.1366667 +00:00', 2, N'Y', 'a495fd58-2fdb-4d2c-af79-ed5f5e69b146', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20016, NULL, N'partner-groups-form-element', N'Partner groups', N'Partner groups', N'', N'<div *ngIf="self.settings.is">
    <cr-partner-group-control
        [editable]="self.settings.editable"
        [class]="self.settings.classes"
        [editIcon]="self.settings.editIcon"
        [isMock]="true"
    ></cr-partner-group-control>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-partner-group-control
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
    [isMock]="true"
></cr-partner-group-control>', '2022-03-10 13:07:32.3933333 +00:00', 5, N'N', '4bb23b52-b27b-4d99-8f48-b6ff5ed787df', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20017, NULL, N'partner-addresses-form-element', N'Addresses', N'Addresses', N'', N'<div *ngIf="self.settings.is">
    <cr-partner-address-list
        [editable]="self.settings.editable"
        [class]="self.settings.classes"
        [isMock]="true"
    ></cr-partner-address-list>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-partner-address-list
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [isMock]="true"
></cr-partner-address-list>', '2022-03-10 13:08:07.8533333 +00:00', 4, N'N', '76eb972c-8f6c-4a31-a79b-2aa844e7d713', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20018, NULL, N'partner-cards-list-form-element', N'Partner cards list', N'Partner cards list', N'', N'<div *ngIf="self.settings.is">
    <cr-partner-cards-list
        [editable]="self.settings.editable"
        [class]="self.settings.classes"
        [isMock]="true"
    ></cr-partner-cards-list>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-partner-cards-list
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [isMock]="true"
></cr-partner-cards-list>', '2022-03-10 13:08:37.1433333 +00:00', 5, N'N', 'ad5c01e0-ff97-4fe4-bf83-88d51e719341', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20019, NULL, N'text-area-form-element', N'Text area', N'Text area', N'', N'<div *ngIf="self.settings?.is">
      <cr-text-area-control
        [dataLabel]="!self.settings.isUseTranslateKey ? self.currentText : null"
        [translateKeys]="self.settings.isUseTranslateKey ? self.settings.translateKey : null"
        [class]="self.settings.classes"
        [isDisabled]="self.settings.isDisabled"
        [rows]="self.settings.rows"
        [maxlength]="self.settings.maxLength"
      ></cr-text-area-control>

      <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-text-area-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
    [rows]="{{rows}}"
    [maxlength]="{{maxLength}}"
></cr-text-area-control>', '2022-03-10 13:08:52.2500000 +00:00', 3, N'N', 'ddd63e37-dadc-4f2a-a6a8-b86a23eb7f13', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20020, NULL, N'partner-loyalty-points-form-element', N'Partner loyalty points', N'Partner loyalty points', N'', N'<div *ngIf="self.settings.is">
    <cr-partner-point 
        [isMock]="true"
        [class]="self.settings.classes"
    ></cr-partner-point>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-partner-point
    [class]=''{{classes}}''
    [isMock]="true"
></cr-partner-point>', '2022-03-10 13:09:34.5700000 +00:00', 2, N'N', 'cf1d0014-192d-4c48-8f8f-deb4d972b8d6', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20021, NULL, N'partner-point-history-form-element', N'Point history', N'Point history', N'', N'<div *ngIf="self.settings.is">
    <cr-partner-point-history
        [isMock]="true"
        [class]="self.settings.classes"
    ></cr-partner-point-history>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-partner-point-history
    [class]=''{{classes}}''
    [isMock]="true"
></cr-partner-point-history>', '2022-03-10 13:09:58.4166667 +00:00', 2, N'N', 'e63b3f69-ec3c-4ac5-9e46-78758babaae2', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20022, NULL, N'partner-transaction-history-form-element', N'Partner transaction history', N'Partner transaction history', N'', N'<div *ngIf="self.settings.is">
    <cr-partner-transaction-history
        [isMock]="true"
        [class]="self.settings.classes"
    ></cr-partner-transaction-history>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-partner-transaction-history
    [class]=''{{classes}}''
    [isMock]="true"
></cr-partner-transaction-history>', '2022-03-10 13:10:38.7133333 +00:00', 2, N'N', '3d2acf37-bd8a-4722-8e88-9ce7579806f8', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20023, NULL, N'partner-discount-budget-form-element', N'Partner discount budget', N'Partner discount budget', N'', N'<div>
    <cr-partner-discount-budget
        *ngIf="self.settings.is"
        [isMock]="true"
        [class]="self.settings.classes"
    ></cr-partner-discount-budget>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-partner-discount-budget
    [class]=''{{classes}}''
    [isMock]="true"
></cr-partner-discount-budget>', '2022-03-10 13:11:00.5266667 +00:00', 2, N'N', 'e86a3741-6d99-428d-8d7e-86610f5a56f2', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20024, NULL, N'smart-combobox-form-element', N'Smart combobox', N'Smart combobox', N'', N'<div *ngIf="self.settings?.is">
    <cr-combobox-smart-control
        [translateKeys]="self.settings.isUseTranslateKey ? self.settings.translateKey : null" 
        [dataLabel]="!self.settings.isUseTranslateKey ? self.currentText : null"
        [valueField]="''id''"
        [class]="self.settings.rawClass"
        [useCache]="false"
    ></cr-combobox-smart-control>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>
', N'<cr-combobox-smart-control
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-03-10 13:11:15.5300000 +00:00', 6, N'N', 'f126ea3e-9954-4143-8376-a9981c1edbbc', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (20025, '0669f0a0-5c45-ed11-8e5c-4ccc6a2bb6d6', N'test', N'Test 1', N'test 2', N'', N'1', N'1', '2022-04-13 12:54:09.0200000 +00:00', 2, N'Y', 'e60bd583-14d8-40dd-b3d3-039ad6bb3e21', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (30025, NULL, N'udf-list-form-element', N'DONT TOUCH. UDF list', N'DONT TOUCH.  UDF list', N'', N'<div *ngIf="self.settings.is">
    <cr-udf-list
        [isMock]="true"
        [class]="self.settings.classes"
    ></cr-udf-list>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-udf-list
    [class]=''{{classes}}''
    [isMock]="true"
></cr-udf-list>', '2022-08-11 14:56:37.2166667 +00:00', 5, N'N', '40bfd43a-ae4d-4b49-a938-1646271c1288', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponent] ([ID], [WebIconSvgEnumID], [Code], [Name], [Title], [ComponentHtml], [ComponentFormBuilderHtml], [ComponentPreviewHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (30026, NULL, N'partner-contact-persons-list-form-element', N'Partner contact persons list', N'Partner contact persons list', N'', N'<div *ngIf="self.settings.is">
    <cr-partner-contact-persons-list
        [isMock]="true"
        [class]="self.settings.classes"
    ></cr-partner-contact-persons-list>

    <div class="cr-form-builder-component-type">{{self.settings.is}}</div>
</div>', N'<cr-partner-contact-persons-list
    [class]=''{{classes}}''
    [isMock]="true"
></cr-partner-contact-persons-list>', '2022-07-15 18:34:42.6686508 +03:00', 1, N'N', '6c836065-4876-4a5e-a0f9-7779f96eead9', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
SET IDENTITY_INSERT [dbo].[WebComponent] OFF

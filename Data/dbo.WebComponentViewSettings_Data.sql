INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('993fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-code', N'Partner code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PARTNER_CODE"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.partnerCode"
></cr-control-edit>', '2022-08-04 16:36:19.0333333 +00:00', 6, N'N', 'bae28123-7805-4475-a588-1f861260948e', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9a3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-show-deleted', N'Show deleted', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SHOW_DELETED"
    }
}', N'<cr-checkbox-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.partnerListFilter.showDeleted"
></cr-checkbox-control>', '2022-03-02 15:28:22.7366667 +00:00', 6, N'N', 'edb0be6c-f7a4-48ab-88bd-c810caef6b9e', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9b3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-grid', N'Partner list grid', N'{
    "defaultValue": {
        "uniqueField": "id",
        "dataSource": {
            "responseList": [
                {
                    "id": 1,
                    "foo": "Foo 1",
                    "bar": "Bar 1",
                    "zot": "Zot 1"
                },
                {
                    "id": 2,
                    "foo": "Foo 2",
                    "bar": "Bar 2",
                    "zot": "Zot 2"
                },
                {
                    "id": 3,
                    "foo": "Foo 3",
                    "bar": "Bar 3",
                    "zot": "Zot 3"
                },
                {
                    "id": 4,
                    "foo": "Foo 4",
                    "bar": "Bar 4",
                    "zot": "Zot 4"
                },
                {
                    "id": 5,
                    "foo": "Foo 5",
                    "bar": "Bar 5",
                    "zot": "Zot 5"
                }
            ],
            "page": 1,
            "size": 5,
            "totalElements": 5
        },
        "columns": [
            {
                "title": "Foo",
                "field": "foo",
                "type": "text"
            },
            {
                "title": "Bar",
                "field": "bar",
                "type": "text"
            },
            {
                "title": "Zot",
                "field": "zot",
                "type": "text"
            }
        ]
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataCacheName]="''partnerGrid''"
        [dataSource]="self.dataSource"
        [elementName]="''edit-grid-server-paging:Partner_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]="{{classes}}"
      ></cr-edit-grid-server-paging>
</div>', '2022-03-09 14:31:45.3366667 +00:00', 9, N'N', '1dec656c-4f1f-43df-a543-65fada68007f', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9c3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-search', N'Search', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SEARCH",
        "buttonType": "underlined-action-button"
    }
}', N'<cr-button-control 
    [buttonTemplateType]="{{buttonTemplateType}}"
    [text]="{{label}}"
    [textTranslateKey]="{{translateKey}}"
    [classArray]=''{{classes}}''
    [width]="{{width}}"
    [height]="{{height}}"
    [icon]="{{icon}}"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="self.authService.getEndpointAccessGranted(self.EndpointName.partner_GET)"
></cr-button-control>', '2022-10-21 12:03:38.4300000 +00:00', 9, N'N', '535201b7-7a1d-4cf8-a03c-26b690b358b7', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9d3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3b3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-svg-icon', N'Custom svg icon', N'{
    "defaultValue": {
        "iconName": "icon-add",
        "width": 30,
        "height": 30
    }
}', N'<cr-svg-icon-control 
    [iconName]="{{icon}}" 
    [width]="{{width}}" 
    [height]="{{height}}"
    [class]=''{{classes}}''
></cr-svg-icon-control>', '2022-03-02 15:29:21.6200000 +00:00', 4, N'N', '265ed7b0-c8e1-4ed2-a9a3-fc10355fb008', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9e3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.LAST_NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.lastName"
></cr-control-edit>', '2022-03-02 15:29:36.3900000 +00:00', 4, N'N', '07840e40-45f8-4788-87fc-bac348fe0de7', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9f3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-type', N'Partner type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PARTNER_TYPE"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.partnerListFilter.partnerTypeId"
    [contextMenuOperations]="[''copyToClipboard'']"
    [dataCacheName]="''PartnerTypeDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_type''"
    [getListItemsFunction]="self.partnerTypeListFn"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
    [permissionSettings]="{
        isAccessEdit: self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_GET)
    }"
    [textField]="''displayName''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [valueField]="''id''"
    [isDropdownListOpenWhenKeyboardIsPrinted]="true"
    [isDropdownListOverrideEnterKeyBehaviour]="true"
    (onEnterKey)="self.changeFilter()"
></cr-dropdown-smart-control>', '2022-08-26 14:39:53.0566667 +00:00', 16, N'N', '0a350bec-b6c9-4f9c-874a-40188040bf52', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-group', N'Partner group', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PARTNER_GROUP"
    }
}', N'<cr-dropdown-smart-control
    (navigateToEvent)="self.navigateTo($event)"
    [(value)]="self.partnerListFilter.groupId"
    [contextMenuOperations]="[''copyToClipboard'', ''navigateTo'']"
    [dataCacheName]="''PartnerGroupDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_group''"
    [getListItemsFunction]="self.partnerGroupListFn"
    [isCleanListWhenAdditionalParameterChanged]="true"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
    [listItemsFunctionAdditionalParameter]="self.partnerListFilter.partnerTypeId"
    [permissionSettings]="{
        isAccessEdit: self.authService.getEndpointAccessGranted(self.EndpointName.partner__partner_group_GET)
    }"
    [requestDataWhenOpen]="true"
    [textField]="''name''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [valueField]="''id''"
    [isDropdownListOpenWhenKeyboardIsPrinted]="true"
    [isDropdownListOverrideEnterKeyBehaviour]="true"
    (onEnterKey)="self.changeFilter()"
></cr-dropdown-smart-control>
', '2022-08-26 14:41:44.2300000 +00:00', 13, N'N', '652d0315-f613-4536-baa5-c0a9ac819c07', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-phone-number1', N'Phone number1', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PHONE_NUMBER_1"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.phone1"
></cr-control-edit>', '2022-03-02 15:30:49.2266667 +00:00', 4, N'N', '264318a1-9386-49da-9c73-c40ed794b635', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-phone-number2', N'Phone number2', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PHONE_NUMBER_2"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.phone2"
></cr-control-edit>', '2022-03-02 15:31:04.7300000 +00:00', 4, N'N', 'e5690709-3c41-4dc1-81b3-7ee40576cd54', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-email', N'Email', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.EMAIL"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit>', '2022-03-02 15:31:16.3466667 +00:00', 4, N'N', 'cd56ed4b-5302-4b26-9636-595ee656083c', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a43fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-passport', N'Passport', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PASSPORT"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.passport"
></cr-control-edit>', '2022-03-02 15:31:27.7500000 +00:00', 4, N'N', 'fbeeb643-0f39-489f-aa2d-05f59e777289', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a53fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.GRID.TITLE",
        "elements": [
            {
                "appearance": "icon-button",
                "iconSvg": "icon-pin",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-add",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-close",
                "template": "custom"
            }
        ]
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-03-02 15:31:38.3100000 +00:00', 8, N'N', '11598767-d054-4a58-a3f8-791a6c5be80b', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a63fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-code', N'Partner code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.PARTNER_CODE",
        "validationField": "partnerCode"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.validator"
    [validationField]="''partnerCode''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="!self.isNew || {{disabled}}"
></cr-control-edit>', '2022-04-21 12:58:12.3700000 +00:00', 8, N'N', '67829d28-a543-44ae-9ebb-37c511052e6e', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a73fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.FIRST_NAME",
        "isDisabled": false,
        "validationField": "firstName"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.validator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 12:58:22.9100000 +00:00', 7, N'N', 'df850202-cfc8-4c98-8cae-da893ec844d9', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a83fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.LAST_NAME",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 12:58:31.0733333 +00:00', 6, N'N', 'd347fce9-2be0-4967-aa1f-0c1650e3103a', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a93fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-type', N'Partner type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.PARTNER_TYPE",
        "validationField": "partnerTypeId"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Partner_type''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_id_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_GET) 
    }"
    [dataCacheName]="''PartnerTypeDropdownCache''"
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [(value)]="self.partnerDetails.partnerTypeId"
    [textField]="''displayName''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadPartnerTypeForDropdownFn"
    [getListItemsFunction]="self.loadPartnerTypeListForDropdownFn"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''partnerTypeId''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-04-21 12:59:47.7666667 +00:00', 5, N'N', '8e0cd96c-db3a-4205-bb99-581edf5c86a1', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('aa3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-government', N'Government id', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.GOVERNMENT_ID",
        "isDisabled": false,
        "validationField": "govId"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.validator"
    [validationField]="''govId''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:00:16.1600000 +00:00', 6, N'N', 'cfb5802a-83b2-4aa8-a5ff-fed13b69c613', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ab3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-balance', N'Balance', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.BALANCE"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 15:52:42.5766667 +00:00', 3, N'N', 'a6804182-7792-48cc-b3f2-973b1b12461f', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ac3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.TITLE",
        "elements": [
            {
                "appearance": "icon-button",
                "iconSvg": "icon-delete",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-refresh",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-add",
                "template": "custom"
            },
            {
                "appearance": "primary-button",
                "nameTranslateKey": "COMMON.BUTTON.SAVE",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-close",
                "template": "custom"
            }
        ]
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>', '2022-03-09 15:19:39.4266667 +00:00', 3, N'N', 'a6016c31-0e81-41a3-8b0a-53340265ba27', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ad3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-gender', N'Gender', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.GENDER"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Gender''"
    [dataCacheName]="''PartnerGenderDropdownCache''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpoints[self.EndpointName.partner_POST]?.isAccessGranted :
            self.authService.endpoints[self.EndpointName.partner_id_PUT]?.isAccessGranted
        }"
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [(value)]="self.partnerDetails.gender"
    [getListItemsFunction]="self.getGenderTypeDropdownList$"
    [getOneItemFunction]="self.getGenderItemDropdown$"
    [valueField]="''code''"
    [textField]="''name''"
    [dataTranslateKeyField]="''translateKey''"
    [unselectedItemValue]="{code: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''>
</cr-dropdown-smart-control>', '2022-08-19 14:28:07.1333333 +00:00', 8, N'N', '5c960a9a-9eed-49cb-bbe0-e9ee08e4e387', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ae3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-birthday', N'Birthday', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.BIRTHDAY",
        "validationField": "bDay"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.validator"
    [validationField]="''bDay''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-04-21 13:01:09.0266667 +00:00', 5, N'N', 'e4909bb5-7e40-4655-962b-066a1c2a541a', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('af3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-creation-store', N'Creation store', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.CREATION_STORE"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="true"
></cr-control-edit>', '2022-03-09 16:01:12.0666667 +00:00', 4, N'N', '74ee5e13-9cfb-48ca-9d31-d67099fe7fac', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-linked-store', N'Linked store', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.LINKED_STORE",
        "isDisabled": false
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Linked_store''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner__location_objectId_dropdown_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner__location_dropdown_GET)
    }"

    [dataCacheName]="''PartnerStoreListDropdownCache''"
    [(value)]="self.partnerDetails.linkedStoreId"
    [textField]="''name''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadStoreForDropdownFn"
    [getListItemsFunction]="self.loadStoreListForDropdownFn"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-04-21 13:02:28.8733333 +00:00', 3, N'N', 'fe4684e2-14c2-4163-925f-483a5296d135', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-parent', N'Parent', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.PARENT_PARTNER",
        "isDisabled": false
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Parent_partner''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_dropdown_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_dropdown_GET)
    }"

    [dataCacheName]="''PartnerParentListDropdownCache''"
    [(value)]="self.partnerDetails.parentPartnerId"
    [textField]="''name''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadPartnerParentForDropdownFn"
    [getListItemsFunction]="self.loadPartnerParentListForDropdownFn"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [codeField]="''code''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-04-21 13:03:53.2433333 +00:00', 3, N'N', 'cb13569f-dd9c-4ebc-b983-c136e81245aa', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-phone1', N'Phone 1', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:04:17.9533333 +00:00', 4, N'N', '6df6cac6-7285-4b5b-9a0c-a4834fd7af5f', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-phone2', N'Phone 2', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:04:35.3233333 +00:00', 4, N'N', '3c51bc21-6f0f-4b73-8d08-35a0a8f3a38b', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b43fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-cellular', N'Cellular', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.CELLULAR",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:04:44.8266667 +00:00', 4, N'N', '8eba9337-8df4-4bf4-b3cd-480bf0a58c9a', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b53fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-fax', N'Fax', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.FAX",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:04:52.6666667 +00:00', 3, N'N', '4f326ca8-8f2d-4ac2-8827-5535839b8687', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b63fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-email', N'Email', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.EMAIL",
        "isDisabled": false,
        "validationField": "eMail"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.validator"
    [validationField]="''eMail''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:05:01.3666667 +00:00', 6, N'N', '0e954519-ea30-4913-a47f-3c4b284c001e', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b73fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-tourist', N'Tourist', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.TOURIST",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-04-21 13:05:10.1900000 +00:00', 3, N'N', 'd77d2b3c-34aa-4814-9c19-163e642289d8', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b83fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-passport', N'Passport', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.PASSPORT",
        "isDisabled": false,
        "validationField": "passport"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.validator"
    [validationField]="''passport''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:05:18.0900000 +00:00', 5, N'N', '07d11766-0725-4512-bd05-02ea961a87d0', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b93fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-internation-passport', N'Internation passport', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:05:24.8200000 +00:00', 3, N'N', '60f14f0b-80c9-4824-b174-7a5b3fe5f380', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ba3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-data-approved', N'Is data approved', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-04-21 13:05:35.9733333 +00:00', 5, N'N', '6e341541-a71d-4af1-a68a-4be76bb611fe', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bb3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-valid', N'Is valid', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.VALID"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-04-21 13:05:45.2833333 +00:00', 3, N'N', '0d6fe1f9-2603-4484-875a-de865c1e7241', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bc3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-frozen', N'Frozen', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.FROZEN"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-04-21 13:05:52.0633333 +00:00', 4, N'N', '406dace1-e55e-4f5d-a820-9b5550a44d9b', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bd3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-valid-from', N'Valid from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_FROM",
        "validationField": "validFrom"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.partnerDetails.isValid || {{disabled}}"
></cr-control-datepicker>', '2022-04-21 13:05:59.1733333 +00:00', 8, N'N', 'dcc275f0-59e5-40b0-b365-e31519b29da0', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('be3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-valid-to', N'Valid to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_TO",
        "validationField": "validTo"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || {{disabled}}"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.partnerDetails.isValid || {{disabled}}"
></cr-control-datepicker>', '2022-04-21 13:06:05.8133333 +00:00', 5, N'N', 'dd84c069-2360-4825-b98e-502f65ecd2f8', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bf3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-frozen-from', N'Frozen from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_FROM",
        "validationField": "frozenFrom"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || {{disabled}}"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
></cr-control-datepicker>', '2022-04-21 13:06:13.2400000 +00:00', 5, N'N', 'e2550154-87b4-49dc-b0d4-eef6d0412181', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-frozen-to', N'Frozen to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_TO",
        "validationField": "frozenTo"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.partnerDetails.isFrozen || {{disabled}}"
></cr-control-datepicker>', '2022-04-21 13:06:19.9200000 +00:00', 5, N'N', '3ca56ab8-d5d8-4c78-9355-411ce984ab04', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '403c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-mailing-categories', N'Mailing categories', N'{
    "defaultValue": {
        "editIcon": "icon-edit",
        "editable": true
    }
}', N'<cr-partner-mailing-category-control
    [editable]="{{editable}} && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
></cr-partner-mailing-category-control>', '2022-04-21 14:34:20.1033333 +00:00', 5, N'N', '356ce131-b9d4-4bed-8c5e-381069f3c576', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '413c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-panel', N'test', N'', N'Test', '2022-03-04 15:34:17.2966667 +00:00', 2, N'Y', 'fae2198c-1348-4345-994c-5026bcb99def', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-price-list', N'Price list', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_list''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner__item_price_id_dropdown_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner__item_price_dropdown_GET)
    }"

    [dataCacheName]="''PartnerPriceListDropdownCache''"
    [(value)]="self.partnerDetails.priceListId"
    [textField]="''displayName''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadPartnerPriceForDropdownFn"
    [getListItemsFunction]="self.loadPartnerPriceListForDropdownFn"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    (valueChange)="self.onPriceListChanged()"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-04-21 13:10:32.6433333 +00:00', 3, N'N', '82bf065e-3f53-426d-9baa-e0e76f4f3c54', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c43fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-price-number', N'Price number', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_number''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner__item_price_priceListId_price_number_id_dropdown_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner__item_price_priceListId_price_number_dropdown_GET)
    }"
    
    [dataCacheName]="''PartnerPriceNumberListDropdownCache''"
    [isDisabled]="self.partnerDetails.priceListId === null"
    [(value)]="self.partnerDetails.priceNumberId"
    [textField]="''displayName''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadPartnerPriceNumberForDropdownFn"
    [getListItemsFunction]="self.loadPartnerPriceNumberListForDropdownFn"
    [listItemsFunctionAdditionalParameter]="self.partnerDetails.priceListId"
    [requestDataWhenOpen]="true"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-04-21 13:11:43.3200000 +00:00', 3, N'N', '1c8ca0d0-e91f-47a9-b9bd-0907e1fe4f21', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c53fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-credit-limit', N'Credit limit', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="{{disabled}}"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-04-21 13:11:57.3900000 +00:00', 3, N'N', '59a7d22c-828c-4768-8d74-eb13ad5ed229', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c63fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-obligo-limit', N'Obligo limit', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="{{disabled}}"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-04-21 13:12:18.5566667 +00:00', 4, N'N', '012f2d2d-3d25-4acb-8ae5-f3f542724fc6', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c73fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-budget-limit', N'Budget limit', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 17:02:52.6233333 +00:00', 2, N'N', '3297630b-ec1f-485c-b3a7-1c2ac25467a6', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c83fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-budget-type', N'Budget type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Budget_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpoints[self.EndpointName.partner_POST]?.isAccessGranted :
            self.authService.endpoints[self.EndpointName.partner_id_PUT]?.isAccessGranted
        }"
    [value]="self.partnerDetails.budgetTypeId ? self.partnerDetails.budgetTypeId : null"
    [textField]="''name''"
    [valueField]="''uid''"
    [getListItemsFunction]="self.getBudgetTypeDropdownList$"
    [getOneItemFunction]="self.getBudgetTypeItemDropdown$"
    (valueChange)="self.onBudgetTypeChanged($event)"
    [dataTranslateKeyField]="''translateKey''"
    [unselectedItemValue]="{uid: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
                          ></cr-dropdown-smart-control>', '2022-08-19 14:37:47.7700000 +00:00', 7, N'N', 'f271a2e8-46b8-45bb-a082-192883bf0cab', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c93fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-budget-start-month', N'Budget start month', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.partnerDetails.budgetStartMonth"
    [elementName]="''smart-dropdown:Partner_details.Budget_start_month''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpoints[self.EndpointName.partner_POST]?.isAccessGranted :
           self.authService.endpoints[self.EndpointName.partner_id_PUT]?.isAccessGranted
    }"
    [textField]="''name''"
    [valueField]="''uid''"
    [dataCacheName]="''PartnerBudgetStartMonthDropdownCache''"

    [getListItemsFunction]="self.getMonthDropdownList$"
    [getOneItemFunction]="self.getMonthItemDropdown$"
    [dataTranslateKeyField]="''translateKey''"
    [unselectedItemValue]="{uid: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [isDisabled]="false"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-08-22 15:08:40.3100000 +00:00', 12, N'N', '6e6987dd-772a-4afc-bbfc-76caf3c6650d', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ca3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-total-amount', N'Total amount', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT",
        "format": "n0"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 17:14:27.6466667 +00:00', 3, N'N', '5f32f372-d480-4f5f-8fbd-0f466931436b', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cb3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-sales-count', N'Sales count', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.SALES_COUNT",
        "format": "n0"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 17:15:11.3900000 +00:00', 3, N'N', '806b4016-e337-426c-bf22-2a89f4b0b4e2', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cc3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-returns-count', N'Returns count', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.RETURNS_COUNT",
        "format": "n0"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 17:15:41.1500000 +00:00', 2, N'N', 'cd3cb37c-dba9-4c6d-b9a2-8daea492bf19', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cd3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-registration-date', N'Registration date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE",
        "format": "n0"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-04-21 13:13:44.0800000 +00:00', 4, N'N', 'edd5dcaf-4c61-4ae5-a39a-d8c5e51b4b69', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ce3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-last-sale-date', N'Last sale date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE",
        "format": "n0"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-04-21 13:13:50.8966667 +00:00', 3, N'N', '46d4b12a-e30d-4812-82ff-3824ef3a13bd', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cf3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '423c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-groups', N'Partner groups', N'{
    "defaultValue": {
        "editIcon": "icon-edit",
        "editable": true,
        "validationField": "partnerGroups"
    }
}', N'<cr-partner-group-control
    [editable]="{{editable}} && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>', '2022-04-21 13:14:22.8666667 +00:00', 4, N'N', 'd60185cc-95ae-41a6-b511-a9938c12f73a', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '433c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-addresses', N'Partner addresses', N'{
    "defaultValue": {
        "editable": true
    }
}', N'<cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>', '2022-03-10 10:24:50.4400000 +00:00', 7, N'N', 'df962a2e-f6fb-41e4-b62c-fc1e9f82cb80', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '443c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-cards-list', N'Partner cards list', N'{
    "defaultValue": {
        "editable": true
    }
}', N'<cr-partner-cards-list
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [partnerId]="self.partnerDetails.id"
    [isDeletedPartner]="self.partnerDetails.isDeleted"
></cr-partner-cards-list>', '2022-03-09 17:26:20.1000000 +00:00', 3, N'N', '7a3cbbb7-f361-41a5-ad78-7245ee87e0d0', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '453c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-remark', N'Remark', N'{
    "defaultValue": {}
}', N'<cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
    [rows]="{{rows}}"
    [maxlength]="{{maxLength}}"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"
></cr-text-area-control>', '2022-04-21 13:14:55.1466667 +00:00', 3, N'N', 'c7196eeb-ad4c-4be9-a827-df85c036a073', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '463c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-loyalty-points', N'Partner loyalty points', N'{
    "defaultValue": {}
}', N'<cr-partner-point 
    [class]=''{{classes}}''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>', '2022-03-09 17:27:53.5100000 +00:00', 3, N'N', '345948b2-7e78-4976-9af8-30d9974d0869', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d43fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '473c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-point-history', N'Point history', N'{
    "defaultValue": {}
}', N'<cr-partner-point-history
    [class]=''{{classes}}''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>', '2022-03-09 17:28:26.8333333 +00:00', 3, N'N', 'ea729629-3f64-41c1-bbf4-b3f28284ae61', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d53fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '483c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-transaction-history', N'Partner transaction history', N'{
    "defaultValue": {}
}', N'<cr-partner-transaction-history
    [class]=''{{classes}}''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>', '2022-03-09 17:28:45.7400000 +00:00', 3, N'N', 'e9d047a7-53b0-4333-940a-a8f1123310b1', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d63fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '493c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-discount-budget', N'Discount budget', N'{
    "defaultValue": {}
}', N'<cr-partner-discount-budget 
    [class]=''{{classes}}''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>', '2022-03-09 17:29:03.5500000 +00:00', 3, N'N', 'f18483e6-c6db-41c0-855b-afca2c590772', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d73fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'test', N'1', N'1', N'1', '2022-04-13 13:08:19.4333333 +00:00', 3, N'Y', '0f14f42c-e315-4e62-8c6b-956c00be0594', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d83fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '4c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-udf-list', N'Partner UDF list', N'{
    "defaultValue": {}
}', N'<cr-partner-user-fields-list
    *ngIf="self.authService.endpoints[self.EndpointName.partner__user_defined_field_GET]?.isAccessGranted &&
                self.authService.endpoints[self.EndpointName.partner__user_defined_field_default_value_GET]?.isAccessGranted; else noAccess"
    [class]=''{{classes}}''
    [isNew]="self.isNew"
    [udf]="self.partnerDetails.udf"
></cr-partner-user-fields-list>

<ng-template #noAccess>
    <div class="cr-no-read-access p-2">
        {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
    </div>
</ng-template>', '2022-08-11 14:33:01.3966667 +00:00', 3, N'Y', '1287abf3-8281-4eef-beca-949d461ad9ab', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d93fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '4d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-contact-persons-list', N'Partner contact persons list', N'{
    "defaultValue": {}
}', N'<cr-partner-contact-persons-list
    (openAddressPopup)="self.onCreatePartnerContactPersons()"
    (editAddressPopup)="self.onEditPartnerContactPersons($event)"
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
    [class]=''{{classes}}''
></cr-partner-contact-persons-list>', '2022-07-15 18:36:49.1600000 +00:00', 2, N'N', '6613f20f-3d30-4f1a-a829-fe5b697d1e81', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('da3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '4c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-udfs-list', N'Partner udf list', N'{
    "defaultValue": {}
}', N'<cr-udf-list
    [cacheName]="''PartnerUserFieldViewStateCache''"
    *ngIf="self.authService.endpoints[self.EndpointName.partner__user_defined_field_GET]?.isAccessGranted &&
        self.authService.endpoints[self.EndpointName.partner__user_defined_field_default_value_GET]?.isAccessGranted; else noAccess"
    [isNew]="self.isNew"
    [udf]="self.partnerDetails.udf"
    [viewName]="''Partner_details''"
    [loadUserDefinedFieldListForDropdownFn$]="self.loadUserDefinedFieldListForDropdownFn$"
    [getUserFields$]="self.getUserFields$"
    [loadUserFields$]="self.loadUserFields$"
    [getUserFieldsDefault$]="self.getUserFieldsDefault$">
</cr-udf-list>
<ng-template #noAccess>
    <div class="cr-no-read-access p-2">
        {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
    </div>
</ng-template>', '2022-09-01 17:55:26.8766667 +00:00', 3, N'N', '1a287586-3a6a-457c-90de-51e69e8fab39', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('db3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-list-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.LIST.TITLE",
        "elements": [
            {
                "appearance": "icon-button",
                "iconSvg": "icon-pin",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-add",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-close",
                "template": "custom"
            }
        ]
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-10-05 15:41:51.6224251 +03:00', 1, N'N', 'be728670-b069-46bd-8e61-dd8ef0ad7f2e', 1, NULL, '2022-10-05 15:41:51.6224251 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dc3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-list-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.LIST.FILTER.CODE"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Tax_group_list.Code''"
    [(dataValue)]="self.taxGroupFilterRequest.code"
></cr-control-edit>', '2022-10-05 15:46:56.5347421 +03:00', 1, N'N', 'ba4598ba-c8cc-4ae5-aba9-31b5634b23c5', 1, NULL, '2022-10-05 15:46:56.5347421 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dd3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-list-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.LIST.FILTER.NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Tax_group_list.Name''"
    [(dataValue)]="self.taxGroupFilterRequest.name"
></cr-control-edit>', '2022-10-05 15:47:55.2083456 +03:00', 1, N'N', '1f6d81c7-3337-448c-aff8-8e74996856e1', 1, NULL, '2022-10-05 15:47:55.2083456 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('de3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-list-search', N'Search', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SEARCH",
        "buttonType": "underlined-action-button"
    }
}', N'<cr-button-control 
    [buttonTemplateType]="{{buttonTemplateType}}"
    [text]="{{label}}"
    [textTranslateKey]="{{translateKey}}"
    [classArray]=''{{classes}}''
    [width]="{{width}}"
    [height]="{{height}}"
    [icon]="{{icon}}"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="(self.EndpointName.tax_group_GET | endpointAccessGrantedPipe)"
></cr-button-control>', '2022-10-05 15:49:57.1014460 +03:00', 1, N'N', '42bfd7c1-c17f-4a7e-9825-42c7289f5e73', 1, NULL, '2022-10-05 15:49:57.1014460 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('df3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-groups-list-grid', N'Grid', N'{
    "defaultValue": {
        "uniqueField": "id",
        "dataSource": {
            "responseList": [
                {
                    "id": 1,
                    "code": "Foo 1",
                    "name": "Bar 1"
                },
                {
                    "id": 2,
                    "code": "Foo 2",
                    "name": "Bar 2"
                }
            ],
            "page": 1,
            "size": 5,
            "totalElements": 5
        },
        "columns": [
            {
                "title": "Code",
                "field": "code",
                "type": "text"
            },
            {
                "title": "Name",
                "field": "name",
                "type": "text"
            }
        ]
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataCacheName]="''TaxGroupGrid''"
        [dataSource]="self.gridData"
        [elementName]="''edit-grid-server-paging:TaxGroup_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]="{{classes}}"
      ></cr-edit-grid-server-paging>
</div>', '2022-10-05 15:54:58.0200000 +00:00', 2, N'N', '09224093-7f46-45d5-bad4-1987ae90e878', 1, NULL, '2022-10-05 15:54:13.4471104 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.TITLE",
        "elements": [
            {
                "appearance": "icon-button",
                "iconSvg": "icon-delete",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-refresh",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-add",
                "template": "custom"
            },
            {
                "appearance": "primary-button",
                "nameTranslateKey": "COMMON.BUTTON.SAVE",
                "template": "custom"
            },
            {
                "appearance": "icon-button",
                "iconSvg": "icon-close",
                "template": "custom"
            }
        ]
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>', '2022-10-06 11:38:16.8955230 +03:00', 1, N'N', 'eeb3427d-282d-4082-84fc-528997abf9fb', 1, NULL, '2022-10-06 11:38:16.8955230 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.CODE",
        "validationField": "code"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.taxGroup.code"
    [elementName]="''edit:TaxGroup_details.Code''"
    [validator]="self.validator"
    [validationField]="''code''"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.taxGroup.isPredefined || {{disabled}}"
></cr-control-edit>', '2022-10-06 11:41:56.2186922 +03:00', 1, N'N', '6ee89b37-7cdd-4ba6-8a09-236521e44681', 1, NULL, '2022-10-06 11:41:56.2186922 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.NAME",
        "validationField": "name"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.taxGroup.name"
    [elementName]="''edit:TaxGroup_details.Name''"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-10-06 11:43:40.1317372 +03:00', 1, N'N', '47075ce2-f0f2-4dd2-bdbe-1317eab2e0e5', 1, NULL, '2022-10-06 11:43:40.1317372 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-definitions-grid', N'Definitions grid', N'{
    "defaultValue": {
        "uniqueField": "id",
        "dataSource": {
            "responseList": [
                {
                    "id": 1,
                    "name": "Bar 1"
                },
                {
                    "id": 2,
                    "name": "Bar 2"
                }
            ],
            "page": 1,
            "size": 5,
            "totalElements": 5
        },
        "columns": [
            {
                "title": "Name",
                "field": "name",
                "type": "text"
            }
        ]
    }
}', N'<div class="cr-grid-wrapper-new cr-grid-with-collapse cr-tax-group-grid">
    <kendo-grid
        #grid
        (pageChange)="self.pageChange($event)"
        [(selectedKeys)]="self.mySelection"
        [attr.data-element-name]="''grid:TaxGroup_details_definition.Definitions_grid''"
        [data]="self.gridView"
        [kendoGridSelectBy]="self.mySelectionKey"
        [pageSize]="self.taxGroup.taxGroupLocationList.paginator?.size"
        [skip]="self.taxGroup.taxGroupLocationList.paginator?.skip"
        [pageable]="true"
        [resizable]="true"
        (add)="self.addHandler()"
        (edit)="self.editHandler($event)"
        (remove)="self.removeHandler($event)"
                    >
                      <ng-template kendoGridToolbarTemplate>
                        <div
                          class="row cr-row-padding-revert">
                          <div class="col-lg-12 cr-col-content-align-right cr-col-no-padding">
                            <cr-button-control
                              [buttonTemplateType]="''grid-add-command''"
                              [elementName]="''button:PriceList.Add''"
                              *ngIf="(self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)"
                            ></cr-button-control>
                          </div>
                        </div>
                      </ng-template>

                      <kendo-grid-column field="name">
                        <ng-template kendoGridHeaderTemplate>
                            <span [attr.data-translate]="''TAX_GROUP.DETAILS.GRID.NAME''">
                              {{''TAX_GROUP.DETAILS.GRID.NAME'' | translate}}
                            </span>
                        </ng-template>
                        <ng-template kendoGridCellTemplate
                                     let-dataItem>
                            <span>
                              {{dataItem.name}}
                            </span>
                        </ng-template>
                        <ng-template kendoGridEditTemplate let-dataItem>
                          <cr-control-edit
                            [(dataValue)]="self.taxGroup.cache.changeItem.name"
                            [elementName]="''edit:TaxGroup.Name''"
                            [translateKeys]="''TAX_GROUP.DETAILS.GRID.NAME''"
                          ></cr-control-edit>
                        </ng-template>
                      </kendo-grid-column>

                      <kendo-grid-column class="action-group" width="250">
                        <ng-template kendoGridCellTemplate
                                     let-dataItem="dataItem"
                                     let-isNew="isNew"
                                     let-rowIndex="rowIndex">
                          <cr-button-control
                            [buttonTemplateType]="''grid-edit-command''"
                            [elementName]="''edit:TaxGroup.Details_Edit_Command''"
                          ></cr-button-control>
                          <!-- Delete row (trash button)-->
                          <cr-button-control
                            *ngIf="(self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)"
                            [buttonTemplateType]="''grid-remove-command''"
                            [elementName]="''edit:TaxGroup.Details_Remove_Command''"
                          ></cr-button-control>
                        </ng-template>
                      </kendo-grid-column>
                      <ng-template kendoGridNoRecordsTemplate>
                          <span [attr.data-translate]="''COMMON.GRID.NO_RECORDS''">
                            {{ ''COMMON.GRID.NO_RECORDS'' | translate }}
                          </span>
                      </ng-template>
                      <ng-template kendoPagerTemplate>
                        <cr-grid-paginator
                          [totalElements]="self.gridView?.total"></cr-grid-paginator>
                      </ng-template>
                    </kendo-grid>
                  </div>', '2022-10-06 11:49:26.7233333 +00:00', 2, N'N', '1c774e6c-e190-4085-83b9-af928e8ac715', 1, NULL, '2022-10-06 11:48:25.3768319 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('983fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.FIRST_NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit>', '2022-11-03 15:17:06.2866667 +00:00', 18, N'N', '001263e5-789a-43ab-bff3-6ef0f9da8ec5', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')

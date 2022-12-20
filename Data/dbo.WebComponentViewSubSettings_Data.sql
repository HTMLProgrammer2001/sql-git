INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('386ae0e5-b57f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'tax-group-definition-name', N'Definition name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.GRID.NAME"
    },
    "fieldSettings": {
        "validationField": "name"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.taxGroupLocation.name"
    [elementName]="''edit:TaxGroup_details.Name''"
    [validationField]="''name''"
    [validator]="self.validator"
    [permissionSettings]="{
      isAccessEdit: self.isNewTaxGroup ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) :
        (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-12-20 11:53:35.6566667 +00:00', 4, N'N', 'ce087847-25fe-4f16-ae2c-6bd57333d219', 1, NULL, '2022-12-19 15:57:55.0851256 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('696fff58-b77f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'tax-group-definition-values-grid', N'Definition values', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "taxPercent",
                "titleTranslateKey": "TAX_GROUP.DETAILS.GRID_VALUES.TAX_PERCENT",
                "hidden": false
            },
            {
                "field": "deductionPercent",
                "titleTranslateKey": "TAX_GROUP.DETAILS.GRID_VALUES.DEDUCTION_PERCENT",
                "hidden": false
            },
            {
                "field": "fromDate",
                "titleTranslateKey": "TAX_GROUP.DETAILS.GRID_VALUES.DATE_FROM",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "validationField": "taxGroupDefinitionList",
        "grid": {
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "taxPercent": 10,
                        "deductionPercent": 20,
                        "fromDate": "1991-06-01T00:00:00.000Z"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "field": "taxPercent",
                    "titleTranslateKey": "TAX_GROUP.DETAILS.GRID_VALUES.TAX_PERCENT",
                    "type": "decimal",
                    "format": "0.0000",
                    "decimals": 4
                },
                {
                    "field": "deductionPercent",
                    "titleTranslateKey": "TAX_GROUP.DETAILS.GRID_VALUES.DEDUCTION_PERCENT",
                    "type": "decimal",
                    "format": "0.0000",
                    "decimals": 4
                },
                {
                    "field": "fromDate",
                    "titleTranslateKey": "TAX_GROUP.DETAILS.GRID_VALUES.DATE_FROM",
                    "type": "date-time"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [dataSource]="self.adapter.dataSource"
        [elementName]="''edit-grid-server-paging:TaxGroup_details.DefinitionList''"
        [allowCreateAction]="true"
        [allowDeleteAction]="true"
        [allowUpdateAction]="true"
        [isCloseEditorAfterAdd]="true"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''uid''"
        [validator]="self.taxGroupDefinitionListValidator"
        (createActionEvent)="self.onNewDefinitionValue($event)"
        (deleteActionEvent)="self.onDeleteDefinitionValue($event)"
        (pageChangeEvent)="self.onPageChangeDefinitionValue($event)"
        (updateActionEvent)="self.onUpdateDefinitionValue($event)"
        [dataCacheName]="''taxGroupDefinitionListCache''"
        [permissionSettings]="{
            isAccessCreate: self.isNewTaxGroup ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) : (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe),
            isAccessUpdate: self.isNewTaxGroup ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) : (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe),
            isAccessDelete: self.isNewTaxGroup ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) : (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)
        }"
        [class]=''{{classes}}''
    ></cr-edit-grid-server-paging>
</div>
', '2022-12-20 11:55:49.4866667 +00:00', 4, N'N', '95e073e5-00c9-4ae1-81b2-7505794478f3', 1, NULL, '2022-12-19 16:08:17.7231337 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('07fa7b25-b87f-ed11-835f-02f176033ddb', '31a5db8f-ed6c-ed11-835f-02f176033ddb', N'tax-group-definition-location-population', N'Location population', N'{
    "defaultValue": {}
}', N'<cr-basket-population-view
    [cacheName]="''taxGroupLocationsPopulationViewState''"
    [elementName]="''tax-group:Locations_population''"
    [isShowAdd]="true"
    [isShowDelete]="true"
    [isShowEdit]="true"
    [populations]="self.taxGroupLocation.locationBasketSet"
    (addBasket)="self.addBasketLocationsPopulation()"
    (edit)="self.onEditLocationsPopulation()"
    [permissionSettings]="{
        isAccessEdit: self.isNewTaxGroup ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)
    }"
></cr-basket-population-view>', '2022-12-20 09:02:30.3733333 +00:00', 2, N'N', 'ad752a73-282d-41a6-b361-0fa0b9cdbbfc', 1, NULL, '2022-12-19 16:14:00.7945351 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cd832519-b97f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'tax-group-definition-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.PANEL.TITLE_DEFINITIONS"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CANCEL",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>', '2022-12-19 16:20:49.5919693 +00:00', 1, N'N', 'dd7b4fc5-09f2-4b39-a975-b14a38cea5a6', 1, NULL, '2022-12-19 16:20:49.5919693 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('3e78101b-5f80-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'location-basket-population-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.BASKET_NAME"
    },
    "fieldSettings": {
        "validationField": "name"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.basketValidator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}} || !self.isBasketNameEnabled"
></cr-control-edit>', '2022-12-20 12:09:09.2666046 +00:00', 1, N'N', '37c7a6cb-1947-4d0d-a23e-274955e7769f', 1, NULL, '2022-12-20 12:09:09.2666046 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1161fb42-5f80-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'location-basket-population-type', N'Type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.BASKET_TYPE"
    }
}', N'<cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [class]=''{{classes}}''
></cr-control-dropdown>', '2022-12-20 12:10:16.2372497 +00:00', 1, N'N', 'e0e6cf74-d4c9-4683-a201-4891bbb53aba', 1, NULL, '2022-12-20 12:10:16.2372497 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('88355d62-5f80-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'location-basket-population-grid', N'Basket population content', N'{
    "defaultValue": {},
    "fieldSettings": {
        "validationField": "populationBasketContentList",
        "grid": {
            "uniqueField": "id",
            "isColumnManagementHidden": true,
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "type": {
                            "id": 1,
                            "name": "Item property"
                        },
                        "property": {
                            "id": 1,
                            "code": "test",
                            "name": "test"
                        },
                        "value": {
                            "id": 1,
                            "code": "test",
                            "name": "test"
                        }
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.TYPE",
                    "field": "type",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "name",
                        "valueField": "id"
                    }
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.PROPERTY",
                    "field": "property",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "name",
                        "valueField": "id",
                        "codeField": "code"
                    }
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.VALUE",
                    "field": "value",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "displayName",
                        "valueField": "id",
                        "codeField": "code"
                    }
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''{{classes}}''
    ></cr-basket-population-edit-list>
</div>', '2022-12-20 12:11:08.8877576 +00:00', 1, N'N', '4f585b03-e2ab-4f35-990b-db1d8679bc50', 1, NULL, '2022-12-20 12:11:08.8877576 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a05b3995-5f80-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'location-basket-population-edit-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_LOCATION_POPULATION"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>', '2022-12-20 12:12:34.2166048 +00:00', 1, N'N', '40d64331-7bb0-4181-ba8b-a52561b967dd', 1, NULL, '2022-12-20 12:12:34.2166048 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('571759c5-5f80-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'location-basket-population-create-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_LOCATION_POPULATION"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>', '2022-12-20 12:13:54.9552087 +00:00', 1, N'N', 'fceaca24-3275-4ee8-b2a0-6ee7a10d9c5f', 1, NULL, '2022-12-20 12:13:54.9552087 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9cd17489-276b-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'image-content-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.IMAGE_BASKET.DETAILS.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
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
    }
}', N'<cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
></cr-title-header>
', '2022-11-23 12:08:28.2384412 +00:00', 1, N'N', 'b6b53a40-1974-4c4a-bf9e-c833befbbfc3', 1, NULL, '2022-11-23 12:08:28.2384412 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2d04c202-396b-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'image-content-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.IMAGE_BASKET.DETAILS.CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.image.code"
    [elementName]="''edit:Image_basket_details.Code''"
    [validator]="self.validator"
    [validationField]="''code''"
    [maxlength]="50"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-23 14:13:33.1930797 +00:00', 1, N'N', 'f644bba9-27c1-4b36-8e9e-1fced62ade50', 1, NULL, '2022-11-23 14:13:33.1930797 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('02fd0c33-3b6b-ed11-835f-02f176033ddb', '7c4fb333-396b-ed11-835f-02f176033ddb', N'image-content-file', N'Image picker', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.IMAGE_BASKET.DETAILS.FILE",
        "isDropzoneMessageUseTranslateKey": true,
        "dropzoneMessageTranslateKey": "COMMON.IMAGE_BASKET.DETAILS.FILE_DROPZONE"
    },
    "fieldSettings": {
        "validationField": "file"
    }
}', N'<cr-file-control
    [(dataValue)]="self.image.file"
    (dataValueChange)="self.onImageChange()"
    [allowedExtensions]="self.allowedUploadExtensions"
    [elementName]="''file:Image_basket_details.File''"
    [maxFileSize]="self.maxUploadFileSize"
    [validator]="self.validator"
    [validationField]="''file''"
    [isDisabled]="self.isNew ? !self._parsedPermissionSettings.isAccessCreate : !self._parsedPermissionSettings.isAccessUpdate"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [dataDropzoneMessage]="{{dropzoneLabel}}"
    [dataDropzoneMessageTranslateKey]="{{dropzoneTranslateKey}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-file-control>', '2022-11-23 14:57:51.1433333 +00:00', 4, N'N', 'ca941219-77a7-40e5-ab65-3ee161b03bfa', 1, NULL, '2022-11-23 14:29:13.2085122 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f9f78b1c-426b-ed11-835f-02f176033ddb', '3c65421a-406b-ed11-835f-02f176033ddb', N'image-content-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.IMAGE_BASKET.DETAILS.NAME"
    },
    "fieldSettings": {
        "validationField": "nameLanguageData"
    }
}', N'<cr-translate-editor
    [elementName]="''edit:Image_basket_details.Name''"
    [languages]="self.languages"
    [(value)]="self.image.nameLanguageData"
    [validator]="self.validator"
    [validationField]="''nameLanguageData''"
    (valueChange)="self.onChangeTitle()"
    [label]="{{label}}"
    [translateKey]="{{translateKey}}"
    [class]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-translate-editor>', '2022-11-23 15:18:41.9302009 +00:00', 1, N'N', 'dc07815b-2d94-4e53-94a9-ad81852b9fe3', 1, NULL, '2022-11-23 15:18:41.9302009 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('51db302e-436b-ed11-835f-02f176033ddb', '3c65421a-406b-ed11-835f-02f176033ddb', N'image-content-description', N'Description', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.IMAGE_BASKET.DETAILS.DESCRIPTION"
    }
}', N'<cr-translate-editor
    [elementName]="''edit:Image_basket_details.Description''"
    [languages]="self.languages"
    [(value)]="self.image.descriptionLanguageData"
    [label]="{{label}}"
    [translateKey]="{{translateKey}}"
    [class]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-translate-editor>', '2022-11-23 15:26:21.0288081 +00:00', 1, N'N', 'e41bac5f-a1ae-4cf5-b413-8f2d0f74d042', 1, NULL, '2022-11-23 15:26:21.0288081 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cd6a6b73-446b-ed11-835f-02f176033ddb', 'fd31220c-446b-ed11-835f-02f176033ddb', N'image-content-image', N'Selected image', N'{
    "defaultValue": {}
}', N'<div class="cr-text-center">
    <img
        [src]="self.image.cdnResourceUrl ? self.sanitizeUrl(self.image.cdnResourceUrl) : (self.image.cdnResourceUrl || ''/assets/images/no-image.svg'')"
        class="cr-image-basket-details-img"
        [alt]="self.image.description"
        [title]="self.image.name"
        [class]=''{{classes}}''
    />
</div>
', '2022-11-23 15:35:26.6721101 +00:00', 1, N'N', '2d2aa417-b7ee-4fe1-8252-26ee8fe12019', 1, NULL, '2022-11-23 15:35:26.6721101 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f970f876-4c6b-ed11-835f-02f176033ddb', '12c2e4f2-476b-ed11-835f-02f176033ddb', N'image-content-cdn-full-url', N'CDN full URL', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.IMAGE_BASKET.DETAILS.CDN_FULL_URL"
    }
}', N'<cr-label-control
    [link]="self.image.cdnResourceUrl"
    [containsLink]="true"
    (linkClicked)="self.onLinkOpen(self.image.cdnResourceUrl)"
    [label]="{{label}}"
    [translateKey]="{{translateKey}}"
    [class]=''{{classes}}''
></cr-label-control>', '2022-11-23 16:36:35.6733333 +00:00', 3, N'N', 'cfd53a61-61d1-486e-b0e7-449ad0739e4b', 1, NULL, '2022-11-23 16:32:48.6033273 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ffefc55e-4d6b-ed11-835f-02f176033ddb', '12c2e4f2-476b-ed11-835f-02f176033ddb', N'image-content-cdn-bucket-url', N'CDN bucket URL', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.IMAGE_BASKET.DETAILS.BUCKET_FULL_URL"
    }
}', N'<cr-label-control
    [link]="self.image.bucketResourceUrl"
    [containsLink]="true"
    (linkClicked)="self.onLinkOpen(self.image.bucketResourceUrl)"
    [label]="{{label}}"
    [translateKey]="{{translateKey}}"
    [class]=''{{classes}}''
></cr-label-control>', '2022-11-23 16:39:17.5037567 +00:00', 1, N'N', '4f262a3a-a36a-4770-8d6f-74aa02bf82b9', 1, NULL, '2022-11-23 16:39:17.5037567 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e2645766-4e6b-ed11-835f-02f176033ddb', '12c2e4f2-476b-ed11-835f-02f176033ddb', N'image-content-image-identifier', N'Image identifier', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.IMAGE_BASKET.DETAILS.IMAGE_IDENTIFIER"
    }
}', N'<cr-label-control
    [link]="self.image.fileIdentifier"
    [label]="{{label}}"
    [translateKey]="{{translateKey}}"
    [class]=''{{classes}}''
></cr-label-control>', '2022-11-23 16:46:39.6978018 +00:00', 1, N'N', '4ec73a38-7295-417c-9a92-81cfeefc8882', 1, NULL, '2022-11-23 16:46:39.6978018 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('4951d88f-4e6b-ed11-835f-02f176033ddb', '12c2e4f2-476b-ed11-835f-02f176033ddb', N'image-content-image-original-file-name', N'Original file name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.IMAGE_BASKET.DETAILS.ORIGINAL_FILE_NAME"
    }
}', N'<cr-label-control
    [link]="self.image.originalFileName"
    [label]="{{label}}"
    [translateKey]="{{translateKey}}"
    [class]=''{{classes}}''
></cr-label-control>', '2022-11-23 16:47:49.3293001 +00:00', 1, N'N', 'a220f7e8-7ff3-46f3-998a-734c9473d98c', 1, NULL, '2022-11-23 16:47:49.3293001 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6df7cbec-9a6c-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-template-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.FILTER_CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-25 08:28:13.8266667 +00:00', 2, N'N', 'ffd2a14d-59b3-4a1f-a5e9-0b2ce3a3f4ad', 1, NULL, '2022-11-25 08:26:58.1906925 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6e14d98d-9b6c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-template-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.TEMPLATE_CODE"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Modifier_template_list.Popup.Code''"
    [(dataValue)]="self.cache.filter.code"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 08:31:28.3898094 +00:00', 1, N'N', 'c774a691-399c-4d19-b23d-5326a21c829a', 1, NULL, '2022-11-25 08:31:28.3898094 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('02bbc6b8-9b6c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-template-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.TEMPLATE_NAME"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Modifier_template_list.Popup.Display_name''"
    [(dataValue)]="self.cache.filter.name"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 08:32:40.4115842 +00:00', 1, N'N', '0642883b-4847-4247-8e2b-6546864a32bf', 1, NULL, '2022-11-25 08:32:40.4115842 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bc7aff12-9c6c-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-template-search', N'Search', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.SEARCH",
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
    (buttonClickEvent)="self.onSearch()"
></cr-button-control>', '2022-11-25 08:35:11.7784380 +00:00', 1, N'N', '8fb3fe63-1890-4865-952f-ebc3bd63d1b9', 1, NULL, '2022-11-25 08:35:11.7784380 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('31182b9b-9c6c-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-template-clear-filter', N'Clear filters', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.FILTER_CLEAR",
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
    [type]="''button''"
    (buttonClickEvent)="self.onClearFilter()"
></cr-button-control>', '2022-11-25 08:39:00.2344113 +00:00', 1, N'N', 'cf5785ec-e992-4e0a-8bcc-1afa700b2e27', 1, NULL, '2022-11-25 08:39:00.2344113 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('024698da-9f6c-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-template-selected-groups', N'Selected groups', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.SELECTED_GROUPS",
        "isDisabled": true,
        "format": "#"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Item_details.Modifier_template_list.Popup.Groups''"
    [dataValue]="self.cache.selection?.length"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-11-25 09:11:47.9366667 +00:00', 2, N'N', 'e8efba42-c356-4fa4-9f6e-461da4eabb64', 1, NULL, '2022-11-25 09:02:15.1365762 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5a4521ab-a06c-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-template-grid', N'Item modifier templates', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "titleTranslateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.GRID.MODIFIER_TEMPLATE_CODE",
                "field": "code",
                "hidden": false
            },
            {
                "titleTranslateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.GRID.MODIFIER_TEMPLATE_NAME",
                "field": "name",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "expandable": true,
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "code": "test",
                        "name": "test"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.GRID.MODIFIER_TEMPLATE_CODE",
                    "field": "code",
                    "type": "link"
                },
                {
                    "titleTranslateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.GRID.MODIFIER_TEMPLATE_NAME",
                    "field": "name",
                    "type": "text"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''grid:Item_details.Modifier_template_list.Popup.List_grid''"
        [dataCacheName]="''ItemModifierTemplateListCache''"
        [dataSource]="self.dataSource"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [initialSelectedRows]="self.cache.selection"
        [expandable]="true"
        [expandedRows]="self.cache.expandedRows"
        (pageChangeEvent)="self.changePage($event)"
        (expandedRowsChange)="self.onExpandedRowsChange($event)"
        (cellClickEvent)="self.onCellClick($event)"
        [class]="{{classes}}"
    >
        <ng-template crEditGridExpandDetails let-dataItem="dataItem">
            <cr-item-modifier-template-modifiers
                [modifierTemplateId]="dataItem.id"
                [filter]="self.cache.filter"
                [selected]="self.cache.selection"
                (onSelection)="self.onSelectModifierGroupByTemplate($event)"
            ></cr-item-modifier-template-modifiers>
        </ng-template>
    </cr-edit-grid-server-paging>
</div>', '2022-12-08 09:26:43.0433333 +00:00', 7, N'N', '7cbb97c0-ec5b-4332-920e-e07f4d61658b', 1, NULL, '2022-11-25 09:08:05.0004954 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ff32d126-a26c-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-groups-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.FILTER_CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-25 09:18:42.0099455 +00:00', 1, N'N', '3fb9d5ec-68f4-48b2-9bb7-f859eebba32b', 1, NULL, '2022-11-25 09:18:42.0099455 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('4dfe8d59-a26c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-groups-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.TEMPLATE_CODE"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Modifier_group_list.Popup.Code''"
    [(dataValue)]="self.cache.filter.code"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 09:20:07.1333069 +00:00', 1, N'N', '52760331-bb70-467e-8f34-643b0e7b5c72', 1, NULL, '2022-11-25 09:20:07.1333069 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6f2c5c7e-a26c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-groups-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.TEMPLATE_NAME"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Modifier_group_list.Popup.Name''"
    [(dataValue)]="self.cache.filter.name"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 09:21:08.8825071 +00:00', 1, N'N', '6ca67d19-5be1-487c-af59-e25f577f8fb5', 1, NULL, '2022-11-25 09:21:08.8825071 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('200045ab-a26c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-groups-display-name', N'Display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.TEMPLATE_DISPLAY_NAME"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Modifier_group_list.Popup.Display_name''"
    [(dataValue)]="self.cache.filter.displayName"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 09:22:24.2281120 +00:00', 1, N'N', 'ee21941f-bf22-4a6a-9661-26f449254297', 1, NULL, '2022-11-25 09:22:24.2281120 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('29690cdb-a26c-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-group-search', N'Search', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.SEARCH",
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
    (buttonClickEvent)="self.onSearch()"
></cr-button-control>', '2022-11-25 09:23:44.3878825 +00:00', 1, N'N', 'ee5a32e5-a9b8-4c6e-ae5c-188a5d11330a', 1, NULL, '2022-11-25 09:23:44.3878825 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('3c305b0a-a36c-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-group-clear-filter', N'Clear filters', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.FILTER_CLEAR",
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
    [type]="''button''"
    (buttonClickEvent)="self.onClearFilter()"
></cr-button-control>', '2022-11-25 09:34:58.2000000 +00:00', 2, N'N', 'bd9b6644-e0f3-4060-be45-04d29aea1e0e', 1, NULL, '2022-11-25 09:25:03.7570748 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5a8fd267-a36c-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-groups-selected-groups', N'Selected groups', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.SELECTED_GROUPS",
        "isDisabled": true,
        "format": "#"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Item_details.Modifier_group_list.Popup.Selected_groups''"
    [dataValue]="self.selected?.length"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-11-25 09:27:40.5674970 +00:00', 1, N'N', '9afd2ff8-4d67-41b9-a328-5b862b503379', 1, NULL, '2022-11-25 09:27:40.5674970 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('28f36fe7-a36c-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-modifiers-groups-grid', N'Item modifier groups', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "titleTranslateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_CODE",
                "field": "code",
                "hidden": false
            },
            {
                "titleTranslateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_NAME",
                "field": "name",
                "hidden": false
            },
            {
                "titleTranslateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_DISPLAY_NAME",
                "field": "displayName",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "allowMultiselect": true,
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "code": "test",
                        "name": "test",
                        "displayName": "test"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_CODE",
                    "field": "code",
                    "type": "link"
                },
                {
                    "titleTranslateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_NAME",
                    "field": "name",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_DISPLAY_NAME",
                    "field": "displayName",
                    "type": "text"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [fieldNameForMultiSelectColumnTranslateKey]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.USE''"
        [elementName]="''grid:Item_details.Modifier_group_list.Popup.Group_list_grid''"
        [dataCacheName]="''ItemModifierGroupListCache''"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [uniqueField]="''id''"
        [resizable]="true"
        [pageable]="true"
        [allowMultiSelect]="true"
        [initialSelectedRows]="self.cache.selection"
        [selectionDataMode]="''id''"
        (pageChangeEvent)="self.changePage($event)"
        (cellClickEvent)="self.onCellClick($event)"
        (selectionChanged)="self.onSelectionChange($event)"
        [dataSource]="self.dataSource"
        [class]="{{classes}}"
    ></cr-edit-grid-server-paging>
</div>
', '2022-12-08 09:26:29.1333333 +00:00', 4, N'N', '14912e88-212d-42c5-93b5-23eb6149fd2e', 1, NULL, '2022-11-25 09:31:14.6696104 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b80541d8-ac6c-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
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
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>', '2022-11-25 10:35:14.6668088 +00:00', 1, N'N', '9e9171cb-6329-4409-9e04-d7741410dfaf', 1, NULL, '2022-11-25 10:35:14.6668088 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7c1c6827-ad6c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.comboMealCategory.code"
    [elementName]="''edit:Item_details.Combo_meal_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''code''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-11-25 10:56:17.0100000 +00:00', 2, N'N', '04810055-417b-40a4-b118-ba3a139cf2f0', 1, NULL, '2022-11-25 10:37:27.4629884 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('29d55b6c-ad6c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.NAME"
    },
    "fieldSettings": {
        "validationField": "name"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.comboMealCategory.name"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Item_details.Combo_meal_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-11-25 10:56:49.9200000 +00:00', 2, N'N', '8c6bf954-bcbb-44c1-89c8-c80dc5257d30', 1, NULL, '2022-11-25 10:39:23.1453097 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('87a6389f-ad6c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-display-name', N'Display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.DISPLAY_NAME"
    },
    "fieldSettings": {
        "validationField": "displayName"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.comboMealCategory.displayName"
    [elementName]="''edit:Item_details.Combo_meal_display_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''displayName''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-11-25 10:57:10.1400000 +00:00', 2, N'N', '504964c4-94d1-45f5-ba3c-f191e73e8a4f', 1, NULL, '2022-11-25 10:40:48.4785415 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('4cb98e01-ae6c-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-basket', N'Select from basket', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_BASKET",
        "buttonType": "secondary-action-button"
    }
}', N'<cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_basket''"
    (buttonClickEvent)="self.onSelectFromBasket()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_POST | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="{{buttonTemplateType}}"
    [text]="{{label}}"
    [textTranslateKey]="{{translateKey}}"
    [classArray]=''{{classes}}''
    [width]="{{width}}"
    [height]="{{height}}"
    [icon]="{{icon}}"
></cr-button-control>', '2022-11-25 10:43:33.4593484 +00:00', 1, N'N', '27ac7a73-d029-495e-90e8-d6131df8b35f', 1, NULL, '2022-11-25 10:43:33.4593484 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dffc7e35-ae6c-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-catalog', N'Select from catalog', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_CATALOG",
        "buttonType": "secondary-action-button"
    }
}', N'<cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_catalog''"
    (buttonClickEvent)="onSelectFromCatalog()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_GET | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="{{buttonTemplateType}}"
    [text]="{{label}}"
    [textTranslateKey]="{{translateKey}}"
    [classArray]=''{{classes}}''
    [width]="{{width}}"
    [height]="{{height}}"
    [icon]="{{icon}}"
></cr-button-control>', '2022-11-25 10:45:00.5977439 +00:00', 1, N'N', 'eed10b4b-68db-4d9a-9193-65b68cb39c74', 1, NULL, '2022-11-25 10:45:00.5977439 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ff09339a-af6c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-description', N'Description', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.RULES.DESCRIPTION"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.comboMealCategory.description"
    [elementName]="''edit:Item_details.Combo_meal_description''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-11-25 10:54:59.0466175 +00:00', 1, N'N', '1eff6480-06eb-424e-9ea9-0c782f37d8c7', 1, NULL, '2022-11-25 10:54:59.0466175 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8e26a19d-b06c-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-allow-only-one-selection', N'Allow only one selection', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.RULES.IS_ALLOW_ONE_SELECTION"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isAllowOnlyOneSelection"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_allow_one_selection''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 11:02:14.2981390 +00:00', 1, N'N', 'c0904fdc-88a7-4ee1-945f-e82aceeff0a3', 1, NULL, '2022-11-25 11:02:14.2981390 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('55d2bcd3-b06c-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-move-to-next-after-limit', N'Move to next after limit', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.RULES.IS_MOVE_TO_NEXT_AFTER_LIMIT"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isMoveToNextAfterLimit"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_move_to_next_after_limit''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 11:03:45.0764501 +00:00', 1, N'N', '96f7b119-4366-4978-bb79-6f051ca1aa7a', 1, NULL, '2022-11-25 11:03:45.0764501 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7c830553-e36c-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-selection-min', N'Selection min', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MINIMUM",
        "format": "n0",
        "decimals": 0,
        "min": 1,
        "max": 1000,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "selectionMin"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_minimum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMin"
    [validator]="self.validator"
    [validationField]="''selectionMin''"
    [isDisabled]="{{disabled}} || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-11-25 17:06:57.8433333 +00:00', 2, N'N', '5882b167-8dc7-4e50-85da-b251c559c5da', 1, NULL, '2022-11-25 17:05:13.4599676 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c7a2fa99-e36c-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-selection-max', N'Selection max', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MAXIMUM",
        "format": "n0",
        "decimals": 0,
        "min": 1,
        "max": 1000,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "selectionMax"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_maximum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMax"
    [validator]="self.validator"
    [validationField]="''selectionMax''"
    [isDisabled]="{{disabled}} || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-11-25 17:07:12.5069127 +00:00', 1, N'N', 'a0c54d94-1888-45e1-85f2-50fc5115d9bd', 1, NULL, '2022-11-25 17:07:12.5069127 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('08c3b0f2-e46c-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-items-grid', N'Items', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.CODE",
                "field": "code",
                "hidden": false
            },
            {
                "field": "extraPriceValue",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.EXTRA_PRICE",
                "hidden": false
            },
            {
                "field": "isDefaultSelection",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.IS_DEFAULT",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "userSort": true,
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "code": "test",
                        "name": "test",
                        "extraPriceValue": 3.05,
                        "isDefaultSelection": true
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.CODE",
                    "field": "code",
                    "type": "link"
                },
                {
                    "type": "decimal",
                    "field": "extraPriceValue",
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.EXTRA_PRICE",
                    "decimals": 2,
                    "format": "#.##",
                    "min": 0,
                    "autoCorrectMinMax": true
                },
                {
                    "type": "boolean",
                    "field": "isDefaultSelection",
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.IS_DEFAULT",
                    "width": "100px"
                }
            ]
        }
    }
}', N'<div class="cr-grid-relative-wrapper">
    <div class="cr-grid-wrapper-new" #gridWrapper>
        <cr-edit-grid-server-paging
            [elementName]="''edit-grid-server-paging:Item_details.Combo_meal_category_items_grid''"
            [permissionSettings]="{
              isAccessUpdate: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
                (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe),
              isAccessDelete: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
                (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
            }"
            [dataCacheName]="''ViewComboMealCategoryItemsGrid''"
            [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
            [dataSource]="self.adapter.dataSource"
            [uniqueField]="''id''"
            [selectionDataMode]="''id''"
            [resizable]="true"
            [pageable]="true"
            [hasSorter]="true"
            [allowUpdateAction]="true"
            [allowDeleteAction]="true"
            (pageChangeEvent)="self.changePage($event)"
            (updateActionEvent)="self.updateHandler($event)"
            (deleteActionEvent)="self.deleteHandler($event)"
            (changeStatus)="self.onChangeStatusHandler($event)"
            (selectionChanged)="self.onSelectionChange($event)"
            (cellClickEvent)="self.onCellClick($event)"
            [class]=''{{classes}}''
        ></cr-edit-grid-server-paging>
    </div>
    <cr-sort
        (changeSort)="self.changeSortHandler($event)"
        [disableButtons]="{
            toFirst: self.cache.item.firstSelected,
            oneUp: self.cache.item.firstSelected,
            oneDown: self.cache.item.lastSelected,
            toLast: self.cache.item.lastSelected
        }"
        [gridWrapper]="gridWrapper"
        [hideButtons]="{
            toFirst: self.adapter.dataSource?.responseList.length < 2,
            toLast: self.adapter.dataSource?.responseList.length < 2
        }"
        [permissionSettings]="(self.EndpointName.item_property_id_sort_order_PUT | endpointAccessGrantedPipe)"
    ></cr-sort>
</div>', '2022-12-08 09:47:27.6733333 +00:00', 2, N'N', '1814f264-c119-4d17-8957-0ea650064aa6', 1, NULL, '2022-11-25 17:16:50.8367240 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9486fabf-e56c-ed11-835f-02f176033ddb', '0f9b4341-e56c-ed11-835f-02f176033ddb', N'item-combo-meal-image-picker', N'Image picker', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.RULES.IMAGE"
    }
}', N'<cr-image-single-picker
    [imageUrl]="self.comboMealCategory.imageObject?.url"
    [image]="self.comboMealCategory.imageObject?.file"
    (imageChange)="self.onImageSelect($event)"
    [elementName]="''image-single-picker:Item_details.Combo_meal_category_image''"
    [maxFileSize]="self.maxUploadFileSize"
    [allowedExtensions]="self.allowedUploadExtensions"
    [width]="200"
    [height]="150"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [invalidMaxFileSizeMessageTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.RULES.MAX_FILE_SIZE_EXCEED''"
    [isDisabled]="{{disabled}} || self.isDeleted"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [class]=''{{classes}}''
></cr-image-single-picker>
', '2022-11-25 17:22:35.2530708 +00:00', 1, N'N', '394abf3b-3ca0-448d-a733-8b47a5e6c803', 1, NULL, '2022-11-25 17:22:35.2530708 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5d9963a5-e96c-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-catalog-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
></cr-title-header>', '2022-11-25 17:50:28.6301149 +00:00', 1, N'N', 'bc1d5ae3-fd8a-45a3-a3cc-b39f2b5cbef9', 1, NULL, '2022-11-25 17:50:28.6301149 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c32891de-e96c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-catalog-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.CODE"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_code''"
    [(dataValue)]="self.cache.filter.code"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 17:52:04.5588291 +00:00', 1, N'N', '1c97e405-35f9-4f7d-9bfa-6c701d89c3a9', 1, NULL, '2022-11-25 17:52:04.5588291 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('02efb306-ea6c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-catalog-short-display-name', N'Short display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.SHORT_DISPLAY_NAME"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_short_display_name''"
    [(dataValue)]="self.cache.filter.shortDisplayName"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 17:53:11.8955906 +00:00', 1, N'N', '0feef458-85de-4548-be80-11de4a627bf7', 1, NULL, '2022-11-25 17:53:11.8955906 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9d3bae2d-ea6c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-catalog-barcode', N'Barcode', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.BARCODE"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_barcode''"
    [(dataValue)]="self.cache.filter.barcode"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 17:54:17.2893725 +00:00', 1, N'N', '467df976-15f1-4b50-899e-a3202aa6acd1', 1, NULL, '2022-11-25 17:54:17.2893725 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5e2aa053-ea6c-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-catalog-model-code', N'Model code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.MODEL_CODE"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_model_code''"
    [(dataValue)]="self.cache.filter.modelCode"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 17:55:20.9506014 +00:00', 1, N'N', '57264544-13c5-4262-823c-0671c2f457a7', 1, NULL, '2022-11-25 17:55:20.9506014 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a1ee4884-ea6c-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-catalog-search', N'Search', N'{
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
></cr-button-control>', '2022-11-25 17:56:42.5872673 +00:00', 1, N'N', '1064a64f-ba8a-4cfe-bb2b-4dc174b7c52d', 1, NULL, '2022-11-25 17:56:42.5872673 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dcad68bd-ea6c-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-catalog-total', N'Total', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.TOTAL",
        "isDisabled": true,
        "format": "#"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Item_details.Combo_meal_select_from_catalog_items_total''"
    [dataValue]="self.cache.selectedItems?.length"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-11-26 18:09:01.8233333 +00:00', 2, N'N', '495f56d4-1d25-4275-a2c0-f25da64c2101', 1, NULL, '2022-11-25 17:58:18.4254556 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e002ee64-eb6c-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-catalog-grid', N'Items', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.CODE",
                "hidden": false
            },
            {
                "field": "name",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.NAME",
                "hidden": false
            },
            {
                "field": "barcode",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.BARCODE",
                "hidden": false
            },
            {
                "field": "model.name",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.MODEL",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "allowMultiselect": true,
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "code": "test",
                        "name": "test",
                        "barcode": "test",
                        "model": {
                            "id": 1,
                            "name": "Model",
                            "code": "Model code"
                        }
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.CODE",
                    "field": "code",
                    "type": "link"
                },
                {
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.NAME",
                    "field": "name",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.BARCODE",
                    "field": "barcode",
                    "type": "text"
                },
                {
                    "type": "fieldWithCode",
                    "field": "model.name",
                    "codeField": "model.code",
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.MODEL"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_details.Combo_meal_select_from_catalog_grid''"
        [dataSource]="self.dataSource"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [pageable]="true"
        [resizable]="true"
        (cellClickEvent)="self.onCellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        (selectionChanged)="self.onSelectionChange($event)"
        [initialSelectedRows]="self.cache.selectedItems"
        [uniqueField]="''id''"
        [allowMultiSelect]="true"
        [selectionDataMode]="''object''"
        [dataCacheName]="''ComboMealCategorySelectFromCatalogGrid''"
        [class]=''{{classes}}''
    ></cr-edit-grid-server-paging>
</div>
', '2022-12-08 10:37:07.2433333 +00:00', 2, N'N', '8c1d669f-9ef9-4c17-a67f-819d8fff87b8', 1, NULL, '2022-11-25 18:02:59.4787680 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('822e3970-ec6c-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-basket-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
></cr-title-header>', '2022-11-25 18:10:27.9230722 +00:00', 1, N'N', 'ea5c9db5-91a9-4b69-93ee-c619d4217c0c', 1, NULL, '2022-11-25 18:10:27.9230722 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d9f0a5a5-ec6c-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-basket-search', N'Search', N'{
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
></cr-button-control>', '2022-11-25 18:11:57.5550809 +00:00', 1, N'N', 'c20b3add-37f5-40e9-abd6-e4a5aac0e531', 1, NULL, '2022-11-25 18:11:57.5550809 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d78591cb-ec6c-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-basket-total', N'Total', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.TOTAL",
        "isDisabled": true,
        "format": "#"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Item_details.Combo_meal_select_from_basket_items_total''"
    [dataValue]="self.cache.selectedItems?.length"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-11-26 18:09:17.3800000 +00:00', 2, N'N', 'a21f07bf-71c8-41e5-80d7-216cdcf0eade', 1, NULL, '2022-11-25 18:13:01.1746903 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('20949f12-ed6c-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-combo-meal-select-from-basket-grid', N'Items', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.CODE",
                "hidden": false
            },
            {
                "field": "name",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.NAME",
                "hidden": false
            },
            {
                "field": "barcode",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.BARCODE",
                "hidden": false
            },
            {
                "field": "model.name",
                "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.MODEL",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "allowMultiselect": true,
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "code": "test",
                        "name": "test",
                        "barcode": "test",
                        "model": {
                            "id": 1,
                            "name": "Model",
                            "code": "Model code"
                        }
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.CODE",
                    "field": "code",
                    "type": "link"
                },
                {
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.NAME",
                    "field": "name",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.BARCODE",
                    "field": "barcode",
                    "type": "text"
                },
                {
                    "type": "fieldWithCode",
                    "field": "model.name",
                    "codeField": "model.code",
                    "titleTranslateKey": "ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.MODEL"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_details.Combo_meal_select_from_basket_grid''"
        [dataSource]="self.dataSource"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [pageable]="true"
        [resizable]="true"
        (cellClickEvent)="self.onCellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        (selectionChanged)="self.onSelectionChange($event)"
        [initialSelectedRows]="self.cache.selectedItems"
        [uniqueField]="''id''"
        [allowMultiSelect]="true"
        [selectionDataMode]="''object''"
        [dataCacheName]="''ComboMealCategorySelectFromBasketGrid''"
        [class]=''{{classes}}''
    ></cr-edit-grid-server-paging>
</div>
', '2022-12-08 10:35:36.6700000 +00:00', 3, N'N', '4dbbd138-ffb1-4439-a9e7-c53bbcdceecd', 1, NULL, '2022-11-25 18:15:00.3850400 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('51cc3efe-ed6c-ed11-835f-02f176033ddb', '31a5db8f-ed6c-ed11-835f-02f176033ddb', N'item-combo-meal-select-from-basket-population', N'Item basket', N'{
    "defaultValue": {}
}', N'<cr-basket-population-view
    (addBasket)="self.addPopulationBasket()"
    (deleteBasket)="self.deleteBasketPopulation()"
    (edit)="self.onEditPopulation()"
    [cacheName]="''self.comboMealItemPopulationViewState''"
    [elementName]="''basket-population:Item_details.Combo_meal_select_from_basket_population''"
    [isShowAdd]="true"
    [isShowDelete]="true"
    [isShowEdit]="true"
    [populations]="self.cache.filter"
    [class]=''{{classes}}''
></cr-basket-population-view>', '2022-11-25 18:24:49.6600000 +00:00', 2, N'N', '628f3755-759a-4b7c-942b-ebd52b48d14a', 1, NULL, '2022-11-25 18:21:35.6930769 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d943da5d-936d-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-basket-population-edit-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_ITEM_POPULATION"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>', '2022-11-26 14:12:09.2666667 +00:00', 2, N'N', '818b270d-bbc8-402e-8b74-77290ea3dc48', 1, NULL, '2022-11-26 14:05:23.0558809 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('85eced84-936d-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-basket-population-create-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_POPULATION"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>', '2022-11-26 14:12:37.5200000 +00:00', 2, N'N', '40133c08-bca9-4368-9c0d-aa2812650f0f', 1, NULL, '2022-11-26 14:06:28.6158597 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b5f96ec4-106f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-user-roles-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.DETAILS.ROLE_MANAGER.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-28 11:37:12.7600000 +00:00', 2, N'N', '1d5d0300-93ce-454b-8d84-ecaa132690af', 1, NULL, '2022-11-28 11:35:33.4120501 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('140122cc-486f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-user-roles-grid', N'Roles', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "name",
                "titleTranslateKey": "USER.DETAILS.ROLE_MANAGER.GRID.NAME",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "allowMultiselect": true,
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "name": "Admin"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "USER.DETAILS.ROLE_MANAGER.GRID.NAME",
                    "field": "name",
                    "type": "text"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:DETAILS.Details_roles_manager_grid''"
        [dataSource]="self.dataSource"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [pageable]="true"
        [resizable]="true"
        (pageChangeEvent)="self.changePage($event)"
        [initialSelectedRows]="self.cache.initialSelectedRows"
        [uniqueField]="''id''"
        [allowMultiSelect]="true"
        [selectionDataMode]="''object''"
        [dataCacheName]="''UserDetailsRoleManagerGrid''"
        (selectionChanged)="self.onSelectionChange($event)"
        [class]=''{{classes}}''
    ></cr-edit-grid-server-paging>
</div>
', '2022-12-08 10:56:51.1433333 +00:00', 2, N'N', 'ed03d6c4-6d8b-4478-88d0-1d6528b55312', 1, NULL, '2022-11-28 18:16:38.1462420 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('abf3574a-f36f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'seller-basket-population-create-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CREATE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>', '2022-11-29 14:37:04.3367467 +00:00', 1, N'N', '8dbe941b-7c71-4c2f-8049-508b8749d15e', 1, NULL, '2022-11-29 14:37:04.3367467 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cb479269-f36f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'seller-basket-population-edit-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_EDIT"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>', '2022-11-29 14:37:56.7283787 +00:00', 1, N'N', 'b483e4a0-8fea-411a-952b-77a995b8e927', 1, NULL, '2022-11-29 14:37:56.7283787 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('eba13ba6-f36f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'seller-basket-population-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.BASKET_NAME"
    },
    "fieldSettings": {
        "validationField": "name"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}} || !self.isBasketNameEnabled"
></cr-control-edit>', '2022-11-29 14:41:15.1800000 +00:00', 2, N'N', 'f12ee59b-4614-4d7d-99a0-f227ea8a461c', 1, NULL, '2022-11-29 14:39:38.5015403 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8e29c80f-f46f-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'seller-basket-population-type', N'Type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.BASKET_TYPE"
    }
}', N'<cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [class]=''{{classes}}''
></cr-control-dropdown>', '2022-11-29 14:42:35.5832846 +00:00', 1, N'N', '0ad30ba7-40fb-4c4e-b856-0c9a087c0bb4', 1, NULL, '2022-11-29 14:42:35.5832846 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2696fca9-f46f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'seller-basket-population-grid', N'Seller basket population content', N'{
    "defaultValue": {},
    "fieldSettings": {
        "validationField": "populationBasketContentList",
        "grid": {
            "uniqueField": "id",
            "isColumnManagementHidden": true,
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "dateFrom": "2022-11-29T00:00:00Z",
                        "dateTo": "2022-11-29T00:00:00Z",
                        "type": {
                            "id": 1,
                            "name": "Item property"
                        },
                        "property": {
                            "id": 1,
                            "code": "test",
                            "name": "test"
                        },
                        "value": {
                            "id": 1,
                            "code": "test",
                            "name": "test"
                        }
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "EMPLOYEE.DETAILS.SELLER_IN_STORES.DATE_FROM",
                    "field": "dateFrom",
                    "type": "date-time"
                },
                {
                    "titleTranslateKey": "EMPLOYEE.DETAILS.SELLER_IN_STORES.DATE_TO",
                    "field": "dateTo",
                    "type": "date-time"
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.TYPE",
                    "field": "type",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "name",
                        "valueField": "id"
                    }
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.PROPERTY",
                    "field": "property",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "name",
                        "valueField": "id",
                        "codeField": "code"
                    }
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.VALUE",
                    "field": "value",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "displayName",
                        "valueField": "id",
                        "codeField": "code"
                    }
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-seller-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''{{classes}}''
    ></cr-seller-basket-population-edit-list>
</div>', '2022-12-08 10:53:07.2633333 +00:00', 3, N'N', 'f671f4b5-3f35-4ebd-a43a-3a043a6343d0', 1, NULL, '2022-11-29 14:46:54.2959782 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c7043dfc-f96f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'access-level-basket-population-create-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CREATE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>', '2022-11-29 15:24:59.7750599 +00:00', 1, N'N', '9ecea324-10f3-41ac-bf68-b02807d911ef', 1, NULL, '2022-11-29 15:24:59.7750599 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b34a291e-fa6f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'access-level-basket-population-edit-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_EDIT"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>', '2022-11-29 15:25:56.6883123 +00:00', 1, N'N', 'f8737909-1447-4bc3-b355-730585f26487', 1, NULL, '2022-11-29 15:25:56.6883123 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5dce3848-fa6f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'access-level-basket-population-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.BASKET_NAME"
    },
    "fieldSettings": {
        "validationField": "name"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}} || !self.isBasketNameEnabled"
></cr-control-edit>', '2022-11-29 15:27:07.2542941 +00:00', 1, N'N', '87798477-e797-49c7-8443-00b4b69098cc', 1, NULL, '2022-11-29 15:27:07.2542941 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e09c766a-fa6f-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'access-level-basket-population-type', N'Type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.BASKET_TYPE"
    }
}', N'<cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [class]=''{{classes}}''
></cr-control-dropdown>', '2022-11-29 15:28:04.7018848 +00:00', 1, N'N', '341ae0c0-aee8-422a-9638-a90e25d5325c', 1, NULL, '2022-11-29 15:28:04.7018848 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c81b90da-fa6f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'access-level-basket-population-grid', N'Access level basket population content', N'{
    "defaultValue": {},
    "fieldSettings": {
        "validationField": "populationBasketContentList",
        "grid": {
            "uniqueField": "id",
            "isColumnManagementHidden": true,
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "dateFrom": "2022-11-29T00:00:00Z",
                        "dateTo": "2022-11-29T00:00:00Z",
                        "accessLevel": {
                            "id": 1,
                            "name": "Admin"
                        },
                        "type": {
                            "id": 1,
                            "name": "Item property"
                        },
                        "property": {
                            "id": 1,
                            "code": "test",
                            "name": "test"
                        },
                        "value": {
                            "id": 1,
                            "code": "test",
                            "name": "test"
                        }
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.DATE_FROM",
                    "field": "dateFrom",
                    "type": "date-time"
                },
                {
                    "titleTranslateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.DATE_TO",
                    "field": "dateTo",
                    "type": "date-time"
                },
                {
                    "titleTranslateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.ACCESS_LEVEL",
                    "field": "type",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "name",
                        "valueField": "id"
                    }
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.TYPE",
                    "field": "type",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "name",
                        "valueField": "id"
                    }
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.PROPERTY",
                    "field": "property",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "name",
                        "valueField": "id",
                        "codeField": "code"
                    }
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.VALUE",
                    "field": "value",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "displayName",
                        "valueField": "id",
                        "codeField": "code"
                    }
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-access-level-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        [accessLevelDropdownFn]="self.accessLevelDropdownFn"
        [selectedValueAccessLevel]="self.selectedValueAccessLevel"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''{{classes}}''
    ></cr-access-level-basket-population-edit-list>
</div>', '2022-12-08 10:54:01.7466667 +00:00', 2, N'N', 'fcc61860-ebd3-4c80-a0bc-77a67e515d67', 1, NULL, '2022-11-29 15:31:12.7737928 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e213903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.MANAGE_MAILING_CATEGORIES"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CANCEL",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:47:46.2666667 +00:00', 8, N'N', '58ce3742-9da3-4c77-80e1-f592d560e4f3', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e313903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-grid', N'Mailing categories', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
                {
                    "field": "name",
                    "titleTranslateKey": "PARTNER.DETAILS.GENERAL.DISPLAY_NAME",
                    "hidden": false
                },
                {
                    "field": "sendMail",
                    "titleTranslateKey": "PARTNER.DETAILS.GENERAL.EMAIL",
                    "hidden": false
                },
                {
                    "field": "sendSMS",
                    "titleTranslateKey": "PARTNER.DETAILS.GENERAL.SMS",
                    "hidden": false
                }
            ]
    },
    "fieldSettings": {
        "grid": {
            "allowMultiselect": true,
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "name": "Display name",
                        "sendMail": true,
                        "sendSMS": true
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "field": "name",
                    "titleTranslateKey": "PARTNER.DETAILS.GENERAL.DISPLAY_NAME",
                    "type": "text"
                },
                {
                    "field": "sendMail",
                    "titleTranslateKey": "PARTNER.DETAILS.GENERAL.EMAIL",
                    "type": "boolean",
                    "allowInCellEditing": true,
                    "autoFit": true
                },
                {
                    "field": "sendSMS",
                    "titleTranslateKey": "PARTNER.DETAILS.GENERAL.SMS",
                    "type": "boolean",
                    "allowInCellEditing": true,
                    "autoFit": true
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Partner_details.Mailign_category_grid''"
        [dataCacheName]="''ManageMailingCategoryGrid''"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [dataSource]="self.dataSource"
        [uniqueField]="''id''"
        [resizable]="true"
        [pageable]="true"
        [allowMultiSelect]="true"
        [selectionDataMode]="''object''"
        [initialSelectedRows]="self.cache.selectedMailingCategory"
        (pageChangeEvent)="self.changePage($event)"
        (selectionChanged)="self.onSelectionChange($event)"
        (inCellEditingChange)="self.inCellEditing($event)"
        [class]="{{classes}}"
    ></cr-edit-grid-server-paging>
</div>', '2022-12-08 09:29:48.4300000 +00:00', 18, N'N', '81f0799e-6a71-48e2-ac9c-dd8527b02651', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e413903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-group-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.MANAGE_GROUP.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CANCEL",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:48:15.8100000 +00:00', 4, N'N', 'ba15969a-5d25-49e4-b6c1-2efc3a7e53ca', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e513903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups-grid', N'Partner groups', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME",
                "field": "name",
                "hidden": false
            },
            {
                "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED",
                "field": "isActivated",
                "hidden": false
            },
            {
                "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.FROM",
                "field": "activatedFrom",
                "hidden": false
            },
            {
                "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.TO",
                "field": "activatedTo",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "allowMultiselect": true,
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "name": "Display name",
                        "isActivated": true,
                        "activatedFrom": "1991-06-01T00:00:00.000Z",
                        "activatedTo": "1991-07-01T00:00:00.000Z"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME",
                    "field": "name",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED",
                    "field": "isActivated",
                    "type": "boolean",
                    "allowInCellEditing": true,
                    "autoFit": true
                },
                {
                    "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.FROM",
                    "field": "activatedFrom",
                    "type": "date",
                    "allowInCellEditing": true,
                    "width": "180px"
                },
                {
                    "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.TO",
                    "field": "activatedTo",
                    "type": "date",
                    "allowInCellEditing": true,
                    "width": "180px"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Partner_details.Manage_partner_group_grid''"
        [dataCacheName]="''ManagePartnerGroupGrid''"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [dataSource]="self.dataSource"
        [uniqueField]="''groupId''"
        [resizable]="true"
        [pageable]="true"
        [allowMultiSelect]="true"
        [selectionDataMode]="''object''"
        [initialSelectedRows]="self.cache.selectedGroups | actionFilter"
        [inCellValidator]="self.validateDates"
        (pageChangeEvent)="self.changePage($event)"
        (selectionChanged)="self.onSelectionChange($event)"
        (inCellEditingChange)="self.inCellEditing($event)"
        [class]="{{classes}}"
    ></cr-edit-grid-server-paging>
</div>
', '2022-12-08 09:30:09.5100000 +00:00', 9, N'N', 'bfe2cc17-c273-4cc6-9cab-fa5e99302570', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e613903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.DETAILS_TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:48:45.4933333 +00:00', 6, N'N', '8af6c86c-f206-4df8-bfdb-dbb944450160', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e713903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-addresses-type', N'Address type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE"
    },
    "fieldSettings": {
        "validationField": "partnerAddressType.id"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Address_type''"
    [dataCacheName]="''AddressTypeDropdownCache''"
    [useCache]="false"
    [(value)]="self.address.partnerAddressType.id"
    [textField]="''name''"
    [valueField]="''id''"
    [dataTranslateKeyField]="''translateKey''"
    [(currentItemValue)]="self.address.partnerAddressType"
    [getListItemsFunction]="self.loadAddressTypeListForDropdownFn"
    [validator]="self.validator"
    [validationField]="''partnerAddressType.id''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-11-18 16:40:39.9100000 +00:00', 4, N'N', '09be0254-af09-452d-b424-84a417b09ba9', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e813903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-state', N'State', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.STATE"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-11-04 17:17:04.1400000 +00:00', 4, N'N', '3ea29945-5fbd-41af-a03e-ff8eef08fcb4', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e913903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-country', N'Country', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.COUNTRY"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-11-04 17:17:12.2700000 +00:00', 3, N'N', '184c0339-8d0f-4e2c-b634-0127741b808c', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ea13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-county', N'County', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.COUNTY"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-11-04 17:17:21.1533333 +00:00', 3, N'N', '24d83443-56c6-40d3-b038-151c5bb410d4', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('eb13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-city', N'City', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.CITY"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-11-04 17:17:31.3933333 +00:00', 3, N'N', 'd39266c1-d9c2-4833-86b0-c16378934a9b', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ec13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-zip', N'Zip', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.ZIP"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit>', '2022-11-04 17:17:42.5600000 +00:00', 5, N'N', '9e609193-73aa-4c17-bcc1-f452460011ef', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ed13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-street', N'Street', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.STREET"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-11-04 17:17:49.9500000 +00:00', 3, N'N', '01b8838e-d7e8-44cb-bd0f-c31440e534df', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ee13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-block', N'Block', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.BLOCK"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit>', '2022-11-04 17:18:04.0633333 +00:00', 4, N'N', '8d6e666f-8492-44b9-83bf-a84cbebbb0bf', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ef13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-street-no', N'Street no', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.STREET_NUMBER"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit>', '2022-11-04 17:18:16.5566667 +00:00', 3, N'N', '5c321e8a-daea-4143-9572-84ee17e29e72', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f013903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-apartment', N'Apartment', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.APARTMENT"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit>', '2022-11-04 17:18:24.4900000 +00:00', 3, N'N', '39c20e20-c2b4-4c83-9e4d-cc172e17e618', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f113903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.DETAILS_TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CREATE",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:51:11.6433333 +00:00', 5, N'Y', 'cb3e88c1-8123-4454-8977-39daa1dbaddc', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f213903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-addresses-type', N'Addresses type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Address_type''"
    [dataCacheName]="''AddressTypeDropdownCache''"
    [useCache]="false"
    [(value)]="self.address.partnerAddressType.id"
    [textField]="''name''"
    [valueField]="''id''"
    [dataTranslateKeyField]="''translateKey''"
    [(currentItemValue)]="self.address.partnerAddressType"
    [getListItemsFunction]="self.loadAddressTypeListForDropdownFn"
    [validator]="self.addressValidator"
    [validationField]="''partnerAddressType.id''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-03-10 11:06:20.9400000 +00:00', 2, N'N', '9671ef71-547a-4929-bd03-acf53f963d52', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f313903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-state', N'Addresses state', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.STATE"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-03-10 11:06:51.1833333 +00:00', 2, N'N', '622eea33-8599-4044-885e-cf7fc0189074', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f413903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-country', N'Address country', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.COUNTRY"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-03-10 11:07:50.6433333 +00:00', 3, N'N', '4a9340ca-d9a5-45a3-9b16-24b146158c6a', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f513903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-county', N'Addresses county', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.COUNTY"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-03-10 11:08:11.4700000 +00:00', 2, N'N', 'ebc45da9-f825-48cf-bde8-5f6ab0f5ecd7', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f613903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-city', N'Address city', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.CITY"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-03-10 11:08:35.9500000 +00:00', 2, N'N', '8566f908-a5d7-4c4b-9431-507495a38d92', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f713903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-zip', N'Address zip', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.ZIP"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit>', '2022-03-10 11:08:56.1933333 +00:00', 2, N'N', '54bbb895-0d37-41d6-a3db-ce7bba4d0c75', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f813903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '4a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-street', N'Address street', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.STREET"
    }
}', N'<cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [valueField]="''id''"
    [class]=''{{classes}}''
    [useCache]="false"
></cr-combobox-smart-control>', '2022-03-10 11:09:19.7433333 +00:00', 2, N'N', '020090ec-8736-4371-9660-2f2399ef235c', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f913903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-block', N'Address block', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.BLOCK"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit>', '2022-03-10 11:09:43.5266667 +00:00', 2, N'N', '65fcd290-2bfa-478e-88b6-8662e820626b', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fa13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-street-no', N'Address street no', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.STREET_NUMBER"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit>', '2022-03-10 11:10:24.4233333 +00:00', 2, N'N', 'bc90398a-837c-4ff1-9a06-891ee4a990cc', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fb13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-apartment', N'Address apartment', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.APARTMENT"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit>', '2022-03-10 11:10:54.1933333 +00:00', 2, N'N', '585e10b8-6b84-4dd1-884d-0f3a15530dff', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fc13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.DETAILS_TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CREATE",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
', '2022-11-21 08:51:41.5066667 +00:00', 3, N'N', 'e30f2b5f-6117-4aa8-aba9-21627fccce78', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fd13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_code''"
    [(dataValue)]="self.contactPerson.code"
    [validator]="self.validator"
    [validationField]="''code''"
></cr-control-edit>', '2022-11-18 16:42:01.6533333 +00:00', 5, N'N', '4ddcdb76-4fd4-4228-98cf-b94fa17bf712', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fe13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME"
    },
    "fieldSettings": {
        "validationField": "firstName"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.validator"
    [validationField]="''firstName''"
></cr-control-edit>', '2022-11-18 16:42:39.7033333 +00:00', 3, N'N', '6d610735-c5fe-4b52-bd1d-806674a34af4', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ff13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME"
    },
    "fieldSettings": {
        "validationField": "lastName"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.validator"
    [validationField]="''lastName''"
></cr-control-edit>', '2022-11-18 16:43:10.1533333 +00:00', 3, N'N', 'd0a0865b-c9a2-47f1-aa05-3c8060ce4597', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0014903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-display-name', N'Display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME"
    },
    "fieldSettings": {
        "validationField": "displayName"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.validator"
    [validationField]="''displayName''"
></cr-control-edit>', '2022-11-18 16:43:46.5400000 +00:00', 3, N'N', '5c65a00d-9ee3-47b2-b440-ab8381f1b829', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0114903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-email', N'Email', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.EMAIL"
    },
    "fieldSettings": {
        "validationField": "email"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_email''"
    [(dataValue)]="self.contactPerson.email"
    [validator]="self.validator"
    [validationField]="''email''"
></cr-control-edit>', '2022-11-18 16:44:14.9466667 +00:00', 3, N'N', '1a350cf3-3c02-4561-8246-eb6c8a71ad98', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0214903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-cellural', N'Cellural', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.CELLULAR"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_cellular''"
    [(dataValue)]="self.contactPerson.cellular"
></cr-control-edit>', '2022-11-04 18:12:44.6933333 +00:00', 2, N'N', 'bf446781-3d2d-463c-963c-475eb6a4825c', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0314903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-passport', N'Passport', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.PASSPORT"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_passport''"
    [(dataValue)]="self.contactPerson.passport"
></cr-control-edit>', '2022-11-04 18:12:53.7266667 +00:00', 2, N'N', '44675ae6-71e7-4a00-ac4a-5fdbf3fd392d', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0414903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-fax', N'Fax', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.FAX"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_fax''"
    [(dataValue)]="self.contactPerson.fax"
></cr-control-edit>', '2022-11-04 18:13:01.4233333 +00:00', 2, N'N', '7f18d8f4-de26-45ca-b469-c888c0ef6b5f', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0514903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-phone1', N'Phone 1', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_1"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_first_phone''"
    [(dataValue)]="self.contactPerson.phone1"
></cr-control-edit>', '2022-11-04 18:13:09.4366667 +00:00', 2, N'N', '3a6a0a46-db2b-49d6-aa7e-2df48c8baf84', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0614903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-phone2', N'Phone 2', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_2"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_second_phone''"
    [(dataValue)]="self.contactPerson.phone2"
></cr-control-edit>', '2022-11-04 18:13:17.3100000 +00:00', 2, N'N', '9c8e249f-2218-4dee-b874-9d9993ae3072', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0714903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-remark', N'Remark', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.REMARK"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_remark''"
    [(dataValue)]="self.contactPerson.remark"
></cr-control-edit>', '2022-11-04 18:13:24.4033333 +00:00', 2, N'N', '9128fab9-92a9-47a4-a9ee-969843dc4719', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0814903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-contact-person-type', N'Type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.CONTACT_PERSON_TYPE"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Contact_person_contact_person_type''"
    [dataCacheName]="''ContactPersonTypeDropdownCache''"
    [useCache]="false"
    [(value)]="self.contactPerson.contactPersonType.id"
    [textField]="''name''"
    [valueField]="''id''"
    [dataTranslateKeyField]="''translateKey''"
    [(currentItemValue)]="self.contactPerson.contactPersonType"
    [getListItemsFunction]="self.loadContactPersonTypeListForDropdownFn"
    [validator]="self.contactPersonValidator"
    [validationField]="''contactPersonType.id''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-11-04 19:03:01.4200000 +00:00', 2, N'N', '70493037-c9e5-4c11-8346-4c795e555061', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0914903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-contact-person-partner', N'Partner', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.PARTNER"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Contact_person_partner''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpoints[self.EndpointName.partner_id_dropdown_GET]?.isAccessGranted,
        isAccessEdit: self.authService.endpoints[self.EndpointName.partner_dropdown_GET]?.isAccessGranted && (
            self.isNew ? self.authService.endpoints[self.EndpointName.partner_POST]?.isAccessGranted :
            self.authService.endpoints[self.EndpointName.partner_id_PUT]?.isAccessGranted)
    }"
    [dataCacheName]="''ContactPersonListDropdownCache''"
    [(value)]="self.contactPerson.selfPartnerId"
    [textField]="''name''"
    [valueField]="''id''"
    [dataTranslateKeyField]="''translateKey''"
    [getListItemsFunction]="self.loadPartnerListForDropdownFn"
    [getOneItemFunction]="self.loadPartnerItemForDropdownFn"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [codeField]="''code''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-11-04 18:13:31.3900000 +00:00', 2, N'N', 'dca13f21-58a2-47f3-801c-80f1d989926c', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0a14903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-contact-person-creation-store', N'Creation store', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.CREATION_STORE"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Contact_person_creation_store''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpoints[self.EndpointName.partner__location_objectId_dropdown_GET]?.isAccessGranted,
        isAccessEdit: self.authService.endpoints[self.EndpointName.partner__location_dropdown_GET]?.isAccessGranted && (
            self.isNew ? self.authService.endpoints[self.EndpointName.partner_POST]?.isAccessGranted :
            self.authService.endpoints[self.EndpointName.partner_id_PUT]?.isAccessGranted)
    }"
    [dataCacheName]="''ContactPersonCreationStoreDropdownCache''"
    [(value)]="self.contactPerson.creationStoreId"
    [textField]="''name''"
    [valueField]="''id''"
    [dataTranslateKeyField]="''translateKey''"
    [getListItemsFunction]="self.loadStoreListForDropdownFn"
    [getOneItemFunction]="self.loadStoreForDropdownFn"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [codeField]="''code''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-11-04 18:13:43.4866667 +00:00', 3, N'N', '42e01a81-7ed9-4e8e-8a3f-3fc3a969a3f5', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0b14903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-birthday', N'Birthday', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.BIRTHDAY"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_birthday_date''"
    [(dataValue)]="self.contactPerson.birthDay"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-11-04 18:13:52.0700000 +00:00', 2, N'N', '01885a14-7867-4c38-914f-49ed39221c5f', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0c14903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-registration-date', N'Registration date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.REGISTRATION_DATE"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_registration_date''"
    [(dataValue)]="self.contactPerson.registrationDate"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-11-04 18:14:00.7900000 +00:00', 2, N'N', '4a6ad749-c66e-4e1f-bb3f-284b8e049527', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0d14903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-is-partner-club', N'Is partner club', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.PARTNER_CLUB"
    }
}', N'<cr-checkbox-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [elementName]="''edit:Partner_details.Contact_person_is_partner_club''"
    [(dataValue)]="self.contactPerson.isPartnerClub"
></cr-checkbox-control>', '2022-11-04 18:14:09.0400000 +00:00', 2, N'N', 'f9265f1a-f07c-4c10-aec0-757b9e568ee8', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0e14903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '403c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-mailing-category', N'Mailing category', N'{
    "defaultValue": {
        "editIcon": "icon-edit",
        "editable": true
    }
}', N'<cr-partner-mailing-category-control
    [editable]="{{editable}} && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.contactPerson.id"
    [(selectedMailingCategory)]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
></cr-partner-mailing-category-control>', '2022-12-07 15:21:40.0566667 +00:00', 3, N'N', '6fb89b8d-e7b3-4435-9472-4f2bfc0a5eca', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('14a898d8-936d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-basket-population-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.BASKET_NAME"
    },
    "fieldSettings": {
        "validationField": "name"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.basketValidator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}} || !self.isBasketNameEnabled"
></cr-control-edit>', '2022-12-20 12:08:16.7533333 +00:00', 4, N'N', 'da94ec6f-7c70-4b00-bd18-cae1e1f41a2f', 1, NULL, '2022-11-26 14:08:48.9856660 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('35523ecd-946d-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-basket-population-type', N'Type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.BASKET.BASKET_EDIT.BASKET_TYPE"
    }
}', N'<cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [class]=''{{classes}}''
></cr-control-dropdown>', '2022-12-20 12:09:32.4700000 +00:00', 3, N'N', '4d8a422c-b5e0-42a0-b6f6-55e22c57c780', 1, NULL, '2022-11-26 14:15:39.4354357 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('84a0b718-966d-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-basket-population-grid', N'Basket population content', N'{
    "defaultValue": {},
    "fieldSettings": {
        "validationField": "populationBasketContentList",
        "grid": {
            "uniqueField": "id",
            "isColumnManagementHidden": true,
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "type": {
                            "id": 1,
                            "name": "Item property"
                        },
                        "property": {
                            "id": 1,
                            "code": "test",
                            "name": "test"
                        },
                        "value": {
                            "id": 1,
                            "code": "test",
                            "name": "test"
                        }
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.TYPE",
                    "field": "type",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "name",
                        "valueField": "id"
                    }
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.PROPERTY",
                    "field": "property",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "name",
                        "valueField": "id",
                        "codeField": "code"
                    }
                },
                {
                    "titleTranslateKey": "COMMON.BASKET.BASKET_EDIT.VALUE",
                    "field": "value",
                    "type": "dropdown",
                    "dropdownOptions": {
                        "usePrimitiveForBinding": false,
                        "textField": "displayName",
                        "valueField": "id",
                        "codeField": "code"
                    }
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''{{classes}}''
    ></cr-basket-population-edit-list>
</div>', '2022-12-20 12:10:29.7733333 +00:00', 5, N'N', 'a65a72fa-5be7-4d44-8b7d-5910e9ef1f6b', 1, NULL, '2022-11-26 14:24:55.5562756 +00:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0f14903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'tax-group-definition-title', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.PANEL.TITLE_DEFINITIONS"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [additionalTranslateKeys]="''COMMON.NEW''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
', '2022-12-19 16:22:01.3300000 +00:00', 4, N'Y', '00d57d7c-0bb1-4fb3-ada7-39bfff7a6aff', 1, NULL, '2022-10-06 12:05:15.6069016 +03:00')

INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9dae967d-9982-ed11-8360-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-list-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.FILTER.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
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
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-12-23 08:12:37.1133333 +00:00', 2, N'N', 'e6737aa5-68ed-4b90-905d-c6309fdeb093', 1, NULL, '2022-12-23 08:12:07.6987677 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8ee092fa-a482-ed11-8360-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-list-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.FILTER.CODE"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Coupon_series.Code''"
    [(dataValue)]="self.seriesListFilterRequest.code"
    [permissionSettings]="{isAccessEdit: (self.EndpointName.coupon_series_GET | endpointAccessGrantedPipe)}"
></cr-control-edit>', '2022-12-23 09:34:21.8530574 +00:00', 1, N'N', '59bd8469-46e6-4aa4-a772-45485a78d772', 1, NULL, '2022-12-23 09:34:21.8530574 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a98e058e-a582-ed11-8360-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-list-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.FILTER.NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Coupon_series.Name''"
    [(dataValue)]="self.seriesListFilterRequest.name"
    [permissionSettings]="{isAccessEdit: (self.EndpointName.coupon_series_GET | endpointAccessGrantedPipe)}"
></cr-control-edit>
', '2022-12-23 10:35:52.7300000 +00:00', 3, N'N', '65ab6263-a264-4bcb-a5a4-9f3f3a5231df', 1, NULL, '2022-12-23 09:38:29.2297001 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c2ae8a2d-a682-ed11-8360-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-list-search', N'Search', N'{
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
    *ngIf="(self.EndpointName.coupon_series_GET | endpointAccessGrantedPipe)"
></cr-button-control>', '2022-12-23 09:42:56.8598850 +00:00', 1, N'N', '676116cb-53c7-4a1c-9cfe-35a3b622417a', 1, NULL, '2022-12-23 09:42:56.8598850 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('99dfcaf1-a882-ed11-8360-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-list-grid', N'Coupon series list grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "SERIES.LIST.CODE",
                "hidden": false
            },
            {
                "field": "displayName",
                "titleTranslateKey": "SERIES.LIST.NAME",
                "hidden": false
            },
            {
                "field": "genFrom",
                "titleTranslateKey": "SERIES.LIST.FROM",
                "hidden": false
            },
            {
                "field": "genTo",
                "titleTranslateKey": "SERIES.LIST.TO",
                "hidden": false
            },
            {
                "field": "manualDiscountPrice",
                "titleTranslateKey": "SERIES.LIST.MANUAL_DISCOUNT_PRICE",
                "hidden": false
            },
            {
                "field": "couponsGenerated",
                "titleTranslateKey": "SERIES.LIST.GENERATED",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "type": "link",
                    "field": "code",
                    "titleTranslateKey": "SERIES.LIST.CODE",
                    "disableIf": null
                },
                {
                    "type": "text",
                    "field": "displayName",
                    "titleTranslateKey": "SERIES.LIST.NAME"
                },
                {
                    "type": "numeric",
                    "field": "genFrom",
                    "titleTranslateKey": "SERIES.LIST.FROM"
                },
                {
                    "type": "numeric",
                    "field": "genTo",
                    "titleTranslateKey": "SERIES.LIST.TO"
                },
                {
                    "type": "boolean",
                    "field": "manualDiscountPrice",
                    "titleTranslateKey": "SERIES.LIST.MANUAL_DISCOUNT_PRICE",
                    "autoFit": true
                },
                {
                    "titleTranslateKey": "SERIES.LIST.GENERATED",
                    "field": "couponsGenerated",
                    "type": "boolean",
                    "autoFit": true
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "code": "1",
                        "couponsGenerated": false,
                        "displayName": "Coupon series",
                        "manualDiscountPrice": false,
                        "genTo": 1000,
                        "genFrom": 1
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
      <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Coupon_series.Grid''"
        [dataSource]="self.gridData"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        (pageChangeEvent)="self.changePage($event)"
        (cellClickEvent)="self.cellClick($event)"
        [dataCacheName]="''coupon-series-grid-cache''"
      ></cr-edit-grid-server-paging>
    </div>', '2022-12-23 10:05:58.4833333 +00:00', 3, N'N', 'd45f0e9b-dae8-4c29-8456-5333a7dd17ed', 1, NULL, '2022-12-23 10:02:45.1074585 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bde03c10-b782-ed11-8360-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.series.code"
    [elementName]="''edit:Coupon_series_details.Code''"
    [permissionSettings]="{
            isAccessEdit: self.isNewSeries ? (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.seriesValidator"
    [validationField]="''code''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="!self.isNewSeries || {{disabled}}"
></cr-control-edit>', '2022-12-23 11:46:23.1266667 +00:00', 2, N'N', 'b5d84617-1e41-49aa-bae5-cd472fed3045', 1, NULL, '2022-12-23 11:43:49.1404605 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6715caf0-b782-ed11-8360-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.NAME"
    },
    "fieldSettings": {
        "validationField": "displayName"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.series.displayName"
    [elementName]="''edit:Coupon_series_details.Name''"
    [permissionSettings]="{
            isAccessEdit: self.isNewSeries ? (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.seriesValidator"
    [validationField]="''displayName''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    (dataValueChange)="self.changeTitle()"
></cr-control-edit>', '2022-12-27 08:32:36.9533333 +00:00', 2, N'N', '8d844265-cc40-45c6-8c6e-6e5514fedc4a', 1, NULL, '2022-12-23 11:50:05.8755047 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('aed8a6e4-b882-ed11-8360-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-valid-days', N'Coupon valid days', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.COUPON_VALID_DAYS",
        "format": "''n0''"
    },
    "fieldSettings": {
        "validationField": "couponValidDays"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Coupon_series_details.Coupon_valid_days''"
    [(dataValue)]="self.series.couponValidDays"
    [permissionSettings]="{
                    isAccessEdit: self.isNewSeries ?
                    (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe):
                    (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
                  }"
    [validationField]="''couponValidDays''"
    [validator]="self.seriesValidator"      
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-12-23 11:56:55.0086446 +00:00', 1, N'N', 'b982934f-8d5b-4c17-9b30-ed81d33ee54c', 1, NULL, '2022-12-23 11:56:55.0086446 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cfe27deb-ba82-ed11-8360-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-no-range', N'No range', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.NO_RANGE",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Coupon_series_details.No_range''"
    [permissionSettings]="{
                    isAccessEdit: self.isNewSeries ?
                    (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe):
                    (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
                  }"
    [(dataValue)]="self.series.withoutRange"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="!self.isNewSeries"
    [class]=''{{classes}}''
    (dataValueChange)="self.onNoRangeChange()"
></cr-checkbox-control>', '2022-12-23 12:42:36.8566667 +00:00', 2, N'N', '3a993cc6-126a-481b-9560-10394614b795', 1, NULL, '2022-12-23 12:11:25.4777167 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2389c4c0-bb82-ed11-8360-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-range-from', N'Coupon range from ', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.COUPONS_RANGE_FROM",
        "format": "''n0''",
        "autoCorrectMinMax": true,
        "max": 2147483647
    },
    "fieldSettings": {
        "validationField": "genFrom"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Coupon_series_details.Coupon_range_from''"
    [(dataValue)]="self.series.genFrom"
    [permissionSettings]="{
                    isAccessEdit: self.isNewSeries ?
                    (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe):
                    (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
                  }"
    [validationField]="''genFrom''"
    [validator]="self.seriesValidator"      
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="!self.isNewSeries"
></cr-numeric-control>', '2022-12-26 12:18:19.9333333 +00:00', 2, N'N', '4be078d6-7571-41ab-963e-2d1ad0bb2593', 1, NULL, '2022-12-23 12:17:23.2954275 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d00f6450-bd82-ed11-8360-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-range-to', N'Coupon range to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.COUPONS_RANGE_TO",
        "format": "''n0''",
        "autoCorrectMinMax": true,
        "max": 2147483647
    },
    "fieldSettings": {
        "validationField": "genTo"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Coupon_series_details.Coupon_range_to''"
    [(dataValue)]="self.series.genTo"
    [permissionSettings]="{
                    isAccessEdit: self.isNewSeries ?
                    (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe):
                    (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
                  }"
    [validationField]="''genTo''"
    [validator]="self.seriesValidator"      
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-12-26 12:19:27.1100000 +00:00', 2, N'N', 'd31cb006-1370-4bc5-9187-b6639b050654', 1, NULL, '2022-12-23 12:28:33.7518160 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('55308202-be82-ed11-8360-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-next-coupon-number', N'Next coupon number', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.NEXT_COUPON_NUMBER"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.series.nextCouponNumber"
    [elementName]="''edit:Coupon_series_details.Next_coupon_number''"
    [permissionSettings]="{
            isAccessEdit: self.isNewSeries ? (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
          }"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="true"
    [isReadOnly]="true"
></cr-control-edit>', '2022-12-26 12:27:27.6500000 +00:00', 4, N'N', 'cbac5d1d-a4ed-4b9d-9f46-a6c2f9b9a104', 1, NULL, '2022-12-23 12:33:32.5837013 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('489cfac3-be82-ed11-8360-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-status', N'Status', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.CLOSED"
    }
}', N'<cr-dropdown-smart-control
                [elementName]="''smart-dropdown:Coupon_series_details.Status''"
                [permissionSettings]="{
                  isAccessEdit: self.isNewSeries ?
                    (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe):
                    (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
              }"
                [(value)]="self.series.couponsGenerated"
                [textField]="''name''"
                [valueField]="''propertyBoolean''"
                [isDisabled]="true"
                [isReadOnly]="true"
                [getListItemsFunction]="self.getSeriesCouponStatusDropdownListFn$"
                [getOneItemFunction]="self.getSeriesCouponStatusItemDropdownFn$"
                [dataCacheName]="''SeriesDetailsStatusDropdownCache''"
                [labelTranslateKey]="{{translateKey}}"
                [label]="{{label}}"
                [class]=''{{classes}}''
                >
              </cr-dropdown-smart-control>', '2022-12-26 12:20:21.7933333 +00:00', 2, N'N', '7f4a050c-f92c-45fa-90de-0284694cf917', 1, NULL, '2022-12-23 12:38:57.1731656 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('906acc71-bf82-ed11-8360-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-manual-discount-price', N'Manual discount price', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.AS_VOUCHER"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Coupon_series_details.Manual_discount_price''"
    [permissionSettings]="{
                    isAccessEdit: self.isNewSeries ?
                    (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe):
                    (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
                  }"
    [(dataValue)]="self.series.manualDiscountPrice"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-12-23 12:43:48.7939856 +00:00', 1, N'N', 'd0cf07c8-f5e4-4ef5-9c42-78584991f181', 1, NULL, '2022-12-23 12:43:48.7939856 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5d00f26a-c182-ed11-8360-02f176033ddb', '453c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-voucher-text', N'Voucher text', N'{
    "defaultValue": {
        "translateKey": "SERIES.DETAILS.VOUCHER_TEXT"
    }
}', N'<cr-text-area-control
    [(dataValue)]="self.series.voucherText"
    [elementName]="''textarea:Coupon_series_details.Voucher_text''"
    [permissionSettings]="{
              isAccessEdit: self.isNewSeries ?
                (self.EndpointName.coupon_series_POST | endpointAccessGrantedPipe):
                (self.EndpointName.coupon_series_id_PUT | endpointAccessGrantedPipe)
              }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
    [rows]="10"
    [maxlength]="{{maxLength}}"
></cr-text-area-control>', '2022-12-26 12:31:23.6533333 +00:00', 5, N'N', '19b2a7c1-44ae-481f-bb54-e7fc99de41d0', 1, NULL, '2022-12-23 12:57:56.2897117 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('480d206f-c382-ed11-8360-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'coupon-series-details-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "SERIES.DETAILS.TITLE"
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
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValueTranslateKey]="self.isNewSeries ? ''COMMON.NEW'' : null"
></cr-title-header>', '2022-12-27 10:26:51.4033333 +00:00', 3, N'N', 'c5ff46a2-7668-4aa0-a64c-ad10784d5862', 1, NULL, '2022-12-23 13:12:22.2958536 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d90bc7b3-2185-ed11-8360-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'role-list-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ROLE.LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-pin",
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
></cr-title-header>', '2022-12-26 13:32:12.4934745 +00:00', 1, N'N', '97eb7f23-7509-48c5-8c01-012be2391ffb', 1, NULL, '2022-12-26 13:32:12.4934745 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6d2442a6-2285-ed11-8360-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'role-list-grid', N'Role list grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "ROLE.LIST.GRID.CODE",
                "hidden": false
            },
            {
                "field": "name",
                "titleTranslateKey": "ROLE.LIST.GRID.NAME",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "type": "link",
                    "field": "code",
                    "titleTranslateKey": "ROLE.LIST.GRID.CODE",
                    "disableIf": null
                },
                {
                    "type": "text",
                    "field": "name",
                    "titleTranslateKey": "ROLE.LIST.GRID.NAME"
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "code": "dev",
                        "name": "dev"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N' <div class="cr-grid-wrapper-new">
        <cr-edit-grid-server-paging
          [elementName]="''edit-grid-server-paging:Role_list.Grid''"
          [dataSource]="self.dataSource"
          [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
          [pageable]="true"
          [resizable]="true"
          [uniqueField]="''id''"

          (pageChangeEvent)="self.changePage($event)"
          (cellClickEvent)="self.cellClick($event)"
          [dataCacheName]="''role-grid-cache''"
        ></cr-edit-grid-server-paging>
      </div>', '2022-12-26 13:40:32.7233333 +00:00', 2, N'N', '700603c6-ba34-484c-83de-e95f9952ae5a', 1, NULL, '2022-12-26 13:38:59.3088237 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('117e1c7d-c085-ed11-8360-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'role-details-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ROLE.DETAILS.CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.currentItem.code"
    [elementName]="''edit:Role_details.Code''"
    [permissionSettings]="{
            isAccessEdit: self.isNew ? (self.EndpointName.role_POST | endpointAccessGrantedPipe) :
                              (self.EndpointName.role_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.validator"
    [validationField]="''code''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.currentItem.isDeleted"
></cr-control-edit>', '2022-12-27 08:28:50.7587729 +00:00', 1, N'N', 'cc14fae7-f5b1-4c91-ae11-dd8f0d063eec', 1, NULL, '2022-12-27 08:28:50.7587729 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('3530d70c-c185-ed11-8360-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'role-details-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ROLE.DETAILS.NAME"
    },
    "fieldSettings": {
        "validationField": "name"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.currentItem.name"
    [elementName]="''edit:Role_details.Name''"
    [permissionSettings]="{
            isAccessEdit: self.isNew ? (self.EndpointName.role_POST | endpointAccessGrantedPipe) :
                              (self.EndpointName.role_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.currentItem.isDeleted"
    (dataValueChange)="self.changeTitle()"
></cr-control-edit>', '2022-12-27 08:32:51.8964917 +00:00', 1, N'N', '9c95f950-4818-4045-aa51-cdc0d2639d52', 1, NULL, '2022-12-27 08:32:51.8964917 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('83bf531e-d085-ed11-8360-02f176033ddb', 'f8e29e4a-cf85-ed11-8360-02f176033ddb', N'role-permission-tree', N'Role permission tree', N'{
    "defaultValue": {}
}', N'<cr-role-permission-tree
        *ngIf="(self.EndpointName.role__function_tree_list_GET | endpointAccessGrantedPipe)"
        [isNew]="self.isNew"
        [(selected)]="self.currentItem.functions"
        [editable]="!self.currentItem.isDeleted && (self.isNew
                        ? (self.EndpointName.role_POST | endpointAccessGrantedPipe)
                        : (self.EndpointName.role_id_PUT | endpointAccessGrantedPipe))">
</cr-role-permission-tree>', '2022-12-28 08:49:45.7100000 +00:00', 6, N'N', 'e7d3efcc-7afd-40dd-8708-d44d1c75023a', 1, NULL, '2022-12-27 10:20:43.6850179 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6820250a-d185-ed11-8360-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'role-details-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ROLE.DETAILS.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
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
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValueTranslateKey]="self.isNewSeries ? ''COMMON.NEW'' : null"
></cr-title-header>', '2022-12-28 08:10:10.2233333 +00:00', 2, N'N', 'daa6041a-63ca-43e0-b387-ec94f01547d3', 1, NULL, '2022-12-27 10:27:19.3217768 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('99bfd727-9986-ed11-8360-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'collection-season-list-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_COLLECTIONS.SEASON.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-pin",
                    "template": "custom" 
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-refresh",
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
></cr-title-header>', '2022-12-28 10:19:48.4922393 +00:00', 1, N'N', '83a4999f-7abc-44c9-afa3-9041dee5ca28', 1, NULL, '2022-12-28 10:19:48.4922393 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('3ea1684d-7c69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy1', N'Hierarchy 1', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "validationField": "itemHierarchyValues.1",
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_1''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel1DropdownCache''"
    (valueChange)="self.onSelectValue($event, 1)"
    [(value)]="self.item.itemHierarchyValues[''1'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 1, hierarchyParentId: null}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''itemHierarchyValues.1''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''1''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:49:28.6666667 +00:00', 5, N'N', '08ccfdd3-f7b0-490d-b67d-ba760fec8ce6', 1, NULL, '2022-11-21 09:10:12.3917246 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('996762e0-7e69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy2', N'Hierarchy 2', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_2''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.itemHierarchyValues[''1''] || self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel2DropdownCache''"
    (valueChange)="self.onSelectValue($event, 2)"
    [(value)]="self.item.itemHierarchyValues[''2'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 2, hierarchyParentId: self.item.itemHierarchyValues[''1'']}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''2''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:49:43.6100000 +00:00', 2, N'N', 'b4eb2187-551f-497a-82fc-1613b3702d03', 1, NULL, '2022-11-21 09:28:37.9694617 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8d84b11a-7f69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy3', N'Hierarchy 3', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_3''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.itemHierarchyValues[''2''] || self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel3DropdownCache''"
    (valueChange)="self.onSelectValue($event, 3)"
    [(value)]="self.item.itemHierarchyValues[''3'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 3, hierarchyParentId: self.item.itemHierarchyValues[''2'']}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''3''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:49:58.4500000 +00:00', 2, N'N', 'f8eb891b-9f73-4088-a359-052a2328250e', 1, NULL, '2022-11-21 09:30:15.7957901 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1e5a5a4f-7f69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy4', N'Hierarchy 4', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_4''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.itemHierarchyValues[''3''] || self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel4DropdownCache''"
    (valueChange)="self.onSelectValue($event, 4)"
    [(value)]="self.item.itemHierarchyValues[''4'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 4, hierarchyParentId: self.item.itemHierarchyValues[''3'']}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''4''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:50:13.4800000 +00:00', 3, N'N', 'c95cc868-f20f-4a98-bfe3-ec7c2b0d8d5c', 1, NULL, '2022-11-21 09:31:44.1437854 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('12b2a284-7f69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy5', N'Hierarchy 5', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_5''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.itemHierarchyValues[''4''] || self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel5DropdownCache''"
    (valueChange)="self.onSelectValue($event, 5)"
    [(value)]="self.item.itemHierarchyValues[''5'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 5, hierarchyParentId: self.item.itemHierarchyValues[''4'']}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''5''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:50:27.7633333 +00:00', 2, N'N', '15badf61-2cd0-4a74-a9a0-c41a56a8f974', 1, NULL, '2022-11-21 09:33:13.5371410 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d04e1898-8069-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-manufacture', N'Manufacture', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.MANUFACTURE"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Manufacture''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_manufacture_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_manufacture_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemManufactureDropdownCache''"
    [(value)]="self.item.manufactureID"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadManufacturesListDropdownFunction"
    [getOneItemFunction]="self.loadManufactureDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:50:42.8500000 +00:00', 2, N'N', '388fe919-ea3c-4c8e-856a-a816de791c5a', 1, NULL, '2022-11-21 09:40:55.6813648 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f15f8e28-8169-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-brand', N'Brand', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.BRAND"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.General_brand''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_brand_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_brand_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemBrandDropdownCache''"
    [(value)]="self.item.itemBrandID"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemBrandListDropdownFunction"
    [getOneItemFunction]="self.loadItemBrandDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:50:57.0100000 +00:00', 2, N'N', 'f92d1409-dcdb-4666-846c-4f9cb83c4cf3', 1, NULL, '2022-11-21 09:44:58.0470385 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e1788194-8169-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-preferred-supplier', N'Preferred supplier', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.PREFERRED_SUPPLIER"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Preferred_supplier''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__partner_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__partner_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''PreferredSupplierDropdownCache''"
    [(value)]="self.item.prefferedSupplierID"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadPreferredSupplierListDropdownFunction"
    [getOneItemFunction]="self.loadPreferredSupplierDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:51:12.0500000 +00:00', 2, N'N', 'c5b25737-6940-4b07-b3dc-2b3ad376bd4c', 1, NULL, '2022-11-21 09:47:59.1564129 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b95693f0-8169-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-unit-type', N'Unit type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.UNIT_TYPE"
    }
}', N'<cr-control-dropdown 
    [(dataValue)]="self.item.unitTypeId" 
    [isDisabled]="self.item.isDeleted" 
    [dataSource]="self.unitTypesForDropdown"
    [dataValueField]="''id''" 
    [dataDisplayField]="''name''" 
    [elementName]="''dropdown:Item_details.Unit_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [class]=''{{classes}}''
></cr-control-dropdown>', '2022-11-25 09:51:30.4266667 +00:00', 3, N'N', 'e3ff8ad1-5c22-4372-9c0c-7f67ff4cc80f', 1, NULL, '2022-11-21 09:50:33.6238905 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('05904893-8269-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-supplier-cat-num', N'Supplier cat num', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.SUPPLIER_CAT_NUM"
    },
    "fieldSettings": {
        "validationField": "supplierCatNum"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Supplier_cat_num''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.supplierCatNum"
    [validator]="self.validator"
    [validationField]="''supplierCatNum''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.item.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-11-25 09:51:44.2233333 +00:00', 4, N'N', '56640f7c-d46b-4649-8b8d-97a3cd93dd97', 1, NULL, '2022-11-21 09:55:06.6024581 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9a7612c9-8469-ed11-835f-02f176033ddb', '07bc3452-8469-ed11-835f-02f176033ddb', N'item-details-collections', N'Collections', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.COLLECTIONS"
    }
}', N'<cr-multi-select-smart-control
    [(values)]="self.item.collections"
    [dataCacheName]="''CollectionsDropdownCache111''"
    [isDisabled]="self.item.isDeleted"
    [elementName]="''smart-multi-select:Item_details.Collections''"
    [getListItemsFunction]="self.loadCollectionListMultiselectFunction"
    [getSelectedItemsFunction]="self.loadCollectionMultiselectFunction"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_collection_dropdown_ids_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_collection_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [textField]="''name''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [valueField]="''id''"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [class]=''{{classes}}''
></cr-multi-select-smart-control>', '2022-11-25 09:52:01.7033333 +00:00', 2, N'N', 'e377cba4-eb89-465c-b9f6-263f924e7c31', 1, NULL, '2022-11-21 10:10:55.8383386 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1ccfb389-9269-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-tax-group', N'Tax group', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.TAX_GROUP"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Tax_group''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__tax_group_id_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__tax_group_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''TaxGroupDropdownCache''"
    [(currentItemValue)]="self.item.taxGroup"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadTaxGroupListDropdownFunction"
    [getOneItemFunction]="self.loadTaxGroupDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:52:16.2233333 +00:00', 2, N'N', 'a832db71-4994-494a-a440-24eda1591c36', 1, NULL, '2022-11-21 11:49:22.4757660 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a39f996f-9369-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-active', N'Active', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.ACTIVE",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Active''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeActiveCheckbox($event)"
    [(dataValue)]="self.item.isValid"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:52:30.6966667 +00:00', 2, N'N', 'd2e52a79-3447-450b-a185-834fdbdd067f', 1, NULL, '2022-11-21 11:55:48.1801251 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e9de7ac7-9369-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-active-from', N'Active from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.ACTIVE_FROM"
    },
    "fieldSettings": {
        "validationField": "validFrom"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:52:47.3233333 +00:00', 2, N'N', '6de0f93b-ee4a-4a28-b2d1-882d3bf7006a', 1, NULL, '2022-11-21 11:58:15.6180841 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7d6727f0-9369-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-active-to', N'Active to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.ACTIVE_TO"
    },
    "fieldSettings": {
        "validationField": "validTo"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validTo"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:53:03.1800000 +00:00', 2, N'N', '8dbe425d-7804-4aee-a30f-a888a1f2943c', 1, NULL, '2022-11-21 11:59:23.8576637 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('96daeff7-9469-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-frozen', N'Frozen', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.FROZEN",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeFrozenCheckbox($event)"
    [(dataValue)]="self.item.isFrozen"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:53:18.8066667 +00:00', 2, N'N', '4cce1d5e-2d49-464f-a2b3-6c0239880643', 1, NULL, '2022-11-21 12:06:46.4121110 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('24a1613e-9569-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-frozen-from', N'Frozen from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.FROZEN_FROM"
    },
    "fieldSettings": {
        "validationField": "frozenFrom"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenFrom"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:53:34.5200000 +00:00', 2, N'N', 'b8f330b6-e360-4dc7-b8f7-c972edbcf3da', 1, NULL, '2022-11-21 12:08:44.5982628 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('49d39875-9569-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-frozen-to', N'Frozen to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.FROZEN_TO"
    },
    "fieldSettings": {
        "validationField": "frozenTo"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:53:49.4633333 +00:00', 2, N'N', '25ed92e2-f141-4c1b-8566-927420300bb1', 1, NULL, '2022-11-21 12:10:17.2346825 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6fa0223a-9669-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-sale-item', N'Sale item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.SALE_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Sale_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.saleItem"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:54:04.4133333 +00:00', 2, N'N', '53efcb36-3016-439e-b6ba-1819329674a8', 1, NULL, '2022-11-21 12:15:55.6627013 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9e7fbc78-9669-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-inventory-item', N'Inventory item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.INVENTORY_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Inventory_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.inventoryItem"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:54:18.8333333 +00:00', 2, N'N', 'fca4b73b-893b-4511-830e-ce8cd42debd2', 1, NULL, '2022-11-21 12:17:31.9983646 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('26f9f8b2-9669-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-purchase-item', N'Purchase item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.PURCHASE_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseItem"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:54:33.3433333 +00:00', 2, N'N', '2782ae14-bbb5-45d7-9045-baeea1c93fad', 1, NULL, '2022-11-21 12:19:09.7025446 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0ed416e1-9669-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-refundable', N'Refundable', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.REFUNDABLE",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Refundable''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.refundable"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:54:48.8833333 +00:00', 2, N'N', '72cf21c8-55ba-4d56-a0bc-99bfab2afd24', 1, NULL, '2022-11-21 12:20:27.0733966 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bfc4320f-9769-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-download-to-pos', N'Download to POS', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.DOWNLOAD_TO_POS",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Download_to_pos''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.downloadToPOS"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:55:03.9400000 +00:00', 2, N'N', '520d0e40-c1ba-4372-b0aa-12fc4954b5d6', 1, NULL, '2022-11-21 12:21:44.4316991 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('64217b46-9769-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-consignment-item', N'Consignment item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.CONSIGNMENT_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Consignment_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isConsignmentItem"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:55:19.4700000 +00:00', 2, N'N', '2c109de2-1830-40ec-9ada-f4d78d042450', 1, NULL, '2022-11-21 12:23:17.1806180 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cdeabae1-9769-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-gift-card', N'Gift card', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.GIFT_CARD_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Gift_card_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.giftCard"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:55:34.8433333 +00:00', 2, N'N', '06c803aa-75c7-45d9-8315-07d4d1c02f87', 1, NULL, '2022-11-21 12:27:37.6454989 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('07b8411a-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-distribution-recommendation', N'Distribution recommendation', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.DISTRIBUTION_RECOMMENDATION",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Distribution_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.distributionRecommendation"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:55:49.0900000 +00:00', 2, N'N', '0778e0c4-9252-4309-a45e-8a6e7e2d3f63', 1, NULL, '2022-11-21 12:29:12.4813447 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('abeead48-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-purchase-recommendation', N'Purchase recommendation', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.PURCHASE_RECOMMENDATION",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseRecommendation"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:56:05.1400000 +00:00', 2, N'N', '263ee669-63d0-4a97-88ae-de24c4d1ac55', 1, NULL, '2022-11-21 12:30:30.3657259 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('09725176-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-direct-supply', N'Direct supply', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.DIRECT_SUPPLY",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Direct_supply''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.directSupply"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:56:19.0633333 +00:00', 2, N'N', 'ed0566e7-c6d2-43ca-a89f-e84dde84432b', 1, NULL, '2022-11-21 12:31:46.9347977 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d72840af-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-history', N'History', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.HISTORY",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.History''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.history"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:56:38.6400000 +00:00', 2, N'N', '8d5fc364-3667-4914-af1e-25b7ba5bd502', 1, NULL, '2022-11-21 12:33:22.4516439 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f37e8dd9-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-allow-zero-price', N'Allow zero price', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.ALLOW_ZERO_PRICE",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Allow_zero_price''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isAllowZeroPrice"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:56:54.8400000 +00:00', 2, N'N', '0c223b94-7a0c-4300-920b-71c337c56d79', 1, NULL, '2022-11-21 12:34:33.4227827 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0799b53d-9969-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-is-modifier', N'Is modifier', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.IS_MODIFIER",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_modifier''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__item_modifier_group_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isModifier"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isComboMeal || self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:57:10.9100000 +00:00', 2, N'N', '0ebcff63-ef4a-44cb-9f25-fb348ce4c46f', 1, NULL, '2022-11-21 12:37:21.4577543 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1a6ac9b8-9969-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-is-combo-meal', N'Is combo meal', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.IS_COMBO_MEAL",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_combo_meal''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__combo_meal_category_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isComboMeal"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isModifier || self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:57:29.7700000 +00:00', 2, N'N', '96aec714-e5f8-4bda-8871-77ca1b62b35d', 1, NULL, '2022-11-21 12:40:47.9473818 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e0d28db9-ae69-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-address-list', N'Partner addresses', N'{
    "defaultValue": {},
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "field": "partnerAddressType.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE",
                    "type": "link"
                },
                {
                    "field": "country.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.COUNTRY",
                    "type": "text"
                },
                {
                    "field": "state.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.STATE",
                    "type": "text"
                },
                {
                    "field": "county.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.COUNTY",
                    "type": "text"
                },
                {
                    "field": "city.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.CITY",
                    "type": "text"
                },
                {
                    "field": "zip",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.ZIP",
                    "type": "text"
                },
                {
                    "field": "street.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.STREET",
                    "type": "text"
                },
                {
                    "field": "block",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.BLOCK",
                    "type": "text"
                },
                {
                    "field": "streetNo",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.STREET_NUMBER",
                    "type": "text"
                },
                {
                    "field": "apartment",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.APARTMENT",
                    "type": "text"
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "partnerAddressType": {
                            "id": 1,
                            "name": "Test type"
                        },
                        "country": {
                            "id": 1,
                            "name": "Ukraine"
                        },
                        "state": {
                            "id": 1,
                            "name": "Kherson"
                        },
                        "county": {
                            "id": 1,
                            "name": "test"
                        },
                        "city": {
                            "id": 1,
                            "name": "Kherson"
                        },
                        "zip": "0633434",
                        "street": {
                            "id": 1,
                            "name": "Test"
                        },
                        "block": "Test",
                        "streetNo": "Test",
                        "apartment": "Test"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
    [class]="{{classes}}"
></cr-partner-address-list>', '2022-11-21 15:32:22.6966667 +00:00', 3, N'Y', '28e52b31-7504-4039-a3f1-64b724ba19d1', 1, NULL, '2022-11-21 15:11:08.6658912 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e109c99d-b269-ed11-835f-02f176033ddb', '2e10fc1e-b269-ed11-835f-02f176033ddb', N'item-details-properties', N'Item properties', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new cr-grid-no-inner-borders">
    <cr-item-property-list 
        [itemDetails]="self.item" 
        [class]=''{{classes}}''
    ></cr-item-property-list>
</div>
', '2022-11-25 09:57:59.7566667 +00:00', 2, N'N', 'bd07c5aa-9c18-4402-9bc2-df7a83de9362', 1, NULL, '2022-11-21 15:39:00.0646753 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('76aab396-436a-ed11-835f-02f176033ddb', 'e18c6dc2-406a-ed11-835f-02f176033ddb', N'item-details-prices', N'Item prices', N'{
    "defaultValue": {},
    "fieldSettings": {
        "validationField": "prices"
    }
}', N'<div class="cr-item-price-wrapper">
    <cr-item-price-list
        *ngIf="(self.EndpointName.item__item_price_GET | endpointAccessGrantedPipe) &&
            (self.EndpointName.item__item_property_value_id_dropdown_GET | endpointAccessGrantedPipe); else noAccess"
        [editable]="self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        [item]="self.item"
        [panelsViewState]="self.panelsViewState"
        [class]=''{{classes}}''
    ></cr-item-price-list>

    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
', '2022-11-25 09:58:15.3833333 +00:00', 3, N'N', '69f364e3-74ff-42f9-985d-1ef35f6c4d17', 1, NULL, '2022-11-22 08:56:45.2063478 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('3b22a8a9-4c6a-ed11-835f-02f176033ddb', '4e81e25d-4c6a-ed11-835f-02f176033ddb', N'item-details-barcode-list', N'Item barcode', N'{
    "defaultValue": {},
    "fieldSettings": {
        "validationField": "barcodes"
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-barcodes-list
        [isNew]="self.isNewItem"
        [item]="self.item"
        [editable]="self.isNewItem
            ? (self.EndpointName.item_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        (barcodesChanged)="self.onBarcodesChanged()"
        [class]=''{{classes}}''
    ></cr-item-barcodes-list>
</div>', '2022-11-25 09:58:35.5733333 +00:00', 2, N'N', '60515adc-0daa-46bf-a2e3-2b8b361a418a', 1, NULL, '2022-11-22 10:01:42.4780475 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2f3c9474-4f6a-ed11-835f-02f176033ddb', '1a39b635-4f6a-ed11-835f-02f176033ddb', N'item-details-specail-prices-list', N'Item special prices', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-special-prices-list
        (onCellClickEvent)="self.openSpecialPrice($event)"
        (onChangePageEvent)="self.changePageEvent($event)"
        [specialPrices]="self.specialPricesList"
        [class]=''{{classes}}''
    ></cr-item-special-prices-list>
</div>', '2022-11-22 10:21:41.9185839 +00:00', 1, N'N', 'c88420ea-ce97-4a43-b36e-db7884a051d7', 1, NULL, '2022-11-22 10:21:41.9185839 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('27e427c7-6e6a-ed11-835f-02f176033ddb', '3242747d-6e6a-ed11-835f-02f176033ddb', N'item-details-promotions-list', N'Item promotions', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-promotion-list
        [itemId]="self.item?.id"
        [class]=''{{classes}}''
    ></cr-item-promotion-list>
</div>
', '2022-11-22 14:05:54.8580519 +00:00', 1, N'N', '5929739e-a20d-4ca6-8744-33e026729190', 1, NULL, '2022-11-22 14:05:54.8580519 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0a88e19b-726a-ed11-835f-02f176033ddb', '4c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-udfs-list', N'Item UDF', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-udf-list
        *ngIf="(self.EndpointName.item__user_defined_field_GET | endpointAccessGrantedPipe) &&
            (self.EndpointName.item__user_defined_field_default_value_GET | endpointAccessGrantedPipe); else noAccess"
        [isNew]="self.isNewItem"
        [udf]="self.item.udf"
        [cacheName]="''itemUserFieldViewStateCache''"
        [viewName]="''Item_details''"
        [loadUserDefinedFieldListForDropdownFn$]="self.loadUserDefinedFieldListForDropdownFn$"
        [getUserFields$]="self.getUserFields$"
        [loadUserFields$]="self.loadUserFields$"
        [getUserFieldsDefault$]="self.getUserFieldsDefault$"
        [class]=''{{classes}}''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>', '2022-11-25 09:59:01.1633333 +00:00', 3, N'N', '9189d8ac-1cef-4ce6-af11-4214b7bee98e', 1, NULL, '2022-11-22 14:33:30.1201682 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('67d8d593-796a-ed11-835f-02f176033ddb', 'f5aa963e-796a-ed11-835f-02f176033ddb', N'item-details-image-basket', N'Image basket', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-image-basket-list
        [imageBasketId]="self.item.imageBasketSetId"
        [isDeleted]="self.item.isDeleted"
        [refreshList$]="self.itemImageBasketContentListRefresh$"
        (onCreateItem)="self.onCreateImageBasketPopup()"
        (onUpdateItem)="self.onUpdateImageBasketPopup($event)"
        (onDeleteItem)="self.onDeleteImageBasketContent($event)"
        [class]=''{{classes}}''
    ></cr-item-image-basket-list>
</div>', '2022-11-25 09:59:47.9200000 +00:00', 3, N'N', '158cdc55-a715-4ca8-8a28-cb33df4afd86', 1, NULL, '2022-11-22 15:23:13.2205799 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1ad6ad39-816a-ed11-835f-02f176033ddb', '3055fef1-806a-ed11-835f-02f176033ddb', N'item-details-modifiers', N'Item modifiers', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-item-modifier
        [itemId]="self.item.id"
        [isDeleted]="self.item.isDeleted"
        (onOpenModifiersGroupList)="self.onOpenModifiersGroupListPopup()"
        (onOpenModifiersTemplateList)="self.onOpenModifiersTemplateListPopup()"
        (onSelectModifierGroups)="self.onSelectModifierGroups($event)"
        [class]=''{{classes}}''
    ></cr-item-item-modifier>
</div>', '2022-11-22 16:17:57.9372698 +00:00', 1, N'N', 'd450f8d3-91d0-40a6-a679-3d948b33fb7e', 1, NULL, '2022-11-22 16:17:57.9372698 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f4ffc7a8-896a-ed11-835f-02f176033ddb', '5695c768-896a-ed11-835f-02f176033ddb', N'item-details-combo-meal', N'Item combo meal', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-combo-meal-category-list
        [itemId]="self.item.id"
        [isDeleted]="self.item.isDeleted"
        (openComboMealCategoryDetails)="self.onOpenComboMealDetailsPopup($event)"
        (openComboMealCategoryNew)="self.onOpenComboMealNewPopup()"
        [class]=''{{classes}}''
    ></cr-item-combo-meal-category-list>
</div>', '2022-11-22 17:18:20.3096692 +00:00', 1, N'N', '01927771-60de-4e7e-849f-afb065db5094', 1, NULL, '2022-11-22 17:18:20.3096692 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('4ef95cdf-116b-ed11-835f-02f176033ddb', '167690c8-0d6b-ed11-835f-02f176033ddb', N'item-details-creation-date', N'Creation date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.CREATION_DATE"
    }
}', N'<div class="cr-footer-flex-wrapper" [class]=''{{classes}}''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="{{label}}"
            [dataLabelTranslateKeys]="{{translateKey}}"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.item?.createDate | stringToDate | date:self.currentDateFormatPattern">
        </cr-text-field-control>
    </div>
</div>
', '2022-11-29 13:16:03.7300000 +00:00', 4, N'N', 'daa954a1-eb81-4558-a1f3-31c0cb56f6ac', 1, NULL, '2022-11-23 09:33:23.4381774 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6915bc0f-126b-ed11-835f-02f176033ddb', '167690c8-0d6b-ed11-835f-02f176033ddb', N'item-details-update-date', N'Update date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.UPDATE_DATE"
    }
}', N'<div class="cr-footer-flex-wrapper" [class]=''{{classes}}''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="{{label}}"
            [dataLabelTranslateKeys]="{{translateKey}}"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.item?.updateDate | stringToDate | date:self.currentDateFormatPattern">
        </cr-text-field-control>
    </div>
</div>
', '2022-11-30 07:58:27.8500000 +00:00', 4, N'N', '1860d67d-8f5a-455c-bbe6-552da5b7521a', 1, NULL, '2022-11-23 09:34:44.5921257 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b40cec60-cb6d-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
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
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-26 20:46:20.0224564 +00:00', 1, N'N', '24a502ce-7f66-4898-917f-024e07f72202', 1, NULL, '2022-11-26 20:46:20.0224564 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b80cec60-cb6d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-login', N'Login', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.LIST.FILTER.LOGIN"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.filter.login"
    [elementName]="''edit:User_list.Login''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"    
></cr-control-edit>', '2022-11-26 20:46:28.1917975 +00:00', 1, N'N', '10e9d387-34bc-496d-aa35-08692473e37c', 1, NULL, '2022-11-26 20:46:28.1917975 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9555f38d-cb6d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.LIST.FILTER.FIRST_NAME"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.filter.firstName"
    [elementName]="''edit:User_list.First_name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"    
></cr-control-edit>', '2022-11-26 20:47:35.5676693 +00:00', 1, N'N', '5eb4d05f-bfd3-4877-9428-f4f030a1eda8', 1, NULL, '2022-11-26 20:47:35.5676693 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bd815bb1-cb6d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.LIST.FILTER.LAST_NAME"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.filter.lastName"
    [elementName]="''edit:User_list.Last_name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"    
></cr-control-edit>', '2022-11-26 20:48:34.9706301 +00:00', 1, N'N', 'b044ed1d-507a-48c9-ba8a-5c478d8d3e6e', 1, NULL, '2022-11-26 20:48:34.9706301 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2e06b6d8-cb6d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-mobile', N'Mobile', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.LIST.FILTER.MOBILE"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.filter.mobile"
    [elementName]="''edit:User_list.Mobile''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"    
></cr-control-edit>', '2022-11-26 20:49:40.9949870 +00:00', 1, N'N', '73c7f02c-66e8-4106-9ccd-9fa1e65ea953', 1, NULL, '2022-11-26 20:49:40.9949870 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fb7d08fe-cb6d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-email', N'Email', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.LIST.FILTER.EMAIL"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.filter.email"
    [elementName]="''edit:User_list.Email''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"    
></cr-control-edit>', '2022-11-26 20:50:43.6111483 +00:00', 1, N'N', '23c0adfa-434f-499d-b247-f8522f162a59', 1, NULL, '2022-11-26 20:50:43.6111483 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('013f4d62-cc6d-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-role', N'Role', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.LIST.FILTER.USER_ROLE"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.filter.roleId"
    [dataCacheName]="''UserRoleDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:User_list.User_role''"
    [getListItemsFunction]="self.roleListDropdownFn$"
    [permissionSettings]="{
        isAccessEdit: (self.EndpointName.user__role_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [textField]="''code''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [valueField]="''id''"
    [isDropdownListOverrideEnterKeyBehaviour]="true"
    (onEnterKey)="self.changeFilter()"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-11-26 20:53:31.8338945 +00:00', 1, N'N', '82bbd960-b703-4e4b-abb0-ac6504d7f5c7', 1, NULL, '2022-11-26 20:53:31.8338945 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ce54858e-cc6d-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-show-deleted', N'Show deleted', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SHOW_DELETED"
    }
}', N'<cr-checkbox-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.filter.showDeleted"
    [elementName]="''checkbox:User_list.Deleted''"
></cr-checkbox-control>', '2022-11-26 20:54:46.0212046 +00:00', 1, N'N', '5cdf0bb0-86c3-4cd4-af9f-64a3c7f22ed6', 1, NULL, '2022-11-26 20:54:46.0212046 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7f7d34c0-cc6d-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-search', N'Search', N'{
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
    *ngIf="(self.EndpointName.user_GET | endpointAccessGrantedPipe)"
></cr-button-control>', '2022-11-26 20:56:09.3774847 +00:00', 1, N'N', 'ff3af4f1-3092-4c04-b14f-c858e822d380', 1, NULL, '2022-11-26 20:56:09.3774847 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b74689e8-cc6d-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-reset', N'Reset', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.RESET",
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
    (buttonClickEvent)="self.resetFilter()"
></cr-button-control>', '2022-11-26 20:57:17.0420023 +00:00', 1, N'N', '8aaf5d48-469f-44fa-8c3b-20d6dc85ea87', 1, NULL, '2022-11-26 20:57:17.0420023 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7952759e-cd6d-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-list-grid', N'User list grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
                {
                    "field": "login",
                    "titleTranslateKey": "USER.LIST.GRID.LOGIN",
                    "hidden": false
                },
                {
                    "field": "firstName",
                    "titleTranslateKey": "USER.LIST.GRID.FIRST_NAME",
                    "hidden": false
                },
                {
                    "field": "lastName",
                    "titleTranslateKey": "USER.LIST.GRID.LAST_NAME",
                    "hidden": false
                },
                {
                    "field": "roles",
                    "titleTranslateKey": "USER.LIST.GRID.USER_ROLE",
                    "hidden": false
                },
                {
                    "field": "mobile",
                    "titleTranslateKey": "USER.LIST.GRID.MOBILE",
                    "hidden": false
                },
                {
                    "field": "email",
                    "titleTranslateKey": "USER.LIST.GRID.EMAIL",
                    "hidden": false
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "USER.LIST.GRID.IS_DELETED",
                    "hidden": false
                }
            ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "field": "login",
                    "titleTranslateKey": "USER.LIST.GRID.LOGIN",
                    "type": "link"
                },
                {
                    "field": "firstName",
                    "titleTranslateKey": "USER.LIST.GRID.FIRST_NAME",
                    "type": "text"
                },
                {
                    "field": "lastName",
                    "titleTranslateKey": "USER.LIST.GRID.LAST_NAME",
                    "type": "text"
                },
                {
                    "field": "roles",
                    "titleTranslateKey": "USER.LIST.GRID.USER_ROLE",
                    "type": "text"
                },
                {
                    "field": "mobile",
                    "titleTranslateKey": "USER.LIST.GRID.MOBILE",
                    "type": "text"
                },
                {
                    "field": "email",
                    "titleTranslateKey": "USER.LIST.GRID.EMAIL",
                    "type": "text"
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "USER.LIST.GRID.IS_DELETED",
                    "type": "boolean",
                    "autoFit": true
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "login": "login",
                        "firstName": "Yura",
                        "lastName": "Prisyazhnyy",
                        "roles": "Admin",
                        "mobile": "+380666876892",
                        "email": "cssuperpy@gmail.com",
                        "isDeleted": false
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [dataSource]="self.dataSource"
        [elementName]="''edit-grid-server-paging:User_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [dataCacheName]="''user-grid-cache''"
        [class]=''{{classes}}''
    ></cr-edit-grid-server-paging>
</div>', '2022-12-07 10:16:11.3566667 +00:00', 4, N'N', '5feaa1f2-0046-4f50-b8c7-3fa4d8c2bcca', 1, NULL, '2022-11-26 21:02:22.2565625 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('18fdb05e-d36d-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-details-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.DETAILS.TITLE"
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
    [titleValue]="self.titleValue"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
></cr-title-header>', '2022-11-26 21:43:32.2537880 +00:00', 1, N'N', 'e1d69268-1114-441c-92f5-8ab5081dfa4f', 1, NULL, '2022-11-26 21:43:32.2537880 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('016686bc-d36d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-details-login', N'Login', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.DETAILS.HEADER.LOGIN"
    },
    "fieldSettings": {
        "validationField": "login"
    }
}', N'<cr-control-edit
    [elementName]="''edit:User_details.Login''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.login"
    (dataValueChange)="self.changeTitle()"
    [validator]="self.validator"
    [validationField]="''login''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.userDetail.isDeleted || {{disabled}}"
></cr-control-edit>
', '2022-11-26 21:51:46.8600000 +00:00', 2, N'N', '51e5b9e4-546f-49b8-9112-5e9e115b4814', 1, NULL, '2022-11-26 21:46:09.6804993 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('22b95805-d46d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-details-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.DETAILS.HEADER.FIRST_NAME"
    },
    "fieldSettings": {
        "validationField": "isFirstOrLastName"
    }
}', N'<cr-control-edit
    [elementName]="''edit:User_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.firstName"
    (dataValueChange)="self.changeValidator()"
    [validator]="self.validator"
    [validationField]="''isFirstOrLastName''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.userDetail.isDeleted || {{disabled}}"
></cr-control-edit>
', '2022-11-26 21:52:18.5466667 +00:00', 2, N'N', '01d0d784-410d-4572-a647-dba822406796', 1, NULL, '2022-11-26 21:48:11.8548386 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6e676637-d46d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-details-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.DETAILS.HEADER.LAST_NAME"
    },
    "fieldSettings": {
        "validationField": "isFirstOrLastName"
    }
}', N'<cr-control-edit
    [elementName]="''edit:User_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.lastName"
    (dataValueChange)="self.changeValidator()"
    [validator]="self.validator"
    [validationField]="''isFirstOrLastName''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.userDetail.isDeleted || {{disabled}}"
></cr-control-edit>
', '2022-11-26 21:52:32.1833333 +00:00', 2, N'N', '36ab9f3b-5750-4382-b1fb-3745109cb65e', 1, NULL, '2022-11-26 21:49:35.8305774 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9a309b6e-d46d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-details-phone', N'Phone', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.DETAILS.HEADER.PHONE"
    }
}', N'<cr-control-edit
    [elementName]="''edit:User_details.Phone''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.phone"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.userDetail.isDeleted || {{disabled}}"
></cr-control-edit>
', '2022-11-26 21:51:08.4512026 +00:00', 1, N'N', 'cc58e577-5d56-42b3-9ef5-16243a3186da', 1, NULL, '2022-11-26 21:51:08.4512026 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('387f91ca-d46d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-details-mobile', N'Mobile', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.DETAILS.HEADER.MOBILE"
    }
}', N'<cr-control-edit
    [elementName]="''edit:User_details.Mobile''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.mobile"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.userDetail.isDeleted || {{disabled}}"
></cr-control-edit>
', '2022-11-26 21:53:42.7380664 +00:00', 1, N'N', '9da19418-8e63-4c23-8ba3-7236d4824cb7', 1, NULL, '2022-11-26 21:53:42.7380664 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dfda98f6-d46d-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-details-email', N'Email', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.DETAILS.HEADER.EMAIL"
    },
    "fieldSettings": {
        "validationField": "email"
    }
}', N'<cr-control-edit
    [elementName]="''edit:User_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.email"
    [validator]="self.validator"
    [validationField]="''email''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.userDetail.isDeleted || {{disabled}}"
></cr-control-edit>
', '2022-11-26 21:54:56.6060383 +00:00', 1, N'N', '700bd222-e643-462e-a95e-73b9f1526d67', 1, NULL, '2022-11-26 21:54:56.6060383 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bad8b7ee-f36e-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-details-edit-roles', N'Edit roles', N'{
    "defaultValue": {
        "buttonType": "icon-button",
        "icon": "icon-edit",
        "width": 30,
        "height": 30
    }
}', N'<cr-button-control
    *ngIf="(self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))
        && (self.EndpointName.user__role_GET | endpointAccessGrantedPipe) && !self.userDetail.isDeleted"
    (buttonClickEvent)="self.editRoleClick()"
    [buttonTemplateType]="{{buttonTemplateType}}"
    [text]="{{label}}"
    [textTranslateKey]="{{translateKey}}"
    [classArray]=''{{classes}}''
    [width]="{{width}}"
    [height]="{{height}}"
    [icon]="{{icon}}"
></cr-button-control>', '2022-11-28 08:09:08.9487674 +00:00', 1, N'N', '01c969fb-25dd-4f17-9bd1-f040ad7c6b35', 1, NULL, '2022-11-28 08:09:08.9487674 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('62a25693-0b6f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'user-details-roles-grid', N'User roles', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
                {
                    "field": "name",
                    "titleTranslateKey": "USER.DETAILS.ROLES.GRID.NAME",
                    "hidden": false
                }
            ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "field": "name",
                    "titleTranslateKey": "USER.DETAILS.ROLES.GRID.NAME",
                    "type": "text"
                }
            ],
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
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-user-details-role-list 
        [roles]="self.userDetail.roles" 
        [class]=''{{classes}}''
        [dynamicGridColumnSettings]=''{{dynamicColumnSettings}}''
    ></cr-user-details-role-list>
</div>', '2022-12-07 10:16:58.9800000 +00:00', 4, N'N', '6b41b994-910e-4f51-8f9c-749115acdc5e', 1, NULL, '2022-11-28 10:58:23.5605218 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8dd2ee6a-0e6f-ed11-835f-02f176033ddb', '2e914ade-0b6f-ed11-835f-02f176033ddb', N'user-details-password', N'Password', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "USER.DETAILS.HEADER.PASSWORD"
    },
    "fieldSettings": {
        "validationField": "password"
    }
}', N'<cr-edit-password-control
    [elementName]="''edit-password:User_details.Password''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.password"
    [showPassword]="self.cache.showPassword"
    (showPasswordToggle)="self.showPasswordToggle($event)"
    [autocomplete]="''new-password''"
    [validator]="self.validator"
    [validationField]="''password''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.userDetail.isDeleted || {{disabled}}"
    [showPasswordButton]="{{showPasswordButton}}"
    [showPasswordPlaceholder]="{{showPasswordPlaceholder}}"
></cr-edit-password-control>
', '2022-11-28 11:18:44.2615053 +00:00', 1, N'N', 'ae32b214-8d84-4c4d-b336-2594ef7b0cb7', 1, NULL, '2022-11-28 11:18:44.2615053 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('4a829a90-4a6f-ed11-835f-02f176033ddb', '658c8057-4a6f-ed11-835f-02f176033ddb', N'user-permission-tree', N'User permission tree', N'{
    "defaultValue": {}
}', N'<cr-user-permission-tree
    *ngIf="(self.EndpointName.user__function_tree_list_GET | endpointAccessGrantedPipe)"
    [userId]="self.userId"
    [isNew]="self.isNew"
    [(selected)]="self.userDetail.functions"
    [editable]="!self.userDetail.isDeleted && (self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))"
    [class]=''{{classes}}''
></cr-user-permission-tree>
', '2022-11-28 18:29:17.2661450 +00:00', 1, N'N', '2006d72a-ba1f-4878-8c7d-fa3a59fc62f6', 1, NULL, '2022-11-28 18:29:17.2661450 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c1c1bdde-596f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-list-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
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
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-28 20:18:50.8103745 +00:00', 1, N'N', '82737ef5-24fd-4276-ada4-0160c15c7305', 1, NULL, '2022-11-28 20:18:50.8103745 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dce54310-bf6f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-list-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.FILTER.FIRST_NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.employeeFilterRequest.firstName"
    [elementName]="''edit:Employee_list.First_name''"
></cr-control-edit>
', '2022-11-29 08:23:13.0675292 +00:00', 1, N'N', '1477ef2b-0e2f-46b6-bff5-38eeaf4f4225', 1, NULL, '2022-11-29 08:23:13.0675292 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1430b348-bf6f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-list-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.FILTER.LAST_NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.employeeFilterRequest.lastName"
    [elementName]="''edit:Employee_list.Last_name''"
></cr-control-edit>
', '2022-11-29 08:24:47.7492884 +00:00', 1, N'N', '0b4030f7-3de6-4e88-b4e7-0ea0c0898c13', 1, NULL, '2022-11-29 08:24:47.7492884 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('addb2a7d-bf6f-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-list-show-deleted', N'Show deleted', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.FILTER.SHOW_DELETED"
    }
}', N'<cr-checkbox-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.employeeFilterRequest.isShowDeleted"
    [elementName]="''checkbox:Employee_list.Deleted''"
></cr-checkbox-control>', '2022-11-29 08:26:15.7750829 +00:00', 1, N'N', '25c0f13d-1915-414f-936e-65186c1d2697', 1, NULL, '2022-11-29 08:26:15.7750829 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e68194a7-bf6f-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-list-show-frozen', N'Show frozen', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.FILTER.SHOW_FROZEN"
    }
}', N'<cr-checkbox-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.employeeFilterRequest.isShowFrozen"
    [elementName]="''checkbox:Employee_list.Frozen''"
></cr-checkbox-control>', '2022-11-29 08:27:26.9317734 +00:00', 1, N'N', '1b7203d5-73a9-493b-875c-73305653c569', 1, NULL, '2022-11-29 08:27:26.9317734 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cd14fc44-c06f-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-list-number', N'Number', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.FILTER.NUMBER",
        "autoCorrectMinMax": true,
        "decimals": 0,
        "min": 0,
        "format": "#"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.employeeFilterRequest.number"
    [elementName]="''numeric:Employee_list.Number''"
    [autoCorrectMinMax]="true"
    [isDisabled]="{{disabled}}"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-11-29 08:31:51.0128461 +00:00', 1, N'N', 'a70e6ffb-dc8d-4d03-93f4-dc17c89ecf58', 1, NULL, '2022-11-29 08:31:51.0128461 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e1ed0878-c06f-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-list-search', N'Search', N'{
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
></cr-button-control>', '2022-11-29 08:33:16.6608481 +00:00', 1, N'N', '295a01c7-2fa5-4298-9283-8a36e662fc49', 1, NULL, '2022-11-29 08:33:16.6608481 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e76f4d36-c16f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-list-grid', N'Employees grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
                {
                    "field": "number",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.NUMBER",
                    "hidden": false
                },
                {
                    "field": "firstName",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.FIRST_NAME",
                    "hidden": false
                },
                {
                    "field": "lastName",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.LAST_NAME",
                    "hidden": false
                },
                {
                    "field": "isFrozen",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.FROZEN",
                    "hidden": false
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.SHOW_DELETED",
                    "hidden": false
                }
            ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "field": "number",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.NUMBER",
                    "type": "link",
                    "width": "160px"
                },
                {
                    "field": "firstName",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.FIRST_NAME",
                    "type": "text"
                },
                {
                    "field": "lastName",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.LAST_NAME",
                    "type": "text"
                },
                {
                    "field": "isFrozen",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.FROZEN",
                    "type": "boolean",
                    "autoFit": true
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "EMPLOYEE.LIST.GRID.SHOW_DELETED",
                    "type": "boolean",
                    "autoFit": true
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "number": "24422",
                        "firstName": "Yura",
                        "lastName": "Prisyazhnyy",
                        "isFrozen": false,
                        "isDeleted": false
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [dataCacheName]="''EmployeeListGrid''"
        [dataSource]="self.gridData"
        [elementName]="''edit-grid-server-paging:Employee_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]=''{{classes}}''
    ></cr-edit-grid-server-paging>
</div>', '2022-12-07 10:18:27.8500000 +00:00', 2, N'N', '6d31e1c2-fcc4-4148-a293-cc44a331b2a2', 1, NULL, '2022-11-29 08:38:35.8769255 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c37d8627-ce6f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
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
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNewEmployee ? ''COMMON.NEW'' : null"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>', '2022-11-29 10:11:14.5424963 +00:00', 1, N'N', 'd74f7c78-dc99-4f2b-9bc1-ea8c0f30c7a9', 1, NULL, '2022-11-29 10:11:14.5424963 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7ae44a8e-ce6f-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-number', N'Number', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.HEADER.NUMBER",
        "autoCorrectMinMax": true,
        "decimals": 0,
        "min": 0,
        "format": "#"
    },
    "fieldSettings": {
        "validationField": "number"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.employee.number"
    [elementName]="''numeric:Employee_details.Number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''number''"
    [validator]="self.validator"
    [isDisabled]="{{disabled}}"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>
', '2022-11-29 10:14:06.9572346 +00:00', 1, N'N', '1d1d77d4-7cc6-4d34-a047-0ac322d6d5c5', 1, NULL, '2022-11-29 10:14:06.9572346 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('822e1ae7-ce6f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.HEADER.FIRST_NAME"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.employee.firstName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-29 10:16:35.9552258 +00:00', 1, N'N', 'a432b2de-c575-4c48-b455-ebfcad6bc1e4', 1, NULL, '2022-11-29 10:16:35.9552258 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ba13c81c-cf6f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.HEADER.LAST_NAME"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.employee.lastName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-29 10:18:06.0141114 +00:00', 1, N'N', '12cc8f40-02bc-460e-b87c-6c059a6888e3', 1, NULL, '2022-11-29 10:18:06.0141114 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d41b5b66-cf6f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-print-name', N'Print name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.HEADER.PRINT_NAME"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.employee.printName"
    [elementName]="''edit:Employee_details.Print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-29 10:20:09.4513748 +00:00', 1, N'N', '4e36961e-9f42-4bb3-912d-406b52d85e1c', 1, NULL, '2022-11-29 10:20:09.4513748 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0b2267c7-cf6f-ed11-835f-02f176033ddb', '2e914ade-0b6f-ed11-835f-02f176033ddb', N'employee-details-password', N'Password', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.HEADER.PASSWORD"
    },
    "fieldSettings": {
        "validationField": "password"
    }
}', N'<cr-edit-password-control
    [(dataValue)]="self.employee.password"
    [elementName]="''edit-password:Employee_details.Password''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''password''"
    [validator]="self.validator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [showPasswordButton]="{{showPasswordButton}}"
    [showPasswordPlaceholder]="{{showPasswordPlaceholder}}"
></cr-edit-password-control>
', '2022-11-29 10:22:52.2691723 +00:00', 1, N'N', '8469abdb-e2b4-4324-97f4-e69a2da5b94f', 1, NULL, '2022-11-29 10:22:52.2691723 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('25e5485a-d06f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-additional-number', N'Additional number', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.GENERAL.ADDITIONAL_NUMBER"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.employee.additionalNumber"
    [elementName]="''edit:Employee_details.Additional_number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-29 10:26:58.6960805 +00:00', 1, N'N', '25ae4b7c-345b-4142-a5ca-aee12da9dba3', 1, NULL, '2022-11-29 10:26:58.6960805 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8610f099-d06f-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-start-date', N'Start date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.GENERAL.START_DATE"
    },
    "fieldSettings": {
        "validationField": "startDate"
    }
}', N'<cr-control-datepicker
    [(dataValue)]="self.employee.startDate"
    [elementName]="''date:Employee_details.Start_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''startDate''"
    [validator]="self.validator"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-11-29 10:30:31.0633333 +00:00', 2, N'N', '2777a1f2-3f14-482d-b78c-4d2f636d8860', 1, NULL, '2022-11-29 10:28:45.4881030 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ec7ff4eb-d06f-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-end-date', N'End date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.GENERAL.END_DATE"
    },
    "fieldSettings": {
        "validationField": "startDate"
    }
}', N'<cr-control-datepicker
    [(dataValue)]="self.employee.endDate"
    [elementName]="''date:Employee_details.End_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''endDate''"
    [validator]="self.validator"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>
', '2022-11-29 10:31:03.0903404 +00:00', 1, N'N', '29e48b45-7bda-4494-9df2-cb5b8fd6756e', 1, NULL, '2022-11-29 10:31:03.0903404 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('09826563-d16f-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-is-office-worker', N'Is office worker', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.GENERAL.OFFICE_WORKER"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.employee.isOfficeWorker"
    [elementName]="''checkbox:Employee_details.Office_worker''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-29 10:34:23.4798217 +00:00', 1, N'N', '8d803726-15ed-4d79-9b1c-d27ba9b69736', 1, NULL, '2022-11-29 10:34:23.4798217 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ecb81aa4-d16f-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-is-duty-free-zone', N'Is duty free zone', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.GENERAL.DUTY_FREE_ZONE"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.employee.isDutyFreeZone"
    [elementName]="''checkbox:Employee_details.Duty_free_zone''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-29 10:36:12.0416108 +00:00', 1, N'N', '04061c02-016d-4731-a89d-18fb981f2dcb', 1, NULL, '2022-11-29 10:36:12.0416108 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1ef6099c-e46f-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-user', N'User', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.HEADER.USER"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.employee.webUserId"
    [dataCacheName]="''EmployeeUserDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Employee_details.User_dropdown''"
    [getListItemsFunction]="self.employeeGeneralUserListFn"
    [getOneItemFunction]="self.employeeGeneralUserFn"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.employee__user_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.EndpointName.employee__user_dropdown_GET | endpointAccessGrantedPipe) && (self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe))
    }"
    [textField]="''name''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-11-29 12:58:58.9700000 +00:00', 2, N'N', 'a4268fc1-2ce6-41d1-96fb-ef5209976709', 1, NULL, '2022-11-29 12:51:58.9478558 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dc1e78fc-e46f-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-passport', N'Passport', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.GENERAL.PASSPORT"
    },
    "fieldSettings": {
        "validationField": "passport"
    }
}
', N'<cr-control-edit
    [(dataValue)]="self.employee.passport"
    [elementName]="''edit:Employee_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''passport''"
    [validator]="self.validator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-29 12:58:27.1400000 +00:00', 2, N'N', 'ea06895a-b1b8-4433-811c-6cac2eb52aa2', 1, NULL, '2022-11-29 12:54:40.7310684 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('90a18e67-e56f-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-frozen', N'Frozen', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.GENERAL.FROZEN"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.employee.isFrozen"
    [elementName]="''checkbox:Employee_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee || (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-29 12:57:55.4166667 +00:00', 2, N'N', '7ba0c6b2-dd7a-4d80-8832-7231e89bf345', 1, NULL, '2022-11-29 12:57:40.3948048 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('263910c5-e56f-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-contractor', N'Contractor', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.HEADER.CONTRACTOR"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.employee.isContractor"
    [elementName]="''checkbox:Employee_details.Contractor''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-29 13:04:29.7666667 +00:00', 2, N'N', 'a53cbf36-b1b2-4bcf-ad4b-c5ea3341c5bf', 1, NULL, '2022-11-29 13:00:17.2722086 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7a27b615-e66f-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-manager', N'Manager', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "EMPLOYEE.DETAILS.GENERAL.MANAGER"
    }
}', N'<cr-dropdown-smart-control
    [value]="self.employee.manager?.id"
    (currentItemValueChange)="self.onManagerChange($event)"
    [currentItemValue]="self.employee.manager"
    [dataCacheName]="''EmployeeManagerDropdownSearchCache''"
    [dataTranslateKeyField]="''displayNameTranslateKey''"
    [getListItemsFunction]="self.managerDropdownFn$"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.employee_dropdown | endpointAccessGrantedPipe),
        isAccessEdit: (self.EndpointName.employee_dropdown | endpointAccessGrantedPipe) && (self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe))
    }"
    [textField]="''name''"
    [unselectedItemValue]="{id: null, displayNameTranslateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [useCache]="false"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [valueField]="''id''"
    [elementName]="''smart-dropdown:Employee_details.Manager_dropdown''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-29 13:02:32.5773818 +00:00', 1, N'N', '02f7ae68-8d4b-4e59-ab7e-5c46cc9edd73', 1, NULL, '2022-11-29 13:02:32.5773818 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d4a75416-e76f-ed11-835f-02f176033ddb', '4c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-udfs-list', N'Employee UDF list', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-udf-list
        [cacheName]="''EmployeeUserFieldViewStateCache''"
        *ngIf="(self.EndpointName.employee__user_defined_field_GET | endpointAccessGrantedPipe) &&
            (self.EndpointName.employee__user_defined_field_default_value_GET | endpointAccessGrantedPipe); else noAccess"
        [isNew]="self.isNewEmployee"
        [udf]="self.employee.udf"
        [viewName]="''Employee_details''"
        [loadUserDefinedFieldListForDropdownFn$]="self.loadUserDefinedFieldListForDropdownFn$"
        [getUserFields$]="self.getUserFields$"
        [loadUserFields$]="self.loadUserFields$"
        [getUserFieldsDefault$]="self.getUserFieldsDefault$"
        [class]=''{{classes}}''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>', '2022-11-29 13:09:43.1128660 +00:00', 1, N'N', 'b5d2cce1-9f47-409e-98f5-c60b578f031e', 1, NULL, '2022-11-29 13:09:43.1128660 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('366ae86d-e76f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-cards', N'Cards', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "cardNumber",
                "titleTranslateKey": "EMPLOYEE.DETAILS.CARDS.NUMBER_OF_CARDS",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "field": "cardNumber",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.CARDS.NUMBER_OF_CARDS",
                    "type": "numeric",
                    "format": "#",
                    "decimals": 0
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "cardNumber": "24422"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<cr-employee-details-card-number
    [employeeId]="self.employee.id"
    [isDeletedEmployee]="self.employee.isDeleted"
    [isNewEmployee]="self.isNewEmployee"
    [class]=''{{classes}}''
    [dynamicGridColumnSettings]=''{{dynamicColumnSettings}}''
></cr-employee-details-card-number>', '2022-12-07 10:19:58.4600000 +00:00', 2, N'N', '5af879de-8250-4039-81e5-53b417ba9c01', 1, NULL, '2022-11-29 13:12:10.0430006 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9ab7fba9-e76f-ed11-835f-02f176033ddb', '453c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'employee-details-remark', N'Remark', N'{
    "defaultValue": {}
}', N'<cr-text-area-control
    [(dataValue)]="self.employee.remark"
    [elementName]="''textarea:Employee_details.Remark''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
    [rows]="{{rows}}"
    [maxlength]="{{maxLength}}"
></cr-text-area-control>', '2022-11-29 13:13:50.8327962 +00:00', 1, N'N', '9339f9d8-c9cb-465b-b0eb-4bebb55101d0', 1, NULL, '2022-11-29 13:13:50.8327962 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('66abb403-e86f-ed11-835f-02f176033ddb', '167690c8-0d6b-ed11-835f-02f176033ddb', N'employee-details-creation-date', N'Creation date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.CREATION_DATE"
    }
}', N'<div class="cr-footer-flex-wrapper" [class]=''{{classes}}''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="{{label}}"
            [dataLabelTranslateKeys]="{{translateKey}}"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.employee?.creationDate | stringToDate | date:self.currentDateFormatPattern"
        ></cr-text-field-control>
    </div>
</div>', '2022-11-29 13:16:38.3700000 +00:00', 2, N'N', '09dc8c5d-b751-4fd4-b4c3-2e913afb9497', 1, NULL, '2022-11-29 13:16:21.3621222 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ece35934-e86f-ed11-835f-02f176033ddb', '167690c8-0d6b-ed11-835f-02f176033ddb', N'employee-details-update-date', N'Update date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.UPDATE_DATE"
    }
}', N'<div class="cr-footer-flex-wrapper" [class]=''{{classes}}''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="{{label}}"
            [dataLabelTranslateKeys]="{{translateKey}}"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.employee?.updateDate | stringToDate | date:self.currentDateFormatPattern">
        ></cr-text-field-control>
    </div>
</div>', '2022-11-29 13:17:42.9755500 +00:00', 1, N'N', '9a7b33b5-3bca-408e-89f4-c79dd4b5ba10', 1, NULL, '2022-11-29 13:17:42.9755500 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f6618295-ea6f-ed11-835f-02f176033ddb', '31a5db8f-ed6c-ed11-835f-02f176033ddb', N'employee-details-access-level-basket-population', N'Access level basket', N'{
    "defaultValue": {},
    "fieldSettings": {
        "basketPopulation": {
            "columnSettings": [
                {
                    "field": "dateFrom",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.DATE_FROM",
                    "type": "date-time",
                    "autoFit": true
                },
                {
                    "field": "dateTo",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.DATE_TO",
                    "type": "date-time",
                    "autoFit": true
                },
                {
                    "field": "accessLevel.name",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.ACCESS_LEVEL",
                    "type": "text"
                },
                {
                    "field": "typeName",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.TYPE",
                    "type": "text",
                    "width": "160px"
                },
                {
                    "field": "subValueName",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.PROPERTY",
                    "type": "fieldWithCode",
                    "codeField": "subValueCode"
                },
                {
                    "field": "valueName",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.ACCESS_LEVEL.VALUE",
                    "type": "fieldWithCode",
                    "codeField": "valueCode"
                }
            ]
        }
    }
}', N'<cr-basket-population-view
    (addBasket)="self.addBasketAccessLevel()"
    (deleteBasket)="self.onDeleteBasketAccessLevel()"
    (edit)="self.onEditBasketAccessLevel()"
    [cacheName]="''employeeDetailsAccessLevelViewState''"
    [elementName]="''basket-population:Employee.Access_level_population''"
    [isShowAdd]="self.isShowAddAccessLevelLocation"
    [isShowDelete]="true"
    [isShowEdit]="true"
    [populations]="self.employee?.accessLevelLocation"
    [columnSettings]="self.columnSettingsAccessLevelLocation"
    [class]=''{{classes}}''
></cr-basket-population-view>', '2022-11-29 13:34:44.9733750 +00:00', 1, N'N', 'd5f8715c-6192-430c-a15c-6eb1ca56560a', 1, NULL, '2022-11-29 13:34:44.9733750 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c8f8d1d9-eb6f-ed11-835f-02f176033ddb', '31a5db8f-ed6c-ed11-835f-02f176033ddb', N'employee-details-seller-in-store-basket-population', N'Seller in store basket', N'{
    "defaultValue": {},
    "fieldSettings": {
        "basketPopulation": {
            "columnSettings": [
                {
                    "field": "dateFrom",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.SELLER_IN_STORES.DATE_FROM",
                    "type": "date-time",
                    "autoFit": true
                },
                {
                    "field": "dateTo",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.SELLER_IN_STORES.DATE_TO",
                    "type": "date-time",
                    "autoFit": true
                },
                {
                    "field": "typeName",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.SELLER_IN_STORES.TYPE",
                    "type": "text",
                    "width": "160px"
                },
                {
                    "field": "subValueName",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.SELLER_IN_STORES.PROPERTY",
                    "type": "fieldWithCode",
                    "codeField": "subValueCode"
                },
                {
                    "field": "valueName",
                    "titleTranslateKey": "EMPLOYEE.DETAILS.SELLER_IN_STORES.VALUE",
                    "type": "fieldWithCode",
                    "codeField": "valueCode"
                }
            ]
        }
    }
}', N'<cr-basket-population-view
    (addBasket)="self.addBasketSellerInStores()"
    (deleteBasket)="self.onDeleteBasketSellerInStores()"
    (edit)="self.onEditBasketSellerInStores()"
    [cacheName]="''employeeDetailsSellerInStoresViewState''"
    [elementName]="''basket-population:Employee.Seller_in_stores_population''"
    [isShowAdd]="self.isShowAddSellerInStoresLocation"
    [isShowDelete]="true"
    [isShowEdit]="true"
    [populations]="self.employee?.sellerLocation"
    [columnSettings]="self.columnSettingsSellerInStoresLocation"
    [class]=''{{classes}}''
></cr-basket-population-view>', '2022-11-29 13:43:49.0767688 +00:00', 1, N'N', 'c00cf272-16ab-4568-9de8-c113900b3f8c', 1, NULL, '2022-11-29 13:43:49.0767688 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8f768797-7b71-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-list-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
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
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-12-01 13:25:16.5506831 +00:00', 1, N'N', '9ccda2b8-62c6-4a53-a647-ff3674ee9d17', 1, NULL, '2022-12-01 13:25:16.5506831 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a74242ca-7b71-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-list-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.FILTER.CODE"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_group.Code''"
    [(dataValue)]="self.partnerFilterRequest.code"
></cr-control-edit>
', '2022-12-01 13:26:41.6609575 +00:00', 1, N'N', '605b9bf6-7353-4dbe-9dd1-8141c9ba1f3e', 1, NULL, '2022-12-01 13:26:41.6609575 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('3a9b2901-7c71-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-list-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.FILTER.NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_group.Name''"
    [(dataValue)]="self.partnerFilterRequest.displayName"
></cr-control-edit>
', '2022-12-01 13:28:13.7740730 +00:00', 1, N'N', 'ea951186-16db-480b-b7b0-c07d91631cff', 1, NULL, '2022-12-01 13:28:13.7740730 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c23d602e-7c71-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-list-show-deleted', N'Show deleted', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SHOW_DELETED"
    }
}', N'<cr-checkbox-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.partnerFilterRequest.showDeleted"
></cr-checkbox-control>', '2022-12-01 13:29:29.6296002 +00:00', 1, N'N', '812c13f7-0cdf-4206-acac-f121d0737d1e', 1, NULL, '2022-12-01 13:29:29.6296002 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b946d553-7c71-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-list-search', N'Search', N'{
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
    *ngIf="(self.EndpointName.partner_group_GET | endpointAccessGrantedPipe)"
></cr-button-control>', '2022-12-01 13:30:32.4723001 +00:00', 1, N'N', '765c2f70-8a88-4325-9acc-5f5268ef60f9', 1, NULL, '2022-12-01 13:30:32.4723001 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ef7c9441-7d71-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-list-grid', N'Partner groups', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
                {
                    "field": "code",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.CODE",
                    "hidden": false
                },
                {
                    "field": "displayName",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.NAME",
                    "hidden": false
                },
                {
                    "field": "useRFM",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.RFM",
                    "hidden": false
                },
                {
                    "field": "frequency",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.FREQUENCY",
                    "hidden": false
                },
                {
                    "field": "recency",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.RECENCY",
                    "hidden": false
                },
                {
                    "field": "monetary",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.MONETARY",
                    "hidden": false
                },
                {
                    "field": "creationDate",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.CREATION_DATE",
                    "hidden": false
                },
                {
                    "field": "updateDate",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.UPDATE_DATE",
                    "hidden": false
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.IS_DELETED",
                    "hidden": false
                }
            ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "field": "code",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.CODE",
                    "type": "link",
                    "autoFit": true
                },
                {
                    "field": "displayName",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.NAME",
                    "type": "text",
                    "width": "160px"
                },
                {
                    "field": "useRFM",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.RFM",
                    "type": "boolean",
                    "autoFit": true
                },
                {
                    "field": "frequency",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.FREQUENCY",
                    "type": "text",
                    "width": "100px"
                },
                {
                    "field": "recency",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.RECENCY",
                    "type": "text",
                    "width": "100px"
                },
                {
                    "field": "monetary",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.MONETARY",
                    "type": "text",
                    "width": "100px"
                },
                {
                    "field": "creationDate",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.CREATION_DATE",
                    "type": "date",
                    "autoFit": true
                },
                {
                    "field": "updateDate",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.UPDATE_DATE",
                    "type": "date",
                    "autoFit": true
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "PARTNER_GROUP.GRID.IS_DELETED",
                    "type": "boolean",
                    "autoFit": true
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "code": "code",
                        "displayName": "Group 1",
                        "useRFM": true,
                        "frequency": "test",
                        "recency": "test",
                        "monetary": "test",
                        "creationDate": "2022-01-01T00:00:00Z",
                        "updateDate": "2022-01-01T00:00:00Z",
                        "isDeleted": false
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataCacheName]="''partnerGroupListGrid''"
        [dataSource]="self.gridData"
        [elementName]="''edit-grid-server-paging:Partner_group.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
    ></cr-edit-grid-server-paging>
</div>', '2022-12-07 10:27:31.4933333 +00:00', 2, N'N', '2a8fdb74-a2f6-434d-8b63-21f6d4654e93', 1, NULL, '2022-12-01 13:37:11.3454447 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1dae9189-7f71-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.TITLE"
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
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
></cr-title-header>', '2022-12-01 13:53:31.1164573 +00:00', 1, N'N', 'e42254ca-53e8-4c7f-8d4b-06da62e1f637', 1, NULL, '2022-12-01 13:53:31.1164573 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('249474cf-7f71-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.GROUP_CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.group.code"
    [elementName]="''edit:Partner_group_details.Group_code''"
    [permissionSettings]="{
          isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''code''"
    [validator]="self.partnerGroupValidator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.isGroupDisabled || self.group.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-12-01 13:56:00.1500000 +00:00', 2, N'N', 'ecd6d8d0-0255-46cf-bfd8-9db91ffaac35', 1, NULL, '2022-12-01 13:55:28.3662500 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e24ef931-8071-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.GROUP_NAME"
    },
    "fieldSettings": {
        "validationField": "displayName"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.group.displayName"
    (dataValueChange)="self.onChangeTitleValue()"
    [elementName]="''edit:Partner_group_details.Group_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''displayName''"
    [validator]="self.partnerGroupValidator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.group.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-12-01 13:58:13.6528226 +00:00', 1, N'N', '9a89da6c-50eb-45bb-b977-3b2cfd1277e8', 1, NULL, '2022-12-01 13:58:13.6528226 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c615a9c2-8071-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-partner-type', N'Partner type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.PARTNER_TYPE"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.group.partnerTypeId"
    [dataCacheName]="''PartnerTypeDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_group_details.Partner_type''"
    [getListItemsFunction]="self.partnerTypeListFn"
    [getOneItemFunction]="self.partnerTypeFn"
    [isDisabled]="!self.isNew || self.group.isDeleted"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [textField]="''displayName''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [validationField]="''partnerTypeId''"
    [validator]="self.partnerGroupValidator"
    [valueField]="''id''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-12-01 14:02:16.3967046 +00:00', 1, N'N', '3a7bfa30-6fe2-40e3-9024-e6a55b334e65', 1, NULL, '2022-12-01 14:02:16.3967046 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('79e19f05-8171-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-use-rfm', N'Use RFM', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.USE_RFM"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.group.useRFM"
    [elementName]="''checkbox:Partner_group_details.Use_rfm''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-12-01 14:04:08.7437305 +00:00', 1, N'N', '2c23ebb7-d7b1-43ed-a988-be0f46deda95', 1, NULL, '2022-12-01 14:04:08.7437305 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ba153449-8171-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-is-registered-by-card-only', N'Is registered by card only', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.IS_REGISTERED_BY_CARD_ONLY"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.group.isRegisterByCardOnly"
    [elementName]="''checkbox:Partner_group_details.Registered_by_card''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-12-01 14:06:02.1223482 +00:00', 1, N'N', 'c4e05094-1f56-46fa-8886-49a4959cb3fc', 1, NULL, '2022-12-01 14:06:02.1223482 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cd2d528f-8171-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-is-clear-points-due-inactive', N'Is clear points due inactive', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.RESET_BONUS_BALANCES"
    }
}', N'<cr-checkbox-control
    (dataValueChange)="self.isClearPointsChecked($event)"
    [(dataValue)]="self.group.isClearPointsDueInactivity"
    [elementName]="''checkbox:Partner_group_details.Reset_bonus_balances''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-12-01 14:07:59.7600845 +00:00', 1, N'N', '1cb5fdcb-b350-409c-9580-25395e3bc99c', 1, NULL, '2022-12-01 14:07:59.7600845 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6c4545d3-8171-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-is-external-club-type', N'Is external club type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.IS_EXTERNAL_CLUB_TYPE"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.group.isExternalClubType"
    [elementName]="''checkbox:Partner_group_details.Is_external_club_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-12-01 14:09:53.7605612 +00:00', 1, N'N', '57c62a4d-f3a2-4812-85f3-1f659d08c34e', 1, NULL, '2022-12-01 14:09:53.7605612 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cfa83133-8271-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-is-db-check-type', N'Is DB check type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.IS_DB_CHECK_TYPE"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.group.isDbCheckType"
    [elementName]="''checkbox:Partner_group_details.Is_DB_check_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.group.isDeleted || !self.group.isExternalClubType || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-12-01 14:12:34.6933071 +00:00', 1, N'N', '4351f2c4-94c5-4ed7-bd02-aa0869d524a0', 1, NULL, '2022-12-01 14:12:34.6933071 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8ec46366-8271-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-is-visible-on-pos', N'Is visible on POS', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.IS_VISIBLE_ON_POS"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.group.isVisibleOnPOS"
    [elementName]="''checkbox:Partner_group_details.Is_Visible_on_POS''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-12-01 14:14:00.5854990 +00:00', 1, N'N', '0b6191a5-c59b-48d9-828b-db7557c567fb', 1, NULL, '2022-12-01 14:14:00.5854990 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fd926f94-8271-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-is-activation-control', N'Is activation control', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.IS_ACTIVATION_CONTROL"
    }
}', N'<cr-checkbox-control
    [(dataValue)]="self.group.isActivationControl"
    (dataValueChange)="self.onAllowActivationToggle($event)"
    [elementName]="''checkbox:Partner_group_details.Is_activation_control''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-12-01 14:15:17.8380669 +00:00', 1, N'N', '11ab7b3e-e6e1-4883-a097-8312c72adcef', 1, NULL, '2022-12-01 14:15:17.8380669 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bb157860-8371-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-total-inactive-days', N'Total inactive days', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.TOTAL_INACTIVE_DAYS",
        "min": 0,
        "format": "n0",
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "totalInactiveDays"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.totalInactiveDays"
    [elementName]="''numeric:Partner_group_details.Total_inactive_days''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''totalInactiveDays''"
    [validator]="self.partnerGroupValidator"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
></cr-numeric-control>', '2022-12-01 14:21:00.1490491 +00:00', 1, N'N', 'f033d6e8-94ec-4ece-a23d-a0a4e360d98b', 1, NULL, '2022-12-01 14:21:00.1490491 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a5064eca-8371-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-active-start-item', N'Active start item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.START_ACTIVATION_ITEM"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.group.activeStartItemId"
    [dataCacheName]="''PartnerGroupActiveItemDropdown''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_group_details.Active_start_item''"
    [getListItemsFunction]="self.getItemListFn"
    [getOneItemFunction]="self.getItemOneFn"
    [permissionSettings]="{
        isAccessEdit: (self.EndpointName.partner_group__item_dropdown_GET | endpointAccessGrantedPipe),
        isAccessRead: (self.EndpointName.partner_group__item_id_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [textField]="''name''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [valueField]="''id''"
    [isDisabled]="self.group.isDeleted || !self.group.isActivationControl"
    [validator]="self.partnerGroupValidator"
    [validationField]="''activeStartItemId''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-12-01 14:23:57.7119013 +00:00', 1, N'N', '44dd0d8c-09c5-41ec-a8db-7eb24211e60e', 1, NULL, '2022-12-01 14:23:57.7119013 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('09497e38-8471-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-active-start-period', N'Active start period', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.START_ACTIVATION_PERIOD",
        "min": 0,
        "max": 2147483647,
        "format": "#",
        "decimals": 0,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "activeStartPeriod"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.activeStartPeriod"
    [elementName]="''edit:Partner_group_details.Active_start_period''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.partnerGroupValidator"
    [validationField]="''activeStartPeriod''"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || !self.group.isActivationControl || {{disabled}}"
></cr-numeric-control>', '2022-12-01 14:27:02.5775497 +00:00', 1, N'N', '6fe48832-3fcb-4d2b-847a-1ff9a01f10e3', 1, NULL, '2022-12-01 14:27:02.5775497 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5e404e18-8671-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-active-prolong-type', N'Active prolong type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.PROLONG_TYPE"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.group.activeProlongType"
    (valueChange)="self.onProlongTypeToggle($event)"
    [getListItemsFunction]="self.getProlongTypeListFn$"
    [getOneItemFunction]="self.getProlongTypeItemFn$"
    [valueField]="''uid''"
    [textField]="''name''"
    [isDisabled]="self.group.isDeleted || !self.group.isActivationControl"
    [dataCacheName]="''PartnerGroupActiveProlongTypeDropdown''"
    [elementName]="''smart-dropdown:Partner_group_details.Active_prolong_type''"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-12-01 14:40:27.5691230 +00:00', 1, N'N', 'a99bc07f-729f-4d72-8563-338e358e6d4e', 1, NULL, '2022-12-01 14:40:27.5691230 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ad376888-8671-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-active-prolong-item', N'Active prolong item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.PROLONG_ITEM"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.group.activeProlongItemId"
    [dataCacheName]="''PartnerGroupProlongItemDropdown''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_group_details.Prolong_item''"
    [getListItemsFunction]="self.getItemListFn"
    [getOneItemFunction]="self.getItemOneFn"
    [permissionSettings]="{
        isAccessEdit: (self.EndpointName.partner_group__item_dropdown_GET | endpointAccessGrantedPipe),
        isAccessRead: (self.EndpointName.partner_group__item_id_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [textField]="''name''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [valueField]="''id''"
    [isDisabled]="self.group.isDeleted || !self.group.isActivationControl"
    [validator]="self.partnerGroupValidator"
    [validationField]="''activeProlongItemId''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-12-01 14:43:35.6441133 +00:00', 1, N'N', '09d57333-34fd-450e-9cca-57cbfcb5ab2e', 1, NULL, '2022-12-01 14:43:35.6441133 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1025f5f7-8671-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-active-prolong-amount', N'Active prolong amount', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.PROLONG_AMOUNT",
        "min": 0,
        "max": 2147483647,
        "format": "#,.##",
        "decimals": 2,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "activeProlongAmount"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.activeProlongAmount"
    [elementName]="''edit:Partner_group_details.Active_prolong_amount''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.partnerGroupValidator"
    [validationField]="''activeProlongAmount''"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || !self.group.isActivationControl || {{disabled}}"
></cr-numeric-control>
', '2022-12-01 15:44:10.0900000 +00:00', 2, N'N', 'f0c85084-6a78-4245-946a-15715be65f3a', 1, NULL, '2022-12-01 14:46:42.7947920 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('01a06362-8771-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-active-prolong-period', N'Active prolong period', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.PROLONG_PERIOD",
        "min": 0,
        "max": 2147483647,
        "format": "#",
        "decimals": 0,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "activeProlongPeriod"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.activeProlongPeriod"
    [elementName]="''edit:Partner_group_details.Active_prolong_period''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.partnerGroupValidator"
    [validationField]="''activeProlongPeriod''"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || !self.group.isActivationControl || {{disabled}}"
></cr-numeric-control>
', '2022-12-01 14:49:41.3573249 +00:00', 1, N'N', 'aca29f4d-3327-494d-831f-735d09d81afe', 1, NULL, '2022-12-01 14:49:41.3573249 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e672ea5c-8871-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-frequency-from', N'Frequency from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.FREQUENCY_FROM",
        "min": -2147483647,
        "max": 2147483647,
        "format": "n0",
        "decimals": 0,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "frequencyFrom"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.frequencyFrom"
    [elementName]="''numeric:Partner_group_details.Frequency_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''frequencyFrom''"
    [validator]="self.partnerGroupValidator"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
></cr-numeric-control>', '2022-12-01 14:56:41.6713062 +00:00', 1, N'N', 'b476c7a4-e810-4969-a848-b38097b071b0', 1, NULL, '2022-12-01 14:56:41.6713062 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('edbf3c97-8871-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-frequency-to', N'Frequency to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.FREQUENCY_TO",
        "min": -2147483647,
        "max": 2147483647,
        "format": "n0",
        "decimals": 0,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "frequencyTo"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.frequencyTo"
    [elementName]="''numeric:Partner_group_details.Frequency_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''frequencyTo''"
    [validator]="self.partnerGroupValidator"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
></cr-numeric-control>', '2022-12-01 14:58:19.5185261 +00:00', 1, N'N', '6356c3bc-4e23-4035-8eeb-a4c8a907edae', 1, NULL, '2022-12-01 14:58:19.5185261 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c24a9834-8971-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-recency-from', N'Recency from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.RECENCY_FROM",
        "min": -2147483647,
        "max": 2147483647,
        "format": "n0",
        "decimals": 0,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "recencyFrom"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.recencyFrom"
    [elementName]="''numeric:Partner_group_details.Recency_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''recencyFrom''"
    [validator]="self.partnerGroupValidator"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
></cr-numeric-control>', '2022-12-01 15:02:43.5207490 +00:00', 1, N'N', '8220e61d-380e-4be2-a86e-e7162bf09b01', 1, NULL, '2022-12-01 15:02:43.5207490 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8fa6ec5d-8971-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-recency-to', N'Recency to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.RECENCY_TO",
        "min": -2147483647,
        "max": 2147483647,
        "format": "n0",
        "decimals": 0,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "recencyTo"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.recencyTo"
    [elementName]="''numeric:Partner_group_details.Recency_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''recencyTo''"
    [validator]="self.partnerGroupValidator"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
></cr-numeric-control>', '2022-12-01 15:03:52.8601871 +00:00', 1, N'N', 'ba8338c6-d4f9-42de-9a5b-204ddc057b07', 1, NULL, '2022-12-01 15:03:52.8601871 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b66bc0a7-8971-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-monetary-from', N'Monetary from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.MONETARY_FROM",
        "min": -1000000000000,
        "max": 1000000000000,
        "format": "n2",
        "decimals": 2,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "monetaryFrom"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.monetaryFrom"
    [elementName]="''numeric:Partner_group_details.Monetary_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''monetaryFrom''"
    [validator]="self.partnerGroupValidator"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
></cr-numeric-control>', '2022-12-01 15:05:56.7217206 +00:00', 1, N'N', '84be25d3-926b-4dc3-a429-c90dc347551f', 1, NULL, '2022-12-01 15:05:56.7217206 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c8049ad5-8971-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-monetary-to', N'Monetary to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER_GROUP.DETAILS.MONETARY_TO",
        "min": -1000000000000,
        "max": 1000000000000,
        "format": "n2",
        "decimals": 2,
        "autoCorrectMinMax": true
    },
    "fieldSettings": {
        "validationField": "monetaryTo"
    }
}', N'<cr-numeric-control
    [(dataValue)]="self.group.monetaryTo"
    [elementName]="''numeric:Partner_group_details.Monetary_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.partner_group_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.partner_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''monetaryTo''"
    [validator]="self.partnerGroupValidator"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
    [isDisabled]="self.group.isDeleted || {{disabled}}"
></cr-numeric-control>', '2022-12-01 15:07:13.6452424 +00:00', 1, N'N', 'fd777e1b-ca6e-407b-80a2-af90785f5724', 1, NULL, '2022-12-01 15:07:13.6452424 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('33f12dab-8a71-ed11-835f-02f176033ddb', '4c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-group-details-udfs-list', N'Partner group UDF', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-udf-list
        [cacheName]="''PartnerGroupUserFieldViewStateCache''"
        *ngIf="(self.EndpointName.partner_group__user_defined_field_GET | endpointAccessGrantedPipe) &&
                      (self.EndpointName.partner__group__user_defined_field_default_value_GET | endpointAccessGrantedPipe); else noAccess"
        [isNew]="self.isNew"
        [udf]="self.group.udf"
        [viewName]="''Partner_group_details''"
        [loadUserDefinedFieldListForDropdownFn$]="self.loadUserDefinedFieldListForDropdownFn$"
        [getUserFields$]="self.getUserFields$"
        [loadUserFields$]="self.loadUserFields$"
        [getUserFieldsDefault$]="self.getUserFieldsDefault$"
        [class]=''{{classes}}''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>', '2022-12-01 15:13:11.9693747 +00:00', 1, N'N', '29e89a44-1cd4-41aa-a883-e4eae7bfc746', 1, NULL, '2022-12-01 15:13:11.9693747 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8b260c3d-8b71-ed11-835f-02f176033ddb', '167690c8-0d6b-ed11-835f-02f176033ddb', N'partner-group-creation-date', N'Creation date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.CREATION_DATE"
    }
}', N'<div class="cr-footer-flex-wrapper" [class]=''{{classes}}''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
          [dataLabel]="{{label}}"
          [dataLabelTranslateKeys]="{{translateKey}}"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
          [isUnderline]="true"
          [dataLabel]="self.group?.creationDate | stringToDate | date:self.currentDateFormatPattern"
        ></cr-text-field-control>
    </div>
</div>', '2022-12-01 15:17:16.6952715 +00:00', 1, N'N', '9d22f417-5755-4ba0-848d-afd8fb2fe751', 1, NULL, '2022-12-01 15:17:16.6952715 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('46d93a7a-8b71-ed11-835f-02f176033ddb', '167690c8-0d6b-ed11-835f-02f176033ddb', N'partner-group-update-date', N'Update date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.UPDATE_DATE"
    }
}', N'<div class="cr-footer-flex-wrapper" [class]=''{{classes}}''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control 
            [dataLabel]="{{label}}"
            [dataLabelTranslateKeys]="{{translateKey}}"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control 
            [isUnderline]="true"
            [dataLabel]="self.group?.updateDate | stringToDate | date:self.currentDateFormatPattern"
        ></cr-text-field-control>
    </div>
</div>', '2022-12-01 15:18:59.3423302 +00:00', 1, N'N', '30de13de-4f6d-437d-b3d9-98d7cbc7dee9', 1, NULL, '2022-12-01 15:18:59.3423302 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('3d959573-5172-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-hierarchy-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_ITEM_HIERARCHY.TITLE"
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
                    "appearance": "secondary-button",
                    "name": "Add current",
                    "template": "custom"
                },
                {
                    "appearance": "secondary-button",
                    "name": "Add sub",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-pin",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-refresh",
                    "template": "custom"
                },
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.SAVE",
                    "template": "custom"
                },
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CREATE",
                    "template": "custom"
                },
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.CANCEL",
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
></cr-title-header>', '2022-12-02 16:01:50.9900000 +00:00', 4, N'N', 'a243fccf-d8eb-470a-a3a5-0b8963e8cda9', 1, NULL, '2022-12-02 14:56:08.5453757 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('15e2c42d-5272-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-hierarchy-first-hierarchy-name', N'Hierarchy 1 description', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_ITEM_HIERARCHY.FIRST_LEVEL_HIERARCHY_NAME"
    },
    "fieldSettings": {
        "validationField": "levelOne"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.itemHierarchyNames[''1'']"
    (dataValueChange)="self.changeHierarchyLabel()"
    [elementName]="''edit:Item_hierarchy.First_level_hierarchy_name''"
    [permissionSettings]="{
        isAccessEdit: (self.EndpointName.item_hierarchy_level_level_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''levelOne''"
    [validator]="self.itemHierarchyLevelLabelValidator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-12-02 16:01:59.0400000 +00:00', 3, N'N', '3982b5ce-0f3d-44c3-be8d-696d8196232c', 1, NULL, '2022-12-02 15:01:20.9115797 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('596c2b85-5272-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-hierarchy-second-hierarchy-name', N'Hierarchy 2 description', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_ITEM_HIERARCHY.SECOND_LEVEL_HIERARCHY_NAME"
    },
    "fieldSettings": {
        "validationField": "levelTwo"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.itemHierarchyNames[''2'']"
    (dataValueChange)="self.changeHierarchyLabel()"
    [elementName]="''edit:Item_hierarchy.Second_level_hierarchy_name''"
    [permissionSettings]="{
        isAccessEdit: (self.EndpointName.item_hierarchy_level_level_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''levelTwo''"
    [validator]="self.itemHierarchyLevelLabelValidator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-12-02 16:02:07.4166667 +00:00', 3, N'N', 'b032795b-b2ed-4339-b515-67166e5ef6f2', 1, NULL, '2022-12-02 15:03:47.5453657 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('152997b4-5272-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-hierarchy-third-hierarchy-name', N'Hierarchy 3 description', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_ITEM_HIERARCHY.THIRD_LEVEL_HIERARCHY_NAME"
    },
    "fieldSettings": {
        "validationField": "levelThree"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.itemHierarchyNames[''3'']"
    (dataValueChange)="self.changeHierarchyLabel()"
    [elementName]="''edit:Item_hierarchy.Third_level_hierarchy_name''"
    [permissionSettings]="{
        isAccessEdit: (self.EndpointName.item_hierarchy_level_level_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''levelThree''"
    [validator]="self.itemHierarchyLevelLabelValidator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-12-02 16:02:16.3700000 +00:00', 3, N'N', 'd63c8941-541e-4da1-ac9c-fb6a24e80f81', 1, NULL, '2022-12-02 15:05:07.1043477 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7b8dfbdd-5272-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-hierarchy-fourth-hierarchy-name', N'Hierarchy 4 description', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_ITEM_HIERARCHY.FOURTH_LEVEL_HIERARCHY_NAME"
    },
    "fieldSettings": {
        "validationField": "levelFour"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.itemHierarchyNames[''4'']"
    (dataValueChange)="self.changeHierarchyLabel()"
    [elementName]="''edit:Item_hierarchy.Fourth_level_hierarchy_name''"
    [permissionSettings]="{
        isAccessEdit: (self.EndpointName.item_hierarchy_level_level_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''levelFour''"
    [validator]="self.itemHierarchyLevelLabelValidator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-12-02 16:02:24.0666667 +00:00', 3, N'N', '92a0e771-940e-4ba9-af6b-2cf718c9b183', 1, NULL, '2022-12-02 15:06:16.5488635 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ca1e800d-5372-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-hierarchy-fifth-hiaerarchy-name', N'Hierarchy 5 description', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_ITEM_HIERARCHY.FIFTH_LEVEL_HIERARCHY_NAME"
    },
    "fieldSettings": {
        "validationField": "levelFive"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.itemHierarchyNames[''5'']"
    (dataValueChange)="self.changeHierarchyLabel()"
    [elementName]="''edit:Item_hierarchy.Fifth_level_hierarchy_name''"
    [permissionSettings]="{
        isAccessEdit: (self.EndpointName.item_hierarchy_level_level_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''levelFive''"
    [validator]="self.itemHierarchyLevelLabelValidator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-12-02 16:02:31.7300000 +00:00', 3, N'N', '88aa91a4-5241-4f86-956e-8bbc9231a5c0', 1, NULL, '2022-12-02 15:07:36.2705738 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2d68d67c-5a72-ed11-835f-02f176033ddb', 'f53a7f10-5a72-ed11-835f-02f176033ddb', N'item-hierarchy-tree', N'Item hierarchy tree', N'{
    "defaultValue": {
        "showLevelsTo": 5
    }
}', N'<cr-item-hierarchy-tree
    [showOn]="''hover''"
    [itemHierarchyNames]="self.itemHierarchyNames"
    [showLevelsTo]="{{showLevelsTo}}"
></cr-item-hierarchy-tree>', '2022-12-02 16:00:49.5402669 +00:00', 1, N'N', '4dc3ccc4-c1cf-4d56-afd3-8ba55c793828', 1, NULL, '2022-12-02 16:00:49.5402669 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fa0680a6-8072-ed11-835f-02f176033ddb', '60f34af4-7d72-ed11-835f-02f176033ddb', N'item-hierarchy-details', N'Item hierarchy details', N'{
    "defaultValue": {}
}', N'<cr-item-hierarchy-details
    [class]=''{{classes}}''
    (onCreateImage)="self.onCreateImagePopup()"
    (onUpdateImage)="self.onUpdateImagePopup($event)"
    (onDeleteImage)="self.onDeleteImagePopup($event)"
></cr-item-hierarchy-details>
', '2022-12-02 20:50:25.3700000 +00:00', 2, N'N', '567cd120-e9d3-4ab3-b1ea-f8a10b0d6bf9', 1, NULL, '2022-12-02 20:34:00.3142010 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('93ef401f-857f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'business-type-grid', N'Business type grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "BUSINESS_TYPE.GRID.CODE",
                "hidden": false
            },
            {
                "field": "name",
                "titleTranslateKey": "BUSINESS_TYPE.GRID.NAME",
                "hidden": false
            },
            {
                "field": "printName",
                "titleTranslateKey": "BUSINESS_TYPE.GRID.PRINT_NAME",
                "hidden": false
            },
            {
                "field": "isDefault",
                "titleTranslateKey": "BUSINESS_TYPE.GRID.IS_DEFAULT",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "type": "text",
                    "field": "code",
                    "titleTranslateKey": "BUSINESS_TYPE.GRID.CODE",
                    "isNotUseValidation": true,
                    "isReadOnly": true
                },
                {
                    "type": "translate-key",
                    "field": "name",
                    "titleTranslateKey": "BUSINESS_TYPE.GRID.NAME",
                    "isReadOnly": true
                },
                {
                    "type": "text",
                    "field": "printName",
                    "titleTranslateKey": "BUSINESS_TYPE.GRID.PRINT_NAME"
                },
                {
                    "type": "boolean",
                    "field": "isDefault",
                    "titleTranslateKey": "BUSINESS_TYPE.GRID.IS_DEFAULT",
                    "isNotUseValidation": true,
                    "isReadOnly": true,
                    "autoFit": true
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "code": "2",
                        "guid": "6C073929-D9ED-4F5D-9CDA-C46387EA55F3",
                        "id": 2,
                        "isDefault": false,
                        "name": "BUSINESS_TYPE.DATA_NAME.PUBLIC_COMPANY",
                        "printName": "ח.צ"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
          [elementName]="''edit-grid-server-paging:Business_type_list.Grid''"
          [permissionSettings]="{
            isAccessRead: (self.EndpointName.busines_type_GET | endpointAccessGrantedPipe),
            isAccessUpdate: (self.EndpointName.busines_type_id_PUT | endpointAccessGrantedPipe)
          }"
          [dataCacheName]="''ViewBusinessTypeGrid''"
          [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
          [dataSource]="self.dataSource"
          [uniqueField]="''id''"
          [resizable]="true"
          [pageable]="true"
          [validator]="self.validator"
          [allowUpdateAction]="true"
          [isRefreshOnUpdate]="true"
          (pageChangeEvent)="self.changePage($event)"
          (updateActionEvent)="self.updateHandler($event)"
          [class]=''{{classes}}''
        ></cr-edit-grid-server-paging>
</div>', '2022-12-20 15:24:59.1400000 +00:00', 5, N'N', '3b4ebc52-6619-47c9-9483-722af1baaf78', 1, NULL, '2022-12-19 10:08:46.0080659 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('18d8cc3f-867f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'business-type-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "BUSINESS_TYPE.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-refresh",
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
></cr-title-header>', '2022-12-19 10:38:47.5733333 +00:00', 2, N'N', '983e142b-c9ab-4299-bf10-4542628f3c38', 1, NULL, '2022-12-19 10:16:50.1087896 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('366d0dea-917f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'bank-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "BANK.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-refresh",
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
></cr-title-header>', '2022-12-19 11:40:20.2087350 +00:00', 1, N'N', '12e1c7ba-500e-44fe-89b3-279d713a0e6b', 1, NULL, '2022-12-19 11:40:20.2087350 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b73ca682-937f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'bank-grid', N'Bank grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "BANK.LIST.GRID.CODE",
                "hidden": false
            },
            {
                "field": "name",
                "titleTranslateKey": "BANK.LIST.GRID.NAME",
                "hidden": false
            },
            {
                "field": "country",
                "titleTranslateKey": "BANK.LIST.GRID.COUNTRY",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "type": "text",
                    "field": "code",
                    "titleTranslateKey": "BANK.LIST.GRID.CODE"
                },
                {
                    "type": "text",
                    "field": "name",
                    "titleTranslateKey": "BANK.LIST.GRID.NAME"
                },
                {
                    "type": "dropdown",
                    "isNotUseValidation": true,
                    "field": "country",
                    "titleTranslateKey": "BANK.LIST.GRID.COUNTRY",
                    "dropdownOptions": {
                        "textField": "name",
                        "valueField": "id"
                    }
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "code": "999",
                        "country": null,
                        "guid": "FCC30076-673A-4C2C-8D89-A791D100032E",
                        "id": 1,
                        "isDeleted": false,
                        "name": "bank-999"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
     <cr-edit-grid-server-paging
          [elementName]="''edit-grid-server-paging:Bank_list.Grid''"
          [permissionSettings]="{
            isAccessRead: (self.EndpointName.bank_GET | endpointAccessGrantedPipe),
            isAccessUpdate: (self.EndpointName.bank_PUT | endpointAccessGrantedPipe),
            isAccessCreate: (self.EndpointName.bank_POST | endpointAccessGrantedPipe)
          }"

          [dataCacheName]="''ViewBankGrid''"
          [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
          [dataSource]="self.dataSource"
          [uniqueField]="''id''"
          [resizable]="true"
          [pageable]="true"
          [validator]="self.bankValidator"

          [allowCreateAction]="true"
          [allowUpdateAction]="true"

          (pageChangeEvent)="self.changePage($event)"
          (createActionEvent)="self.createHandler($event)"
          (updateActionEvent)="self.updateHandler($event)"
          [class]=''{{classes}}''
        ></cr-edit-grid-server-paging>   
</div>', '2022-12-20 15:34:32.4000000 +00:00', 3, N'N', '6b275063-0b45-428f-9a21-7be4c6a80aee', 1, NULL, '2022-12-19 11:51:45.7206071 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9b76ce95-a57f-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'loyalty-points-list-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "LOYALTY_POINTS.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-refresh",
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
></cr-title-header>', '2022-12-20 10:12:41.6633333 +00:00', 2, N'N', 'b00e5fe6-b6ed-49fe-ad7c-826c82c2f005', 1, NULL, '2022-12-19 14:01:08.8020763 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e80a572d-4f80-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'loyalty-points-point-movement-subtype-list-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "LOYALTY_POINTS.POINT_MOVEMENT_SUB_TYPE.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance":"icon-button",
                    "iconSvg": "icon-pin",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-refresh",
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
></cr-title-header>', '2022-12-20 10:29:20.8533333 +00:00', 2, N'N', '09906820-cef6-46d1-a3b1-9e0cc02221be', 1, NULL, '2022-12-20 10:15:07.9804264 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a99a3d59-5780-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-list-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
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
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-12-20 11:13:37.6073001 +00:00', 1, N'N', '0835202a-080d-42de-9f1c-e42f18afdf74', 1, NULL, '2022-12-20 11:13:37.6073001 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6aa0cde3-5b80-ed11-835f-02f176033ddb', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-list-search', N'Search', N'{
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
></cr-button-control>', '2022-12-20 14:27:47.4900000 +00:00', 3, N'N', '6b985a9a-c0c6-4f5b-960b-72a001b2b834', 1, NULL, '2022-12-20 11:46:08.0636650 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('327f5a0e-6c80-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.currency.code"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Currency_details.Code''"
    [permissionSettings]="{
            isAccessEdit: self.isNew ? (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.validator"
    [validationField]="''code''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.currency.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-12-20 14:28:45.9033333 +00:00', 3, N'N', '2f4860f5-635b-4835-9fa1-b9126d64a040', 1, NULL, '2022-12-20 13:41:51.3988530 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dbcde9a7-6c80-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-display-name', N'Display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.DISPLAYNAME"
    },
    "fieldSettings": {
        "validationField": "displayName"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.currency.displayName"
    [elementName]="''edit:Currency_details.Display_name''"
    [permissionSettings]="{
            isAccessEdit: self.isNew ? (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.validator"
    [validationField]="''displayName''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.currency.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-12-20 14:28:53.6433333 +00:00', 3, N'N', '6b7aabdd-e4d8-4eb3-b698-83aa8c3bc521', 1, NULL, '2022-12-20 13:46:09.0294363 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('75919cb7-6d80-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-active', N'Active', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.IS_ACTIVE",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''edit:Currency_details.Is_active''"
    [permissionSettings]="{
              isAccessEdit: self.isNew ? (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
                (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
            }"
    [(dataValue)]="self.currency.isActive"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.currency.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-12-20 14:29:03.0700000 +00:00', 2, N'N', '0726f564-ce0b-41eb-8f7d-f322dea9dca9', 1, NULL, '2022-12-20 13:53:44.8635381 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('83d7937a-6e80-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-display-sign', N'Display sign', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.DISPLAY_SIGN"
    },
    "fieldSettings": {
        "validationField": "displaySign"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.currency.displaySign"
    [elementName]="''edit:Currency_details.Display_sign''"
    [permissionSettings]="{
            isAccessEdit: self.isNew ? (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.validator"
    [validationField]="''displaySign''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.currency.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-12-20 13:59:11.9620611 +00:00', 1, N'N', 'b3bb7c51-e40a-45fb-9b1b-875e218b0622', 1, NULL, '2022-12-20 13:59:11.9620611 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d219a9e2-6f80-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-print-sign', N'Print sign', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.PRINT_SIGN"
    },
    "fieldSettings": {
        "validationField": "printSign"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.currency.printSign"
    [elementName]="''edit:Currency_details.Print_sign''"
    [permissionSettings]="{
            isAccessEdit: self.isNew ? (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.validator"
    [validationField]="''printSign''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.currency.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-12-20 14:09:16.0811602 +00:00', 1, N'N', 'a26917b1-509c-470d-88aa-65160efa2275', 1, NULL, '2022-12-20 14:09:16.0811602 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c734fd47-7080-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-display-cent-sign', N'Display cent sign', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.DISPLAY_CENT_SIGN"
    },
    "fieldSettings": {
        "validationField": "displayCentSign"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.currency.displayCentSign"
    [elementName]="''edit:Currency_details.Display_cent_sign''"
    [permissionSettings]="{
            isAccessEdit: self.isNew ?- (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.validator"
    [validationField]="''displayCentSign''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.currency.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-12-20 14:14:44.6766667 +00:00', 2, N'N', '8e2be12e-f6ab-426d-ac25-df3b415f8d2b', 1, NULL, '2022-12-20 14:12:06.0822343 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5d81349d-7080-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-print-cent-sign', N'Print cent sign', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.PRINT_CENT_SIGN"
    },
    "fieldSettings": {
        "validationField": "printCentSign"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.currency.printCentSign"
    [elementName]="''edit:Currency_details.Print_cent_sign''"
    [permissionSettings]="{
            isAccessEdit: self.isNew ?- (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
          }"
    [validator]="self.validator"
    [validationField]="''printCentSign''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.currency.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-12-20 14:14:36.6303871 +00:00', 1, N'N', '6f8d64c0-40b7-46a7-b33a-2fd10decef3d', 1, NULL, '2022-12-20 14:14:36.6303871 +00:00')
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
></cr-control-edit>
', '2022-11-26 16:33:45.9700000 +00:00', 37, N'N', 'b8bdb638-9203-4ea7-a715-4a7e41f43470', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
        "dynamicColumnSettings": [
            {
                "field": "partnerCode",
                "titleTranslateKey": "PARTNER.GRID.CODE",
                "hidden": false
            },
            {
                "field": "partnerType",
                "titleTranslateKey": "PARTNER.GRID.TYPE",
                "hidden": false
            },
            {
                "field": "firstName",
                "titleTranslateKey": "PARTNER.GRID.FIRST_NAME",
                "hidden": false
            },
            {
                "field": "lastName",
                "titleTranslateKey": "PARTNER.GRID.LAST_NAME",
                "hidden": false
            },
            {
                "field": "passport",
                "titleTranslateKey": "PARTNER.GRID.PASSPORT",
                "type": "text",
                "hidden": false
            },
            {
                "field": "phone1",
                "titleTranslateKey": "PARTNER.GRID.PHONE",
                "hidden": false
            },
            {
                "field": "partnerGroups",
                "titleTranslateKey": "PARTNER.GRID.GROUPS",
                "hidden": false
            },
            {
                "field": "isValid",
                "titleTranslateKey": "PARTNER.GRID.VALID",
                "hidden": false
            },
            {
                "field": "balance",
                "titleTranslateKey": "PARTNER.GRID.BALANCE",
                "hidden": false
            },
            {
                "field": "registrationDate",
                "titleTranslateKey": "PARTNER.GRID.REGISTRATION_DATE",
                "hidden": false
            },
            {
                "field": "isDeleted",
                "titleTranslateKey": "PARTNER.GRID.IS_DELETED",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "field": "partnerCode",
                    "titleTranslateKey": "PARTNER.GRID.CODE",
                    "type": "link",
                    "autoFit": true
                },
                {
                    "field": "partnerType",
                    "titleTranslateKey": "PARTNER.GRID.TYPE",
                    "type": "text",
                    "width": "120px"
                },
                {
                    "field": "firstName",
                    "titleTranslateKey": "PARTNER.GRID.FIRST_NAME",
                    "type": "text"
                },
                {
                    "field": "lastName",
                    "titleTranslateKey": "PARTNER.GRID.LAST_NAME",
                    "type": "text"
                },
                {
                    "field": "passport",
                    "titleTranslateKey": "PARTNER.GRID.PASSPORT",
                    "type": "text",
                    "width": "150px"
                },
                {
                    "field": "phone1",
                    "titleTranslateKey": "PARTNER.GRID.PHONE",
                    "type": "text",
                    "width": "170px"
                },
                {
                    "field": "partnerGroups",
                    "titleTranslateKey": "PARTNER.GRID.GROUPS",
                    "type": "text"
                },
                {
                    "field": "isValid",
                    "titleTranslateKey": "PARTNER.GRID.VALID",
                    "type": "boolean",
                    "autoFit": true
                },
                {
                    "field": "balance",
                    "titleTranslateKey": "PARTNER.GRID.BALANCE",
                    "type": "decimal",
                    "width": "120px"
                },
                {
                    "field": "registrationDate",
                    "titleTranslateKey": "PARTNER.GRID.REGISTRATION_DATE",
                    "type": "date",
                    "autoFit": true
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "PARTNER.GRID.IS_DELETED",
                    "type": "boolean",
                    "autoFit": true
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "partnerCode": "code",
                        "partnerType": "Customer",
                        "firstName": "Yura",
                        "lastName": "Prisyazhnyy",
                        "passport": "1124444",
                        "phone1": "+380666876892",
                        "partnerGroups": "test1, test2",
                        "isValid": true,
                        "balance": 20,
                        "registrationDate": "2022-01-01T00:00:00Z",
                        "isDeleted": false
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [dataCacheName]="''partnerGrid''"
        [dataSource]="self.dataSource"
        [elementName]="''edit-grid-server-paging:Partner_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]="{{classes}}"
      ></cr-edit-grid-server-paging>
</div>', '2022-12-07 10:11:08.8266667 +00:00', 16, N'N', '27c992ae-53b7-46dc-b28e-c4ce901ad3ea', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
        "translateKey": "PARTNER.GRID.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
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
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:43:44.1700000 +00:00', 9, N'N', '89f587d5-0967-4957-b347-49f03a5df557', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a63fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-code', N'Partner code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.PARTNER_CODE"
    },
    "fieldSettings": {
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
></cr-control-edit>', '2022-11-18 14:54:17.8366667 +00:00', 12, N'N', '684d6056-3f00-4f68-b0e7-bb56c41acd14', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a73fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.FIRST_NAME",
        "isDisabled": false
    },
    "fieldSettings": {
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
></cr-control-edit>', '2022-11-18 14:54:01.5533333 +00:00', 10, N'N', '89dbfd63-e2b4-45f4-a1ae-2aeadc082b8a', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
        "translateKey": "PARTNER.DETAILS.HEADER.PARTNER_TYPE"
    },
    "fieldSettings": {
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
></cr-dropdown-smart-control>', '2022-11-18 14:55:26.4300000 +00:00', 6, N'N', 'a28ad228-8734-4c30-aa93-c78515f96a5d', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('aa3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-government', N'Government id', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.GOVERNMENT_ID",
        "isDisabled": false
    },
    "fieldSettings": {
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
></cr-control-edit>', '2022-11-18 14:55:56.5600000 +00:00', 7, N'N', '2d758248-bf57-4983-9e0f-c4a76dbce468', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
        "translateKey": "PARTNER.DETAILS.TITLE"
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
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>', '2022-11-21 08:44:29.8600000 +00:00', 4, N'N', 'db55c3ec-3c36-4830-8662-dd5ea6408003', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
        "translateKey": "PARTNER.DETAILS.GENERAL.BIRTHDAY"
    },
    "fieldSettings": {
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
></cr-control-datepicker>', '2022-11-18 14:56:47.4500000 +00:00', 6, N'N', '19f51afe-acd7-4bf0-b082-0547dfecfc68', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
        "isDisabled": false
    },
    "fieldSettings": {
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
></cr-control-edit>', '2022-11-18 14:58:12.9666667 +00:00', 7, N'N', '98e7a231-afc5-412a-8a28-c704e433878e', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
        "isDisabled": false
    },
    "fieldSettings": {
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
></cr-control-edit>', '2022-11-18 14:58:46.7100000 +00:00', 6, N'N', 'd9ce02cd-a03a-4d28-be32-51d6090809fd', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_FROM"
    },
    "fieldSettings": {
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
></cr-control-datepicker>', '2022-11-18 14:59:22.5800000 +00:00', 9, N'N', '6cf32ff4-e3db-4787-8507-52167568df02', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('be3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-valid-to', N'Valid to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_TO"
    },
    "fieldSettings": {
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
></cr-control-datepicker>', '2022-11-18 14:59:46.3266667 +00:00', 6, N'N', '9cfd492f-3485-4691-9cee-479701b50167', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bf3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-frozen-from', N'Frozen from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_FROM"
    },
    "fieldSettings": {
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
></cr-control-datepicker>', '2022-11-18 15:00:09.4400000 +00:00', 6, N'N', '5fcd7862-1c5f-46e4-8a47-c2b25fd5ccb8', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-frozen-to', N'Frozen to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_TO"
    },
    "fieldSettings": {
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
></cr-control-datepicker>', '2022-11-18 15:00:37.9266667 +00:00', 6, N'N', '214c8033-14eb-42b4-9cb2-6e280551f113', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
></cr-partner-mailing-category-control>', '2022-12-07 15:21:02.4166667 +00:00', 6, N'N', '32b85b02-2796-40a7-a8e5-c8630d20293b', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
        "editable": true
    },
    "fieldSettings": {
        "validationField": "partnerGroups"
    }
}', N'<cr-partner-group-control
    [editable]="{{editable}} && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>', '2022-12-08 08:56:02.6933333 +00:00', 6, N'N', 'ab0985df-6850-4b65-8b29-76260a98d55f', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
></cr-partner-cards-list>', '2022-11-21 12:53:04.1733333 +00:00', 4, N'N', '1c042fbc-3630-4238-a7c8-82d7755c1369', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
></cr-partner-point>', '2022-11-21 12:53:40.8800000 +00:00', 4, N'N', '6b01cdeb-81fa-427f-8635-1302cd721aae', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d43fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '473c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-point-history', N'Point history', N'{
    "defaultValue": {}
}', N'<cr-partner-point-history
    [class]=''{{classes}}''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>', '2022-11-21 12:54:14.0400000 +00:00', 6, N'N', 'e4b184f2-c5de-4a1c-a538-56887af871b3', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
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
    [getUserFieldsDefault$]="self.getUserFieldsDefault$"
    [class]=''{{classes}}''
></cr-udf-list>
<ng-template #noAccess>
    <div class="cr-no-read-access p-2">
        {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
    </div>
</ng-template>', '2022-11-22 14:33:20.2366667 +00:00', 4, N'N', '0cc2082b-717d-490e-8e61-98faa8f4e820', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('db3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-list-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
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
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:45:10.2400000 +00:00', 2, N'N', 'c3f56176-bb4f-4549-a908-a2eb35f75455', 1, NULL, '2022-10-05 15:41:51.6224251 +03:00')
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
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('df3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-groups-list-grid', N'VAT groups list', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "TAX_GROUP.LIST.GRID.CODE",
                "hidden": false
            },
            {
                "field": "name",
                "titleTranslateKey": "TAX_GROUP.LIST.GRID.NAME",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "previewDataSource": {
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
                    "field": "code",
                    "type": "link",
                    "titleTranslateKey": "TAX_GROUP.LIST.GRID.CODE"
                },
                {
                    "field": "name",
                    "type": "text",
                    "titleTranslateKey": "TAX_GROUP.LIST.GRID.NAME"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]=''self.columnSettings''
        [dataCacheName]="''TaxGroupGrid''"
        [dataSource]="self.gridData"
        [elementName]="''edit-grid-server-paging:TaxGroup_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]="{{classes}}"
      ></cr-edit-grid-server-paging>
</div>', '2022-12-19 11:53:15.9300000 +00:00', 8, N'N', 'd237aee3-f3ed-426d-ba8e-6dd7bc879fa5', 1, NULL, '2022-10-05 15:54:13.4471104 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
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
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
></cr-title-header>', '2022-12-19 16:08:49.9533333 +00:00', 5, N'N', '92ab48a5-ce32-40f8-8fd1-f7fbba688a82', 1, NULL, '2022-10-06 11:38:16.8955230 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.CODE"
    },
    "fieldSettings": {
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
></cr-control-edit>', '2022-12-19 16:09:01.2133333 +00:00', 3, N'N', 'b2145926-3071-4dc7-8cac-ac7516ef1faa', 1, NULL, '2022-10-06 11:41:56.2186922 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.NAME"
    },
    "fieldSettings": {
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
></cr-control-edit>', '2022-12-19 16:09:12.4600000 +00:00', 3, N'N', '01fb9cab-b8f4-4d63-aa11-3d3849c30998', 1, NULL, '2022-10-06 11:43:40.1317372 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-definitions-grid', N'Definitions grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "name",
                "titleTranslateKey": "TAX_GROUP.DETAILS.GRID.NAME",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "validationField": "taxGroupLocationList",
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                "field": "name",
                "titleTranslateKey": "TAX_GROUP.DETAILS.GRID.NAME",
                "hidden": false
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "name": "Tax definition"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:TaxGroup_details_definition.Definitions_grid''"
        [dataSource]="self.adapter.dataSource"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''    
        [allowCreateAction]="true"
        [allowUpdateAction]="true"
        [allowDeleteAction]="true"
        [overrideCreateHandler]="true"
        [overrideDeleteHandler]="true"
        [overrideUpdateHandler]="true"
        (overrideCreateEvent)="self.addDefinitionLocationHandler()"
        (overrideUpdateEvent)="self.editDefinitionLocationHandler($event)"
        (overrideDeleteEvent)="self.deleteDefinitionLocationHandler($event)"
        [pageable]="true"
        [resizable]="true"
        (pageChangeEvent)="self.onPageChangeDefinitionLocation($event)"
        [dataCacheName]="''tax-group-definition-grid''"
        [uniqueField]="''uid''"
        [permissionSettings]="{
            isAccessCreate: self.isNew ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) : (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe),
            isAccessUpdate: self.isNew ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) : (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe),
            isAccessDelete: self.isNew ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) : (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)
        }"
        [class]=''{{classes}}''
    ></cr-edit-grid-server-paging>
</div>
', '2022-12-20 11:52:10.6966667 +00:00', 9, N'N', 'd78b00aa-3afd-470c-ae58-0e2fb7deed27', 1, NULL, '2022-10-06 11:48:25.3768319 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0033360b-ad5e-ed11-8e5e-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-update-employee', N'Update employee', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.UPDATE_EMPLOYEE"
    }
}', N'<cr-control-edit
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [isDisabled]="{{disabled}}"
    [customClass]=''{{classes}}''
    [dataValue]="self.partnerDetails.updateEmployee?.name"
    [elementName]="''label:Partner_details.Update_employee''"
></cr-control-edit>', '2022-11-07 17:14:58.6866667 +00:00', 3, N'N', '5718ecdc-feb6-41cb-86a6-dec9604f31bd', 1, NULL, '2022-11-07 17:01:33.4566596 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e13e2c1f-ee64-ed11-8e60-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
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
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:46:25.7166667 +00:00', 2, N'N', '5062ce04-9fff-4217-8eb3-567067622a8a', 1, NULL, '2022-11-15 16:02:21.6340833 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b176345f-ee64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.CODE"
    }
}', N'<cr-control-edit 
    [elementName]="''edit:Item_list.Code''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.itemFilterRequest.code"
></cr-control-edit>', '2022-11-15 16:04:09.0621233 +02:00', 1, N'N', '58cf5515-02a7-4196-aece-d0552744afc1', 1, NULL, '2022-11-15 16:04:09.0621233 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('53fe73a6-ee64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-short-display-name', N'Short display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.SHORT_DISPLAY_NAME"
    }
}', N'<cr-control-edit 
    [elementName]="''edit:Item_list.Display_name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.itemFilterRequest.shortDisplayName"
></cr-control-edit>', '2022-11-15 16:06:34.7600000 +00:00', 2, N'N', '0de87cec-7c78-47a8-bdb2-17077352a39d', 1, NULL, '2022-11-15 16:06:08.5967059 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5100d2e1-ee64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-barcode', N'Barcode', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.BARCODE"
    }
}', N'<cr-control-edit 
    [elementName]="''edit:Item_list.Barcode''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.itemFilterRequest.barcode"
></cr-control-edit>', '2022-11-15 16:07:48.1983697 +02:00', 1, N'N', '73ace343-04f6-471c-b01c-c0b50771b707', 1, NULL, '2022-11-15 16:07:48.1983697 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5c148005-ef64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-model-code', N'Model code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.MODEL_CODE"
    }
}', N'<cr-control-edit 
    [elementName]="''edit:Item_list.Model_code''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.itemFilterRequest.itemModelCode"
></cr-control-edit>', '2022-11-15 16:08:48.0594652 +02:00', 1, N'N', '18fe1006-e2d4-474a-b5c7-fc0e3600172f', 1, NULL, '2022-11-15 16:08:48.0594652 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c22a9544-ef64-ed11-8e60-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-show-deleted', N'Show deleted', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.SHOW_DELETED"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_list.Deleted''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.itemFilterRequest.showDeleted"
></cr-checkbox-control>', '2022-11-15 16:42:32.5200000 +00:00', 2, N'N', 'f8008d53-1705-4988-a988-087e2972ce80', 1, NULL, '2022-11-15 16:10:33.8941250 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('93bb107a-ef64-ed11-8e60-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-show-frozen', N'Show frozen', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.SHOW_FROZEN"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_list.Frozen''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.itemFilterRequest.showFrozen"
></cr-checkbox-control>', '2022-11-15 16:12:03.6231699 +02:00', 1, N'N', '8a7ec90f-93dc-4b0b-8cac-2d799182cb06', 1, NULL, '2022-11-15 16:12:03.6231699 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7de704ac-ef64-ed11-8e60-4ccc6a2bb6d6', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-search', N'Search', N'{
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
    *ngIf="(self.EndpointName.item_GET | endpointAccessGrantedPipe)"
></cr-button-control>', '2022-11-15 17:05:13.4500000 +00:00', 2, N'N', 'a95614b3-6ca5-47f9-b691-aa2bd54c1679', 1, NULL, '2022-11-15 16:13:27.4317309 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c43a9aff-f064-ed11-8e60-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-grid', N'Item list grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
                {
                    "field": "code",
                    "titleTranslateKey": "ITEM.LIST.GRID.CODE",
                    "hidden": false
                },
                {
                    "field": "shortDisplayName",
                    "titleTranslateKey": "ITEM.LIST.GRID.SHORT_DISPLAY_NAME",
                    "hidden": false
                },
                {
                    "field": "defaultBarcode",
                    "titleTranslateKey": "ITEM.LIST.GRID.BARCODE",
                    "hidden": false
                },
                {
                    "field": "itemModel.code",
                    "titleTranslateKey": "ITEM.LIST.GRID.MODEL_CODE",
                    "hidden": false
                },
                {
                    "field": "createDate",
                    "titleTranslateKey": "ITEM.LIST.GRID.CREATION_DATE",
                    "hidden": false
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "ITEM.LIST.GRID.DELETED",
                    "hidden": false
                },
                {
                    "field": "isFrozen",
                    "titleTranslateKey": "ITEM.LIST.GRID.FROZEN",
                    "hidden": false
                }
            ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "code": "Item code",
                        "shortDisplayName": "Item name",
                        "defaultBarcode": "0014342422",
                        "itemModel": {
                            "id": 1,
                            "code": "Item model",
                            "name": "Item model"
                        },
                        "createDate": "2022-03-20T20:00:00Z",
                        "isDeleted": false,
                        "isFrozen": false
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.CODE",
                    "field": "code",
                    "type": "link",
                    "autoFit": true
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.SHORT_DISPLAY_NAME",
                    "field": "shortDisplayName",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.BARCODE",
                    "field": "defaultBarcode",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.MODEL_CODE",
                    "field": "itemModel.code",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.CREATION_DATE",
                    "field": "createDate",
                    "type": "date",
                    "autoFit": true
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.DELETED",
                    "field": "isDeleted",
                    "type": "boolean",
                    "autoFit": true
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.FROZEN",
                    "field": "isFrozen",
                    "type": "boolean",
                    "autoFit": true
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_list.Grid''"
        [dataCacheName]="''ItemListGrid''"
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [dataSource]="self.gridData"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]="{{classes}}"
      ></cr-edit-grid-server-paging>
</div>', '2022-12-07 10:14:40.3966667 +00:00', 10, N'N', '8a0acf2a-3a14-490e-b170-e56cd2a80e22', 1, NULL, '2022-11-15 16:22:57.1579716 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1af3e0a2-fc64-ed11-8e60-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.TITLE"
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
    [titleValueTranslateKey]="self.isNewItem ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
', '2022-11-25 09:44:27.6933333 +00:00', 3, N'N', '997c0ceb-64cc-4e3e-9fdb-a7cffc1302fd', 1, NULL, '2022-11-15 17:46:15.5540890 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('018a1ffa-fc64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.ITEM_CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}} || !self.isNewItem || self.item.isDeleted"
    [elementName]="''edit:Item_details.Item_code''"
    [(dataValue)]="self.item.code"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''code''"
    [validator]="self.validator"
></cr-control-edit>', '2022-11-25 09:44:56.8933333 +00:00', 6, N'N', 'a1808e91-c802-45cc-8032-fc343cdc812d', 1, NULL, '2022-11-15 17:48:41.9260545 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('73350c6b-fd64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-short-display-name', N'Short display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.SHORT_DISPLAY_NAME"
    },
    "fieldSettings": {
        "validationField": "shortDisplayName"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}} || self.item.isDeleted"
    [elementName]="''edit:Item_details.Display_name''"
    [(dataValue)]="self.item.shortDisplayName"
    (dataValueChange)="self.changeTitle()"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''shortDisplayName''"
    [validator]="self.validator"
></cr-control-edit>', '2022-11-25 09:45:20.3133333 +00:00', 4, N'N', 'dea05fb6-cd50-4aca-9fe8-e6da85ebf0dd', 1, NULL, '2022-11-15 17:51:51.3819123 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0c06e30d-ff64-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-model', N'Model', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.MODEL"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Model''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_model_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_model_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemModelValueDropdownCache''"
    [(value)]="self.item.itemModelID"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadModelDropdownFunction"
    [getListItemsFunction]="self.loadModelsListDropdownFunction"
    [listItemsFunctionAdditionalParameter]="self.item.itemModelID"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:46:29.0033333 +00:00', 4, N'N', '494e7478-784e-4b9c-9430-de021fbb023a', 1, NULL, '2022-11-15 18:03:34.0773516 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5d681ea7-ff64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-short-print-name', N'Short print name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.SHORT_PRINT_NAME"
    },
    "fieldSettings": {
        "validationField": "shortPrintName"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Short_print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.shortPrintName"
    [validator]="self.validator"
    [validationField]="''shortPrintName''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 09:46:47.8800000 +00:00', 3, N'N', '91e3098e-377e-4899-8b06-8e0ec4c47a09', 1, NULL, '2022-11-15 18:07:51.1579357 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c351fb11-0065-ed11-8e60-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-registration-date', N'Registration date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.REGISTRATION_DATE"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.item_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.item_id_PUT)
    }"

    [(dataValue)]="self.item.registrationDate"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:47:15.5500000 +00:00', 2, N'N', 'd621f2dc-f47b-4246-96f8-bd283c1a9fb8', 1, NULL, '2022-11-15 18:10:50.4441923 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d8279ca8-0365-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric1-type', N'Metric 1 type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_TYPE1"
    },
    "fieldSettings": {
        "validationField": "metric1"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_type_1''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_id_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemMetricTypeFirstDropdownCache''"
    (currentItemValueChange)="self.metricTypeChanged(''metric1'')"
    [(value)]="self.item.metric1.type"
    [textField]="''displayName''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricTypeForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricTypeListForDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric1''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:47:31.1733333 +00:00', 4, N'N', '76112ba4-049b-4639-8ee9-84ae9b7737d3', 1, NULL, '2022-11-15 18:36:31.6466776 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('14349c74-0465-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric1-value', N'Metric 1 value', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_VALUE1"
    },
    "fieldSettings": {
        "validationField": "metric1"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_value_1''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_metricTypeId_value_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_metricTypeId_value_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.metric1.type || self.item.isDeleted"
    [dataCacheName]="''ItemMetricValueFirstDropdownCache''"
    [(value)]="self.item.metric1.value"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricValueForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricValueListForDropdownFunction"
    [listItemsFunctionAdditionalParameter]="self.item.metric1.type"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric1''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:48:07.4600000 +00:00', 3, N'N', '6e334170-ea55-4167-994b-6e459fea627b', 1, NULL, '2022-11-15 18:42:13.9021972 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2e2b82dd-0465-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric2-type', N'Metric 2 type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_TYPE2"
    },
    "fieldSettings": {
        "validationField": "metric2"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_type_2''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_id_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemMetricTypeSecondDropdownCache''"
    (currentItemValueChange)="self.metricTypeChanged(''metric2'')"
    [(value)]="self.item.metric2.type"
    [textField]="''displayName''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricTypeForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricTypeListForDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric2''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:47:47.8800000 +00:00', 3, N'N', '2898bf0b-e573-45bd-93b1-9453d9ef3a68', 1, NULL, '2022-11-15 18:45:09.8923438 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ccc91b1e-0565-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric2-value', N'Metric 2 value', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_VALUE2"
    },
    "fieldSettings": {
        "validationField": "metric2"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_value_2''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_metricTypeId_value_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_metricTypeId_value_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.metric2.type || self.item.isDeleted"
    [dataCacheName]="''ItemMetricValueSecondDropdownCache''"
    [(value)]="self.item.metric2.value"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricValueForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricValueListForDropdownFunction"
    [listItemsFunctionAdditionalParameter]="self.item.metric2.type"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric2''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:48:23.2433333 +00:00', 3, N'N', 'c997a92c-f2b0-4461-9ffd-5a7f5ac4d0a3', 1, NULL, '2022-11-15 18:46:58.2732876 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8adc7e6a-0665-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric3-type', N'Metric 3 type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_TYPE3"
    },
    "fieldSettings": {
        "validationField": "metric3"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_type_3''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_id_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemMetricTypeThirdDropdownCache''"
    (currentItemValueChange)="self.metricTypeChanged(''metric3'')"
    [(value)]="self.item.metric3.type"
    [textField]="''displayName''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricTypeForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricTypeListForDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric3''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:48:45.6666667 +00:00', 3, N'N', '508e803e-ccc2-4b5e-9aed-2d352be6dc36', 1, NULL, '2022-11-15 18:56:15.9261450 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bc7a229c-0665-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric3-value', N'Metric 3 value', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_VALUE3"
    },
    "fieldSettings": {
        "validationField": "metric3"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_value_3''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_metricTypeId_value_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_metricTypeId_value_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.metric3.type || self.item.isDeleted"
    [dataCacheName]="''ItemMetricValueThirdDropdownCache''"
    [(value)]="self.item.metric3.value"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricValueForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricValueListForDropdownFunction"
    [listItemsFunctionAdditionalParameter]="self.item.metric3.type"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric3''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:48:59.3733333 +00:00', 3, N'N', 'd45337c9-1f66-49f6-9edb-e092945a2cd1', 1, NULL, '2022-11-15 18:57:39.2067900 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1818b984-a87f-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'loyalty-points-list-grid', N'Loyalty points list grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "LOYALTY_POINTS.GRID.CODE",
                "hidden": false
            },
            {
                "field": "name",
                "titleTranslateKey": "LOYALTY_POINTS.GRID.NAME",
                "hidden": false
            },
            {
                "field": "linkToBonus",
                "titleTranslateKey": "LOYALTY_POINTS.GRID.TEMPORARY_LOYALTY_POINT",
                "hidden": false
            },
            {
                "field": "waitingDays",
                "titleTranslateKey": "LOYALTY_POINTS.GRID.WAITING_DAYS",
                "hidden": false
            },
            {
                "field": "isTemporary",
                "titleTranslateKey": "LOYALTY_POINTS.GRID.IS_TEMPORARY",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "type": "text",
                    "field": "code",
                    "titleTranslateKey": "LOYALTY_POINTS.GRID.CODE"
                },
                {
                    "type": "text",
                    "field": "name",
                    "titleTranslateKey": "LOYALTY_POINTS.GRID.NAME"
                },
                {
                    "type": "dropdown",
                    "field": "linkToBonus",
                    "titleTranslateKey": "LOYALTY_POINTS.GRID.TEMPORARY_LOYALTY_POINT",
                    "dropdownOptions": {
                        "textField": "name",
                        "valueField": "id",
                        "usePrimitiveForBinding": true,
                        "codeField": "code"
                    },
                    "isNotUseValidation": true
                },
                {
                    "type": "numeric",
                    "field": "waitingDays",
                    "titleTranslateKey": "LOYALTY_POINTS.GRID.WAITING_DAYS",
                    "isNotUseValidation": true
                },
                {
                    "type": "boolean",
                    "field": "isTemporary",
                    "titleTranslateKey": "LOYALTY_POINTS.GRID.IS_TEMPORARY",
                    "width": "100px",
                    "isReadOnly": true,
                    "isNotUseValidation": true
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "code": "1",
                        "isTemporary": true,
                        "linkToBonus": null,
                        "waitingDays": null,
                        "name": "Loyalty points"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Loyalty_points_list.Grid''"
        [permissionSettings]="{
          isAccessUpdate: (self.EndpointName.loyalty_points_id_PUT | endpointAccessGrantedPipe),
          isAccessCreate: (self.EndpointName.loyalty_points_POST | endpointAccessGrantedPipe),
          isAccessRead: (self.EndpointName.loyalty_points_GET | endpointAccessGrantedPipe)
        }"

        [dataSource]="self.dataSource"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"

        [allowCreateAction]="true"
        [allowUpdateAction]="true"
        [isRefreshOnCreate]="true"
        [isRefreshOnUpdate]="true"
        [validator]="self.loyaltyPointsValidator"

        (createActionEvent)="self.createHandler($event)"
        (updateActionEvent)="self.updateHandler($event)"
        (pageChangeEvent)="self.changePage($event)"
        [dataCacheName]="''loyalty-points-grid-cache''"
        [class]=''{{classes}}''
    ></cr-edit-grid-server-paging>
 </div>', '2022-12-20 16:04:57.7666667 +00:00', 4, N'N', '25320222-ceca-4a22-bd38-b6c6f2f1f42e', 1, NULL, '2022-12-19 14:22:08.6309528 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fd53dd47-5080-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'loyalty-points-point-movement-subtype-list-grid', N'Loyalty points point movement subtype list grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "LOYALTY_POINTS.POINT_MOVEMENT_SUB_TYPE.GRID.CODE",
                "hidden": false
            },
            {
                "field": "name",
                "titleTranslateKey": "LOYALTY_POINTS.POINT_MOVEMENT_SUB_TYPE.GRID.NAME",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "type": "text",
                    "field": "code",
                    "titleTranslateKey": "LOYALTY_POINTS.POINT_MOVEMENT_SUB_TYPE.GRID.CODE"
                },
                {
                    "type": "text",
                    "field": "name",
                    "titleTranslateKey": "LOYALTY_POINTS.POINT_MOVEMENT_SUB_TYPE.GRID.NAME"
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "code": "dd",
                        "guid": "B6D2E173-FAE0-4465-8131-87D9190B9F4C",
                        "id": 6,
                        "name": "string"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Loyalty_points.Point_movement_sub_type_grid''"
        [dataCacheName]="''LoyaltyPointsMovementSubTypeList''"
        [dataSource]="self.dataSource"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [allowDeleteAction]="true"
        [allowCreateAction]="true"
        [allowUpdateAction]="true"
        [validator]="self.validator"
        [permissionSettings]="{
          isAccessDelete: (self.EndpointName.loyalty_points_movement_sub_type_DELETE | endpointAccessGrantedPipe),
          isAccessUpdate: (self.EndpointName.loyalty_points_movement_sub_type_PUT | endpointAccessGrantedPipe),
          isAccessCreate: (self.EndpointName.loyalty_points_movement_sub_type_POST | endpointAccessGrantedPipe),
          isAccessRead: (self.EndpointName.loyalty_points_movement_sub_type_GET | endpointAccessGrantedPipe)
        }"
        (pageChangeEvent)="self.changePage($event)"
        (deleteActionEvent)="self.deleteHandler($event)"
        (createActionEvent)="self.createHandler($event)"
        (updateActionEvent)="self.updateHandler($event)"
        [class]="{{classes}}"
    ></cr-edit-grid-server-paging>
</div>
', '2022-12-20 16:06:32.2633333 +00:00', 4, N'N', '3847d38b-725a-4a1b-a707-4625141b322d', 1, NULL, '2022-12-20 10:23:01.9779709 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2eb16506-5a80-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-list-grid', N'Currency list grid', N'{
    "defaultValue": {
        "dynamicColumnSettings": [
            {
                "field": "code",
                "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.CODE",
                "hidden": false
            },
            {
                "field": "displayName",
                "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.DISPLAYNAME",
                "hidden": false
            },
            {
                "field": "displaySign",
                "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.DISPLAY_SIGN",
                "hidden": false
            },
            {
                "field": "displayCentSign",
                "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.DISPLAY_CENT_SIGN",
                "hidden": false
            },
            {
                "field": "resolution",
                "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.RESOLUTION",
                "hidden": false
            },
            {
                "field": "isActive",
                "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.IS_ACTIVE",
                "hidden": false
            },
            {
                "field": "isDeleted",
                "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.IS_DELETED",
                "hidden": false
            }
        ]
    },
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "type": "link",
                    "field": "code",
                    "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.CODE"
                },
                {
                    "type": "text",
                    "field": "displayName",
                    "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.DISPLAYNAME"
                },
                {
                    "type": "text",
                    "field": "displaySign",
                    "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.DISPLAY_SIGN"
                },
                {
                    "type": "text",
                    "field": "displayCentSign",
                    "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.DISPLAY_CENT_SIGN"
                },
                {
                    "type": "numeric",
                    "field": "resolution",
                    "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.RESOLUTION",
                    "format": "n2"
                },
                {
                    "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.IS_ACTIVE",
                    "field": "isActive",
                    "type": "boolean",
                    "width": "100px"
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "MANAGE_DATA_CURRENCY.LIST.GRID.IS_DELETED",
                    "type": "boolean",
                    "hidden": true,
                    "width": "120px"
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "code": "NIS",
                        "displayName": "ש\"ח",
                        "displaySign": "ש\"ח",
                        "displayCentSign": "Agorat",
                        "resolution": 0.1,
                        "isActive": true,
                        "isDeleted": false
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (pageChangeEvent)="self.changePage($event)"
        (cellClickEvent)="self.onCellClick($event)"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:{{dynamicColumnSettings}}''
        [dataCacheName]="''ViewCurrencyGrid''"
        [dataSource]="self.dataSource"
        [elementName]="''edit-grid-server-paging:Currency_list.Grid''"
        [pageable]="true"
        [permissionSettings]="{
            isAccessRead: (self.EndpointName.currency_GET | endpointAccessGrantedPipe)
        }"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]=''{{classes}}''
    ></cr-edit-grid-server-paging>
</div>
', '2022-12-23 08:58:21.4500000 +00:00', 7, N'N', '0eab7420-e6d6-4460-9aea-ad3cef6db6c5', 1, NULL, '2022-12-20 11:32:47.1093166 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2def27a1-5a80-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-list-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.LIST.FILTER.CODE"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Currency_list.Code''"
    [(dataValue)]="self.currencyListFilter.code"
></cr-control-edit>', '2022-12-23 08:58:55.9833333 +00:00', 3, N'N', '12a03b7e-cf90-4176-ae2e-a8dc6f3ba56d', 1, NULL, '2022-12-20 11:37:06.7514285 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f8bd81f9-5a80-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-list-display-name', N'Display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.LIST.FILTER.DISPLAYNAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Currency_list.Displayname''"
    [(dataValue)]="self.currencyListFilter.displayName"
></cr-control-edit>
', '2022-12-23 08:59:21.6200000 +00:00', 3, N'N', 'cee75be0-07a6-4e79-b05f-4a69a857aaa0', 1, NULL, '2022-12-20 11:39:34.9794936 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1c416159-5b80-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-list-show-deleted', N'Show deleted', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SHOW_DELETED"
    }
}', N'<cr-checkbox-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [elementName]="''checkbox:Currency_list.Show_delete''"
    [(dataValue)]="self.currencyListFilter.showDeleted"
></cr-checkbox-control>', '2022-12-23 08:59:45.7366667 +00:00', 3, N'N', 'af90410c-2e74-4320-a5f9-97979488136c', 1, NULL, '2022-12-20 11:42:15.8278556 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b9cf7a80-7180-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-resolution', N'Resolution', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.RESOLUTION",
        "format": "''n2''"
    },
    "fieldSettings": {
        "validationField": "resolution"
    }
}', N'<cr-numeric-control
    [elementName]="''edit:Currency_details.Resolution''"
    [(dataValue)]="self.currency.resolution"
    [isDisabled]="self.currency.isDeleted"
    [permissionSettings]="{
            isAccessEdit: self.isNew ? (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
          }"
    [validationField]="''resolution''"
    [validator]="self.validator"      
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-12-23 09:42:58.4333333 +00:00', 5, N'N', '4e04514f-dc4d-46ec-87f5-40121273c71c', 1, NULL, '2022-12-20 14:20:50.3545401 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6d6027c7-7180-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-change-resolution', N'Change resolution', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.CHANGE_RESOLUTION",
        "format": "''n2''"
    },
    "fieldSettings": {
        "validationField": "changeResolution"
    }
}', N'<cr-numeric-control
    [elementName]="''edit:Currency_details.Change_resolution''"
    [(dataValue)]="self.currency.changeResolution"
    [isDisabled]="self.currency.isDeleted"
    [permissionSettings]="{
            isAccessEdit: self.isNew ? (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
          }"
    [validationField]="''changeResolution''"
    [validator]="self.validator"      
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-12-23 09:43:40.0633333 +00:00', 4, N'N', '98f9560d-1cb3-4368-9905-9718aac025e9', 1, NULL, '2022-12-20 14:22:48.9259757 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0a02070d-7280-ed11-835f-02f176033ddb', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-pay-resolution', N'Pay resolution', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.PAY_RESOLUTION",
        "format": "''n2''"
    },
    "fieldSettings": {
        "validationField": "payResolution"
    }
}', N'<cr-numeric-control
    [elementName]="''edit:Currency_details.Pay_resolution''"
    [(dataValue)]="self.currency.payResolution"
    [isDisabled]="self.currency.isDeleted"
    [permissionSettings]="{
            isAccessEdit: self.isNew ? (self.EndpointName.currency_POST | endpointAccessGrantedPipe) :
              (self.EndpointName.currency_id_PUT | endpointAccessGrantedPipe)
          }"
    [validationField]="''payResolution''"
    [validator]="self.validator"      
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-12-23 09:44:07.4266667 +00:00', 4, N'N', 'd7db8ae7-408b-444a-af49-c31f398fc8b0', 1, NULL, '2022-12-20 14:24:46.1543562 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c461534b-7380-ed11-835f-02f176033ddb', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'currency-details-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "MANAGE_DATA_CURRENCY.DETAILS.TITLE"
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
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null">
  </cr-title-header>', '2022-12-23 09:45:57.7633333 +00:00', 5, N'N', '796568ee-db67-485d-a666-a6a025dca15c', 1, NULL, '2022-12-20 14:33:40.1703492 +00:00')

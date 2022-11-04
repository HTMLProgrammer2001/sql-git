INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e213903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.MANAGE_MAILING_CATEGORIES",
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
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-03 15:23:53.5533333 +00:00', 7, N'N', 'de49bb74-a9c9-4656-8d37-87cf44ffd596', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e313903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-grid', N'Grid', N'{
    "defaultValue": {
        "allowMultiSelect": true,
        "uniqueField": "id",
        "dataSource": {
            "responseList": [
                {
                    "id": 1,
                    "displayName": "Display name",
                    "email": true,
                    "sms": true
                }
            ],
            "page": 1,
            "size": 5,
            "totalElements": 1
        },
        "columns": [
            {
                "titleTranslateKey": "PARTNER.DETAILS.GENERAL.DISPLAY_NAME",
                "field": "displayName",
                "type": "text"
            },
            {
                "titleTranslateKey": "PARTNER.DETAILS.GENERAL.EMAIL",
                "field": "email",
                "type": "boolean",
                "allowInCellEditing": true,
                "width": "120px"
            },
            {
                "titleTranslateKey": "PARTNER.DETAILS.GENERAL.SMS",
                "field": "sms",
                "type": "boolean",
                "allowInCellEditing": true,
                "width": "120px"
            }
        ]
    }
}', N'<div class="cr-grid-wrapper-new {{classes}}">
    <ng-template #tooltipTemplate let-anchor>
      <span>{{ self.anchor.nativeElement.innerText }}</span>
    </ng-template>

    <div 
        kendoTooltip
        showOn="none"
        [tooltipTemplate]="self.tooltipTemplate"
        filter=".k-grid td"
        (mouseover)="self.showTooltip($event)"
    >
      <kendo-grid
        [attr.data-element-name]="''grid:Partner_details.Mailing_category_manage_grid''"
        [data]="self.cache.gridView"
        [pageSize]="self.cache.paginatorGrid?.size"
        [skip]="self.cache.paginatorGrid?.skip"
        [pageable]="{
            buttonCount: 10,
            info: true,
            type: ''numeric'' ,
            pageSizes: true,
            previousNext: true
        }"
        [selectable]="{enabled: true, checkboxOnly: true}"
        [rowSelected]="self.isRowSelected"
        [resizable]="true"
        (selectionChange)="self.onSelectedChange($event)"
        (pageChange)="self.pageChange($event)"
      >
        <kendo-grid-checkbox-column title="" width="60px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.USE''">
                  {{ ''PARTNER.DETAILS.GENERAL.USE'' | translate }}
                </span>
          </ng-template>
        </kendo-grid-checkbox-column>
        <kendo-grid-column title="">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.DISPLAY_NAME''">
                  {{ ''PARTNER.DETAILS.GENERAL.DISPLAY_NAME'' | translate }}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <label>{{dataItem.name}}</label>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column title="" width="120px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.EMAIL''">
                  {{ ''PARTNER.DETAILS.GENERAL.EMAIL'' | translate }}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.mailingCategorySelected?.action === self.Action.default || dataItem.mailingCategorySelected?.action === self.Action.create || dataItem.mailingCategorySelected?.action === self.Action.update">
              <cr-checkbox-control
                [(dataValue)]="dataItem.mailingCategorySelected.sendMail"
                (dataValueChange)="self.dataChanged(dataItem)"
              ></cr-checkbox-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column title="" width="120px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.SMS''">
                  {{ ''PARTNER.DETAILS.GENERAL.SMS'' | translate }}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.mailingCategorySelected?.action === self.Action.default || dataItem.mailingCategorySelected?.action === self.Action.create || dataItem.mailingCategorySelected?.action === self.Action.update">
              <cr-checkbox-control
                [(dataValue)]="dataItem.mailingCategorySelected.sendSMS"
                (dataValueChange)="self.dataChanged(dataItem)"
              ></cr-checkbox-control>
            </section>
          </ng-template>
        </kendo-grid-column>

        <ng-template kendoGridNoRecordsTemplate>
            <span [attr.data-translate]="''COMMON.GRID.NO_RECORDS''">
                {{ ''COMMON.GRID.NO_RECORDS'' | translate }}
            </span>
        </ng-template>

        <ng-template kendoPagerTemplate>
          <cr-grid-paginator [totalElements]="self.cache.paginatorGrid?.totalElements || self.cache.gridView?.total"></cr-grid-paginator>
        </ng-template>
      </kendo-grid>
    </div>
  </div>', '2022-03-09 17:55:44.4633333 +00:00', 13, N'N', '807bd660-0601-44d7-ae67-4b7168fffcff', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e413903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-group-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.MANAGE_GROUP.TITLE",
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
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-04 13:17:22.2766667 +00:00', 3, N'N', '8d0a3ff5-6d34-4d08-aaa9-851849e8c3e3', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e513903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups-grid', N'Grid', N'{
    "defaultValue": {
        "allowMultiSelect": true,
        "uniqueField": "id",
        "dataSource": {
            "responseList": [
                {
                    "id": 1,
                    "displayName": "Display name",
                    "activated": true,
                    "from": "1991-06-01T00:00:00.000Z",
                    "to": "1991-07-01T00:00:00.000Z"
                }
            ],
            "page": 1,
            "size": 5,
            "totalElements": 1
        },
        "columns": [
            {
                "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME",
                "field": "displayName",
                "type": "text"
            },
            {
                "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED",
                "field": "activated",
                "type": "boolean",
                "allowInCellEditing": true,
                "width": "120px"
            },
            {
                "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.FROM",
                "field": "from",
                "type": "date",
                "allowInCellEditing": true,
                "width": "180px"
            },
            {
                "titleTranslateKey": "PARTNER.DETAILS.MANAGE_GROUP.TO",
                "field": "to",
                "type": "date",
                "allowInCellEditing": true,
                "width": "180px"
            }
        ]
    }
}', N'<div class="cr-grid-wrapper-new {{classes}}">
<ng-template #tooltipTemplate let-anchor>
    <span>{{ self.anchor.nativeElement.innerText }}</span>
</ng-template>
    <div kendoTooltip
         showOn="none"
         [tooltipTemplate]="self.tooltipTemplate"
         filter=".k-grid td"
         (mouseover)="self.showTooltip($event)">
      <kendo-grid
        [attr.data-element-name]="''grid:Partner_details.Groups_grid''"
        [data]="self.cache.gridView"
        [pageSize]="self.cache.paginatorGrid?.size"
        [skip]="self.cache.paginatorGrid?.skip"

        [pageable]="{
            buttonCount: 10,
            info: true,
            type: ''numeric'' ,
            pageSizes: true,
            previousNext: true
          }"
        [selectable]="{enabled: true, checkboxOnly: true}"
        [rowSelected]="self.isRowSelected"
        [resizable]="true"
        (selectionChange)="self.onSelectedChange($event)"
        (pageChange)="self.pageChange($event)"
      >
        <kendo-grid-checkbox-column width="60px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''COMMON.SELECT''">
                  {{''COMMON.SELECT'' | translate}}
                </span>
          </ng-template>
        </kendo-grid-checkbox-column>
        <kendo-grid-column>
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <label>{{dataItem.displayName}}</label>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column width="120px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.partnerGroupSelected?.action === self.Action.default || dataItem.partnerGroupSelected?.action === self.Action.create || dataItem.partnerGroupSelected?.action === self.Action.update">
              <cr-checkbox-control
                [elementName]="''checkbox:Partner_details.Partner_group_selected''"
                [(dataValue)]="dataItem.partnerGroupSelected.isActivated"
                (dataValueChange)="self.dataChanged(dataItem)"
              ></cr-checkbox-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column width="180px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.FROM''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.FROM'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.partnerGroupSelected?.action === self.Action.default || dataItem.partnerGroupSelected?.action === self.Action.create || dataItem.partnerGroupSelected?.action === self.Action.update">
              <cr-date-picker-simple-control
                [elementName]="''simple-date:Partner_details.Partner_group_activated_from''"
                [(dataValue)]="dataItem.partnerGroupSelected.activatedFrom"
                (dataValueChange)="self.dataChanged(dataItem)"
                [validationMessage]="self.validateDates(dataItem.partnerGroupSelected.activatedFrom, dataItem.partnerGroupSelected.activatedTo, ''Activated date from should be greater than date to'')"
              ></cr-date-picker-simple-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column width="180px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.TO''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.TO'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.partnerGroupSelected?.action === self.Action.default || dataItem.partnerGroupSelected?.action === self.Action.create || dataItem.partnerGroupSelected?.action === self.Action.update">
              <cr-date-picker-simple-control
                [elementName]="''simple-date:Partner_details.Partner_group_activated_to''"
                [(dataValue)]="dataItem.partnerGroupSelected.activatedTo"
                (dataValueChange)="self.dataChanged(dataItem)"
                [validationMessage]="self.validateDates(dataItem.partnerGroupSelected.activatedFrom, dataItem.partnerGroupSelected.activatedTo, ''Activated date from should be greater than date to'')"
              ></cr-date-picker-simple-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <ng-template kendoGridNoRecordsTemplate>
              <span [attr.data-translate]="''COMMON.GRID.NO_RECORDS''">
                {{ ''COMMON.GRID.NO_RECORDS'' | translate }}
              </span>
        </ng-template>

        <ng-template kendoPagerTemplate>
          <cr-grid-paginator [totalElements]="self.cache.paginatorGrid?.totalElements || self.cache.gridView?.total"></cr-grid-paginator>
        </ng-template>
      </kendo-grid>
    </div>
</div>', '2022-03-09 18:17:14.8200000 +00:00', 5, N'N', 'e1f3f5f1-1aeb-4749-acf1-0dc4aa3d2ee8', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f113903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'create-partner-addresses-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.DETAILS_TITLE",
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
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-03-10 11:05:38.4133333 +00:00', 2, N'N', 'b6815c34-e360-428b-9a53-e9ea767458e8', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
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
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0f14903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'tax-group-definition-title', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.PANEL.TITLE_DEFINITIONS",
        "elements": [
            {
                "appearance": "primary-button",
                "nameTranslateKey": "COMMON.BUTTON.CONFIRM",
                "template": "custom"
            }
        ]
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [additionalTranslateKeys]="''COMMON.NEW''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
', '2022-10-06 12:06:33.6966667 +00:00', 2, N'N', '19bd012d-78c7-4466-9429-115ae3e3256a', 1, NULL, '2022-10-06 12:05:15.6069016 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e613903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.ADDRESS.DETAILS_TITLE",
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
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-04 17:16:45.3266667 +00:00', 5, N'N', 'dd0345a6-bec2-408c-8397-ffc1f0600de1', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e713903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-addresses-type', N'Address type', N'{
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
', '2022-11-04 17:16:56.2300000 +00:00', 3, N'N', '582b63e7-a796-40b0-9e89-292a0495fd0e', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
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
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fc13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.DETAILS_TITLE",
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
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
', '2022-11-04 18:11:46.5800000 +00:00', 2, N'N', 'ad007be6-7483-4e5e-b685-a475b11702d0', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fd13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.CODE"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_code''"
    [(dataValue)]="self.contactPerson.code"
    [validator]="self.contactPersonValidator"
    [validationField]="''code''"
></cr-control-edit>', '2022-11-04 18:12:00.6866667 +00:00', 4, N'N', '0202424c-639a-44f6-b1c7-da59423c42dd', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('fe13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.contactPersonValidator"
    [validationField]="''firstName''"
></cr-control-edit>', '2022-11-04 18:12:08.7900000 +00:00', 2, N'N', '29f6211a-b147-4c22-a64d-3495024b47b1', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ff13903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.contactPersonValidator"
    [validationField]="''lastName''"
></cr-control-edit>', '2022-11-04 18:12:15.9466667 +00:00', 2, N'N', '4b43940c-41da-4ecb-af74-2ccc6d9827ba', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0014903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-display-name', N'Display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.contactPersonValidator"
    [validationField]="''displayName''"
></cr-control-edit>', '2022-11-04 18:12:24.4033333 +00:00', 2, N'N', '33b7228b-dd44-4083-a9b3-3a7a546ffc3d', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0114903c-e94e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-person-email', N'Email', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.CONTACT_PERSON.EMAIL"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Partner_details.Contact_person_email''"
    [(dataValue)]="self.contactPerson.email"
    [validator]="self.contactPersonValidator"
    [validationField]="''email''"
></cr-control-edit>', '2022-11-04 18:12:33.5566667 +00:00', 2, N'N', '514da2f5-de5b-4e21-aa6d-1fe434b695a2', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')
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
    [selectedMailingCategory]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
></cr-partner-mailing-category-control>', '2022-11-04 18:14:16.7800000 +00:00', 2, N'N', '81f66fcf-ff72-4d30-aeca-91fd86597823', 1, NULL, '2022-09-28 17:31:50.1102942 +03:00')

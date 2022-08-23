SET IDENTITY_INSERT [dbo].[WebComponentViewSubSettings] ON
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (1, 1, 14, N'manage-mailing-category-title-header', N'Title header', N'{
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
></cr-title-header>', '2022-08-04 16:38:05.5200000 +00:00', 5, N'N', '67d497b6-085d-4423-8daf-b37137fa565c', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (2, 1, 10, N'manage-mailing-category-grid', N'Grid', N'{
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
  </div>', '2022-03-09 17:55:44.4633333 +00:00', 13, N'N', '807bd660-0601-44d7-ae67-4b7168fffcff', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (3, 2, 14, N'manage-partner-group-title-header', N'Title header', N'{
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
></cr-title-header>', '2022-03-09 18:13:27.7733333 +00:00', 2, N'N', '4ee5e615-abd1-4acd-a8b6-5d126ee2ee35', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (4, 2, 10, N'manage-partner-groups-grid', N'Grid', N'{
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
</div>', '2022-03-09 18:17:14.8200000 +00:00', 5, N'N', 'e1f3f5f1-1aeb-4749-acf1-0dc4aa3d2ee8', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (5, 3, 14, N'manage-partner-addresses-title-header', N'Title header', N'{
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
></cr-title-header>', '2022-03-10 11:16:47.4266667 +00:00', 4, N'N', '034c9744-1dc8-4159-a2e8-13fadd08994d', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (6, 3, 15, N'manage-addresses-type', N'Address type', N'{
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
', '2022-03-10 09:51:07.0866667 +00:00', 2, N'N', '748cb230-79b9-492b-9e18-82e77a5fc4d0', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (7, 3, 20024, N'manage-partner-addresses-state', N'State', N'{
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
></cr-combobox-smart-control>', '2022-03-10 09:52:13.1600000 +00:00', 3, N'N', '2dbd7d6e-bb3f-4e34-bb6c-12036c1aa674', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (8, 3, 20024, N'manage-partner-addresses-country', N'Country', N'{
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
></cr-combobox-smart-control>', '2022-03-10 10:49:30.6933333 +00:00', 2, N'N', '83f784c4-db3c-45a3-9b34-ed09072111ee', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (9, 3, 20024, N'manage-partner-addresses-county', N'County', N'{
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
></cr-combobox-smart-control>', '2022-03-10 10:50:24.6533333 +00:00', 2, N'N', 'd0ee8e0e-6193-493d-b657-22a76a9b33dd', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10, 3, 20024, N'manage-partner-addresses-city', N'City', N'{
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
></cr-combobox-smart-control>', '2022-03-10 10:51:22.8266667 +00:00', 2, N'N', '4702fe5a-6c70-449a-aca6-7de1c4188e2d', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (11, 3, 7, N'manage-partner-addresses-zip', N'Zip', N'{
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
></cr-control-edit>', '2022-03-10 10:54:01.8433333 +00:00', 4, N'N', '0b513b6f-7db7-4529-9bec-971312e96f9b', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (12, 3, 20024, N'manage-partner-addresses-street', N'Street', N'{
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
></cr-combobox-smart-control>', '2022-03-10 10:52:08.8000000 +00:00', 2, N'N', '55c380ac-1496-4b27-b7a9-b3b6939aa17b', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (13, 3, 7, N'manage-partner-addresses-block', N'Block', N'{
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
></cr-control-edit>', '2022-03-10 10:54:07.4966667 +00:00', 3, N'N', '1a5ec3ab-a4e4-4670-b73a-a6f0a29746c8', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (14, 3, 7, N'manage-partner-addresses-street-no', N'Street no', N'{
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
></cr-control-edit>', '2022-03-10 10:55:23.7066667 +00:00', 2, N'N', '8633aade-2179-4da1-954b-c32287f348ea', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (15, 3, 7, N'manage-partner-addresses-apartment', N'Apartment', N'{
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
></cr-control-edit>', '2022-03-10 10:55:53.8233333 +00:00', 2, N'N', 'a121e92d-c5dd-4e9a-aad4-2de5b6d02fb7', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (16, 4, 14, N'create-partner-addresses-title-header', N'Title header', N'{
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
></cr-title-header>', '2022-03-10 11:05:38.4133333 +00:00', 2, N'N', 'b6815c34-e360-428b-9a53-e9ea767458e8', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (17, 4, 15, N'create-addresses-type', N'Addresses type', N'{
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
', '2022-03-10 11:06:20.9400000 +00:00', 2, N'N', '9671ef71-547a-4929-bd03-acf53f963d52', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (18, 4, 20024, N'create-partner-addresses-state', N'Addresses state', N'{
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
></cr-combobox-smart-control>', '2022-03-10 11:06:51.1833333 +00:00', 2, N'N', '622eea33-8599-4044-885e-cf7fc0189074', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (19, 4, 20024, N'create-partner-addresses-country', N'Address country', N'{
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
></cr-combobox-smart-control>', '2022-03-10 11:07:50.6433333 +00:00', 3, N'N', '4a9340ca-d9a5-45a3-9b16-24b146158c6a', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (20, 4, 20024, N'create-partner-addresses-county', N'Addresses county', N'{
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
></cr-combobox-smart-control>', '2022-03-10 11:08:11.4700000 +00:00', 2, N'N', 'ebc45da9-f825-48cf-bde8-5f6ab0f5ecd7', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (21, 4, 20024, N'create-partner-addresses-city', N'Address city', N'{
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
></cr-combobox-smart-control>', '2022-03-10 11:08:35.9500000 +00:00', 2, N'N', '8566f908-a5d7-4c4b-9431-507495a38d92', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (22, 4, 7, N'create-partner-addresses-zip', N'Address zip', N'{
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
></cr-control-edit>', '2022-03-10 11:08:56.1933333 +00:00', 2, N'N', '54bbb895-0d37-41d6-a3db-ce7bba4d0c75', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (23, 4, 20024, N'create-partner-addresses-street', N'Address street', N'{
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
></cr-combobox-smart-control>', '2022-03-10 11:09:19.7433333 +00:00', 2, N'N', '020090ec-8736-4371-9660-2f2399ef235c', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (24, 4, 7, N'create-partner-addresses-block', N'Address block', N'{
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
></cr-control-edit>', '2022-03-10 11:09:43.5266667 +00:00', 2, N'N', '65fcd290-2bfa-478e-88b6-8662e820626b', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (25, 4, 7, N'create-partner-addresses-street-no', N'Address street no', N'{
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
></cr-control-edit>', '2022-03-10 11:10:24.4233333 +00:00', 2, N'N', 'bc90398a-837c-4ff1-9a06-891ee4a990cc', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (26, 4, 7, N'create-partner-addresses-apartment', N'Address apartment', N'{
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
></cr-control-edit>', '2022-03-10 11:10:54.1933333 +00:00', 2, N'N', '585e10b8-6b84-4dd1-884d-0f3a15530dff', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10016, 10005, 14, N'manage-partner-contact-persons-title-header', N'Title header', N'{
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
', '2022-07-15 19:10:18.7362387 +03:00', 1, N'N', '97a65a32-f218-4894-8db6-950d4825fbbc', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10017, 10005, 7, N'manage-partner-contact-person-code', N'Code', N'{
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
></cr-control-edit>', '2022-07-15 19:29:33.2333333 +00:00', 3, N'N', 'b94e23db-a736-42fa-8fe8-4937de293fee', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10018, 10005, 7, N'manage-partner-contact-person-first-name', N'First name', N'{
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
></cr-control-edit>', '2022-07-15 19:30:34.2646260 +03:00', 1, N'N', '5490cf7e-f140-48d8-a25f-249456399d28', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10019, 10005, 7, N'manage-partner-contact-person-last-name', N'Last name', N'{
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
></cr-control-edit>', '2022-07-15 19:31:50.9184547 +03:00', 1, N'N', '61e5bb38-2ef7-4f4f-81ba-7f1dd5a1e1d3', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10020, 10005, 7, N'manage-partner-contact-person-display-name', N'Display name', N'{
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
></cr-control-edit>', '2022-07-15 19:32:59.7773453 +03:00', 1, N'N', '8c699f7b-b419-42e6-9b2e-ee0551f549d4', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10021, 10005, 7, N'manage-partner-contact-person-email', N'Email', N'{
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
></cr-control-edit>', '2022-07-15 19:34:01.1223502 +03:00', 1, N'N', '10aa1384-0026-4e88-80e4-9157abdfdf33', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10022, 10005, 7, N'manage-partner-contact-person-cellural', N'Cellural', N'{
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
></cr-control-edit>', '2022-07-15 19:35:06.7007533 +03:00', 1, N'N', '0ed55427-677e-4111-8ca8-f5f27da516f8', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10023, 10005, 7, N'manage-partner-contact-person-passport', N'Passport', N'{
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
></cr-control-edit>', '2022-07-15 19:36:25.5573944 +03:00', 1, N'N', '60651a5e-8818-45cd-b561-d42c6608064e', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10024, 10005, 7, N'manage-partner-contact-person-fax', N'Fax', N'{
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
></cr-control-edit>', '2022-07-15 19:36:59.6118249 +03:00', 1, N'N', '135e3c75-8d65-4555-81c9-1ef1de7df7c0', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10025, 10005, 7, N'manage-partner-contact-person-phone1', N'Phone 1', N'{
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
></cr-control-edit>', '2022-07-15 19:37:59.8946829 +03:00', 1, N'N', 'fb976142-655d-409c-bcfe-f563d4d75545', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10026, 10005, 7, N'manage-partner-contact-person-phone2', N'Phone 2', N'{
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
></cr-control-edit>', '2022-07-15 19:38:43.4001231 +03:00', 1, N'N', '6aec8a29-a348-436f-92ad-5815299995fb', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10027, 10005, 7, N'manage-partner-contact-person-remark', N'Remark', N'{
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
></cr-control-edit>', '2022-07-15 19:39:37.1687873 +03:00', 1, N'N', '57ce84f4-43dc-45fd-b71c-c72e037b673f', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10028, 10005, 15, N'manage-contact-person-type', N'Type', N'{
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
', '2022-07-15 19:48:12.2668658 +03:00', 1, N'N', '4bc9967a-3596-47aa-929b-ca348570f24e', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10029, 10005, 15, N'manage-contact-person-partner', N'Partner', N'{
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
', '2022-07-15 19:51:11.0843978 +03:00', 1, N'N', '4288b178-c53c-4f4f-af88-94315112e349', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10030, 10005, 15, N'manage-contact-person-creation-store', N'Creation store', N'{
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
', '2022-07-15 19:54:48.2633333 +00:00', 2, N'N', 'cae79ba6-bcda-48f3-a794-d85c5e11a1bb', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10031, 10005, 10017, N'manage-partner-contact-person-birthday', N'Birthday', N'{
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
></cr-control-datepicker>', '2022-07-15 20:00:22.5646831 +03:00', 1, N'N', '7e90bdae-d2cc-4a4a-8b73-5507ba65ba06', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10032, 10005, 10017, N'manage-partner-contact-person-registration-date', N'Registration date', N'{
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
></cr-control-datepicker>', '2022-07-15 20:01:27.7369967 +03:00', 1, N'N', '63cbd499-e76b-439c-a333-cd9cc9726fa1', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10033, 10005, 9, N'manage-partner-contact-person-is-partner-club', N'Is partner club', N'{
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
></cr-checkbox-control>', '2022-07-15 20:04:39.9420038 +03:00', 1, N'N', '50257331-9256-4c54-b0eb-cf6a9af2b4f6', 1, NULL)
INSERT INTO [dbo].[WebComponentViewSubSettings] ([ID], [WebViewSubID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10034, 10005, 10018, N'manage-partner-contact-person-mailing-category', N'Mailing category', N'{
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
></cr-partner-mailing-category-control>', '2022-07-15 20:06:43.8348768 +03:00', 1, N'N', '73f50e0e-75c9-4d7c-b872-517836b93ea0', 1, NULL)
SET IDENTITY_INSERT [dbo].[WebComponentViewSubSettings] OFF

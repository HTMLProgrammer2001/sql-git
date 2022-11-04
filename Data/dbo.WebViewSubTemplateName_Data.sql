INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a52eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0c00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.ADDRESS.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTRY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STATE''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.CITY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.ZIP''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.BLOCK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.APARTMENT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-07-15 18:18:43.7933333 +00:00', 12, N'N', '212d0826-c535-4058-8b24-227da51422b6', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a62eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0c00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.ADDRESS.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTRY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STATE''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.CITY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.ZIP''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.BLOCK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.APARTMENT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-07-15 18:18:43.7933333 +00:00', 12, N'N', '352f4953-8f8f-4251-9d34-672f240a995f', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a92eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0f00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.ADDRESS.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-6''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTRY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STATE''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.CITY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-6''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.ZIP''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-6''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.BLOCK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit></div><div class=''col-md-6''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.APARTMENT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 15:53:37.3300000 +00:00', 15, N'N', 'cb97a6fa-de0d-4dee-88fb-6989b7cf5bbb', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('aa2eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0f00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.ADDRESS.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-6''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTRY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STATE''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.CITY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-6''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.ZIP''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-6''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.BLOCK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit></div><div class=''col-md-6''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.APARTMENT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 15:53:37.7000000 +00:00', 15, N'N', '9c9f8ba1-7f43-4214-b85b-bd8c781218df', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('9f2eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0900aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.GENERAL.MANAGE_MAILING_CATEGORIES''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.PARTNER_MANAGE_MAILING_CATEGORIES'' : null"
        [title]="true ? null : ''ניהול דרכי ''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new undefined">
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
  </div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.3833333 +00:00', 71, N'N', 'ec5bc005-ad69-4c80-b5f0-32b1cd785f12', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a02eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0900aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.GENERAL.MANAGE_MAILING_CATEGORIES''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.PARTNER_MANAGE_MAILING_CATEGORIES'' : null"
        [title]="true ? null : ''Partner mailing category management''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new undefined">
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
  </div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.3833333 +00:00', 71, N'N', '57b73dc2-0ef3-4c61-9ec5-c48ae207317a', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a12eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0a00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.MANAGE_GROUP.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.MANAGE_GROUP.PANEL_TITLE'' : null"
        [title]="true ? null : ''ניהול קבוצת פרטנר''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new undefined">
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
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.3966667 +00:00', 67, N'N', '79d254a1-507c-4d16-947d-db7c437a4945', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a22eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0a00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.MANAGE_GROUP.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.MANAGE_GROUP.PANEL_TITLE'' : null"
        [title]="true ? null : ''Partner group management''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new undefined">
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
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.4866667 +00:00', 67, N'N', 'da3eadfe-26a1-41a6-bc33-8414db9b0210', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a32eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0b00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.ADDRESS.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTRY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STATE''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.CITY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.ZIP''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.BLOCK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.APARTMENT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.4133333 +00:00', 67, N'N', 'a3459ef0-b2ec-4c56-b483-6628dc52292b', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a42eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0b00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.ADDRESS.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTRY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STATE''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.CITY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.ZIP''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.BLOCK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.APARTMENT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.5566667 +00:00', 67, N'N', '2fa9e934-59a0-4e23-9086-998d4fd157bf', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a72eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0e00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_code''"
    [(dataValue)]="self.contactPerson.code"
    [validator]="self.contactPersonValidator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.contactPersonValidator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.contactPersonValidator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.contactPersonValidator"
    [validationField]="''displayName''"
></cr-control-edit></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.CONTACT_PERSON_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_email''"
    [(dataValue)]="self.contactPerson.email"
    [validator]="self.contactPersonValidator"
    [validationField]="''email''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_cellular''"
    [(dataValue)]="self.contactPerson.cellular"
></cr-control-edit></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_birthday_date''"
    [(dataValue)]="self.contactPerson.birthDay"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_passport''"
    [(dataValue)]="self.contactPerson.passport"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_fax''"
    [(dataValue)]="self.contactPerson.fax"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_phone''"
    [(dataValue)]="self.contactPerson.phone1"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_second_phone''"
    [(dataValue)]="self.contactPerson.phone2"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PARTNER_CLUB''"
    [isDisabled]="false"
    [class]=''""''
    [elementName]="''edit:Partner_details.Contact_person_is_partner_club''"
    [(dataValue)]="self.contactPerson.isPartnerClub"
></cr-checkbox-control></div><div class=''col-md-8''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-6''><cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_registration_date''"
    [(dataValue)]="self.contactPerson.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-6''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.CREATION_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-12''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.REMARK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_remark''"
    [(dataValue)]="self.contactPerson.remark"
></cr-control-edit></div><div class=''col-md-0''></div></div></div><div class=''col-md-6''>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.MAILING_CATEGORIES'' : null"
        [title]="true ? null : ''דרכי התקשרות''"
        [customClass]="''cr-mailing-wrapper''"
        [headerClass]="''cr-panel-header-wrapper-light''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.contactPerson.id"
    [selectedMailingCategory]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.4166667 +00:00', 40, N'N', '86ebcfe3-778e-408e-8f1a-47fec857586f', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a82eded3-4251-ed11-8e5d-4ccc6a2bb6d6', '0e00aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_code''"
    [(dataValue)]="self.contactPerson.code"
    [validator]="self.contactPersonValidator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.contactPersonValidator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.contactPersonValidator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.contactPersonValidator"
    [validationField]="''displayName''"
></cr-control-edit></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.CONTACT_PERSON_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_email''"
    [(dataValue)]="self.contactPerson.email"
    [validator]="self.contactPersonValidator"
    [validationField]="''email''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_cellular''"
    [(dataValue)]="self.contactPerson.cellular"
></cr-control-edit></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_birthday_date''"
    [(dataValue)]="self.contactPerson.birthDay"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_passport''"
    [(dataValue)]="self.contactPerson.passport"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_fax''"
    [(dataValue)]="self.contactPerson.fax"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_phone''"
    [(dataValue)]="self.contactPerson.phone1"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_second_phone''"
    [(dataValue)]="self.contactPerson.phone2"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PARTNER_CLUB''"
    [isDisabled]="false"
    [class]=''""''
    [elementName]="''edit:Partner_details.Contact_person_is_partner_club''"
    [(dataValue)]="self.contactPerson.isPartnerClub"
></cr-checkbox-control></div><div class=''col-md-8''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-6''><cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_registration_date''"
    [(dataValue)]="self.contactPerson.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-6''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.CREATION_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-12''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.REMARK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_remark''"
    [(dataValue)]="self.contactPerson.remark"
></cr-control-edit></div><div class=''col-md-0''></div></div></div><div class=''col-md-6''>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.MAILING_CATEGORIES'' : null"
        [title]="true ? null : ''Mailing categories''"
        [customClass]="''cr-mailing-wrapper''"
        [headerClass]="''cr-panel-header-wrapper-light''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.contactPerson.id"
    [selectedMailingCategory]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.6766667 +00:00', 40, N'N', '62cc346c-6840-4b75-844c-385e83780661', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('02bc7c81-5c51-ed11-8e5d-4ccc6a2bb6d6', '1000aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container></ng-container>', '2022-11-04 19:30:31.4233333 +00:00', 20, N'N', 'bf4f55f2-8797-40d5-8c03-1737e769821d', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('03bc7c81-5c51-ed11-8e5d-4ccc6a2bb6d6', '1000aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container></ng-container>', '2022-11-04 19:30:31.7333333 +00:00', 20, N'N', 'afac83e1-f905-4695-bff7-039c6f72f963', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('e3f251ee-575c-ed11-8e5e-4ccc6a2bb6d6', '7bcdf1fd-535c-ed11-8e5e-4ccc6a2bb6d6', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.ADDRESS.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTRY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STATE''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.CITY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.ZIP''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.BLOCK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.APARTMENT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.4366667 +00:00', 12, N'N', '07c3c677-4819-44dd-93d9-bc6190a156be', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('e4f251ee-575c-ed11-8e5e-4ccc6a2bb6d6', '7bcdf1fd-535c-ed11-8e5e-4ccc6a2bb6d6', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.ADDRESS.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_state''"
    [dataCacheName]="''ItemStateComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.state.id"
    [(currentItemValue)]="self.address.state"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStateListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTRY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [dataCacheName]="''ItemCountryComboboxCache''"
    [useCache]="false"
    [(value)]="self.address.country.id"
    [(currentItemValue)]="self.address.country"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountryListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STATE''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_country''"
    [useCache]="false"
    [dataCacheName]="''ItemCountyComboboxCache''"
    [(value)]="self.address.county.id"
    [(currentItemValue)]="self.address.county"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCountyListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.COUNTY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_city''"
    [useCache]="false"
    [dataCacheName]="''ItemCityComboboxCache''"
    [(value)]="self.address.city.id"
    [(currentItemValue)]="self.address.city"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressCityListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.CITY''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.ZIP''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_zip''"
    [(dataValue)]="self.address.zip"
></cr-control-edit></div><div class=''col-md-2''><cr-combobox-smart-control
    [elementName]="''smart-combobox:Partner_details.Address_street''"
    [useCache]="false"
    [dataCacheName]="''ItemStreetComboboxCache''"
    [(value)]="self.address.street.id"
    [(currentItemValue)]="self.address.street"
    [textField]="''name''"
    [valueField]="''id''"
    [getListItemsFunction]="self.loadAddressStreetListFunction"
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET''"
    [dataLabel]="''''"
    [valueField]="''id''"
    [class]=''""''
    [useCache]="false"
></cr-combobox-smart-control></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.BLOCK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_block''"
    [(dataValue)]="self.address.block"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.STREET_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_street_number''"
    [(dataValue)]="self.address.streetNo"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.ADDRESS.APARTMENT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Address_appartment''"
    [(dataValue)]="self.address.apartment"
    [maxlength]="20"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.7933333 +00:00', 12, N'N', '1208f5a7-184e-467d-ace6-1c3bc781d862', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('636da689-625c-ed11-8e5e-4ccc6a2bb6d6', 'bbd312cc-5b5c-ed11-8e5e-4ccc6a2bb6d6', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_code''"
    [(dataValue)]="self.contactPerson.code"
    [validator]="self.contactPersonValidator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.contactPersonValidator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.contactPersonValidator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.contactPersonValidator"
    [validationField]="''displayName''"
></cr-control-edit></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.CONTACT_PERSON_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_email''"
    [(dataValue)]="self.contactPerson.email"
    [validator]="self.contactPersonValidator"
    [validationField]="''email''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_cellular''"
    [(dataValue)]="self.contactPerson.cellular"
></cr-control-edit></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_birthday_date''"
    [(dataValue)]="self.contactPerson.birthDay"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_passport''"
    [(dataValue)]="self.contactPerson.passport"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_fax''"
    [(dataValue)]="self.contactPerson.fax"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_phone''"
    [(dataValue)]="self.contactPerson.phone1"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_second_phone''"
    [(dataValue)]="self.contactPerson.phone2"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PARTNER_CLUB''"
    [isDisabled]="false"
    [class]=''""''
    [elementName]="''edit:Partner_details.Contact_person_is_partner_club''"
    [(dataValue)]="self.contactPerson.isPartnerClub"
></cr-checkbox-control></div><div class=''col-md-8''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-6''><cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_registration_date''"
    [(dataValue)]="self.contactPerson.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-6''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.CREATION_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-12''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.REMARK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_remark''"
    [(dataValue)]="self.contactPerson.remark"
></cr-control-edit></div><div class=''col-md-0''></div></div></div><div class=''col-md-6''>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.MAILING_CATEGORIES'' : null"
        [title]="true ? null : ''דרכי התקשרות''"
        [customClass]="''cr-mailing-wrapper''"
        [headerClass]="''cr-panel-header-wrapper-light''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.contactPerson.id"
    [selectedMailingCategory]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.4500000 +00:00', 4, N'N', '147dfd7b-be4c-4d34-91ba-a7282b8eea33', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('646da689-625c-ed11-8e5e-4ccc6a2bb6d6', 'bbd312cc-5b5c-ed11-8e5e-4ccc6a2bb6d6', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.DETAILS_TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_code''"
    [(dataValue)]="self.contactPerson.code"
    [validator]="self.contactPersonValidator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.contactPersonValidator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.contactPersonValidator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.contactPersonValidator"
    [validationField]="''displayName''"
></cr-control-edit></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.CONTACT_PERSON_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_email''"
    [(dataValue)]="self.contactPerson.email"
    [validator]="self.contactPersonValidator"
    [validationField]="''email''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_cellular''"
    [(dataValue)]="self.contactPerson.cellular"
></cr-control-edit></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_birthday_date''"
    [(dataValue)]="self.contactPerson.birthDay"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_passport''"
    [(dataValue)]="self.contactPerson.passport"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_fax''"
    [(dataValue)]="self.contactPerson.fax"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_phone''"
    [(dataValue)]="self.contactPerson.phone1"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_second_phone''"
    [(dataValue)]="self.contactPerson.phone2"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.PARTNER_CLUB''"
    [isDisabled]="false"
    [class]=''""''
    [elementName]="''edit:Partner_details.Contact_person_is_partner_club''"
    [(dataValue)]="self.contactPerson.isPartnerClub"
></cr-checkbox-control></div><div class=''col-md-8''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-6''><cr-control-datepicker
    [elementName]="''date:Partner_details.Contact_person_registration_date''"
    [(dataValue)]="self.contactPerson.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-6''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.CONTACT_PERSON.CREATION_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-12''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.REMARK''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_remark''"
    [(dataValue)]="self.contactPerson.remark"
></cr-control-edit></div><div class=''col-md-0''></div></div></div><div class=''col-md-6''>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.MAILING_CATEGORIES'' : null"
        [title]="true ? null : ''Mailing categories''"
        [customClass]="''cr-mailing-wrapper''"
        [headerClass]="''cr-panel-header-wrapper-light''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.contactPerson.id"
    [selectedMailingCategory]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-04 19:30:31.8933333 +00:00', 4, N'N', '0c0b5aba-40a7-4de3-ae54-d92f027079fe', 1, NULL)

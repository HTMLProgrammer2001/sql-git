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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.0600000 +00:00', 10, N'N', '43495f86-2b8a-439e-a83d-ea901accd162', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.5600000 +00:00', 10, N'N', '954cfc9f-3cd5-4c22-83ed-5ca4a4bf0f73', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.0966667 +00:00', 2, N'N', '27c503ac-4920-473b-8cc8-21fb64fda3e3', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.6300000 +00:00', 2, N'N', 'cca3d1b1-ea07-4bea-b739-aad82389f30e', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:11.9966667 +00:00', 69, N'N', '3d65c861-9bf4-42ea-8efe-0d53e69bb07d', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:11.9966667 +00:00', 69, N'N', '90215fa8-7758-4af1-a364-7cda47156291', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.0200000 +00:00', 65, N'N', '16010936-a76a-4638-829b-dbf8cfe4323b', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.1500000 +00:00', 65, N'N', 'a202a22c-a007-4257-935e-5a86b4c333d2', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.0300000 +00:00', 65, N'N', '4576fc33-399a-4c96-89f0-d8dc88e82c39', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.3033333 +00:00', 65, N'N', '1174c885-dab9-45d4-b591-e2b4cc999282', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.0400000 +00:00', 38, N'N', '820d061e-ccc0-45e9-942c-6abec4deac5b', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-04 19:03:12.3833333 +00:00', 38, N'N', '1451ff94-e05a-4ad5-84bd-8fa580328895', 1, NULL)
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
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('02bc7c81-5c51-ed11-8e5d-4ccc6a2bb6d6', '1000aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container></ng-container>', '2022-11-04 19:03:12.0566667 +00:00', 18, N'N', 'a63fefd1-0e30-424a-b6b5-889c9225456c', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('03bc7c81-5c51-ed11-8e5d-4ccc6a2bb6d6', '1000aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container></ng-container>', '2022-11-04 19:03:12.4500000 +00:00', 18, N'N', '89300412-090f-4d5a-b3e2-5eb78d3a3f9f', 1, NULL)

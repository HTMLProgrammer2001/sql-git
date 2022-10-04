SET IDENTITY_INSERT [dbo].[WebViewTemplateName] ON
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (20028, 10043, 1, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''PARTNER.GRID.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''COMMON.PANEL.FILTERS'' : null"
        [title]="true ? null : ''חתך הגדרות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''[]''
        (submit)=''true && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.partnerCode"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.lastName"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [(value)]="self.partnerListFilter.partnerTypeId"
    [contextMenuOperations]="[''copyToClipboard'']"
    [dataCacheName]="''PartnerTypeDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_type''"
    [getListItemsFunction]="self.partnerTypeListFn"
    [labelTranslateKey]="''''"
    [label]="''סוג פרטנר''"
    [class]=''""''
    [permissionSettings]="{
        isAccessEdit: self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_GET)
    }"
    [textField]="''displayName''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [valueField]="''id''"
    [isDropdownListOpenWhenKeyboardIsPrinted]="true"
    [isDropdownListOverrideEnterKeyBehaviour]="true"
    (onEnterKey)="self.changeFilter()"
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
    (navigateToEvent)="self.navigateTo($event)"
    [(value)]="self.partnerListFilter.groupId"
    [contextMenuOperations]="[''copyToClipboard'', ''navigateTo'']"
    [dataCacheName]="''PartnerGroupDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_group''"
    [getListItemsFunction]="self.partnerGroupListFn"
    [isCleanListWhenAdditionalParameterChanged]="true"
    [labelTranslateKey]="''PARTNER.FILTER.PARTNER_GROUP''"
    [label]="''''"
    [class]=''""''
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
</div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.passport"
></cr-control-edit></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.phone1"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.phone2"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit></div><div class=''col-md-4''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''COMMON.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.partnerListFilter.showDeleted"
></cr-checkbox-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="self.authService.getEndpointAccessGranted(self.EndpointName.partner_GET)"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.GRID.TITLE'' : null"
        [title]="true ? null : ''רשימת כרטיסים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]="undefined"
      ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-09-29 13:20:04.1166667 +00:00', 148, N'N', 'eddab8b3-454d-4ba3-ac21-a486e910325c', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (20029, 10043, 2, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''PARTNER.GRID.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''COMMON.PANEL.FILTERS'' : null"
        [title]="true ? null : ''Selection criteria''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''[]''
        (submit)=''true && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.partnerCode"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.lastName"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [(value)]="self.partnerListFilter.partnerTypeId"
    [contextMenuOperations]="[''copyToClipboard'']"
    [dataCacheName]="''PartnerTypeDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_type''"
    [getListItemsFunction]="self.partnerTypeListFn"
    [labelTranslateKey]="''''"
    [label]="''Partner type''"
    [class]=''""''
    [permissionSettings]="{
        isAccessEdit: self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_GET)
    }"
    [textField]="''displayName''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [valueField]="''id''"
    [isDropdownListOpenWhenKeyboardIsPrinted]="true"
    [isDropdownListOverrideEnterKeyBehaviour]="true"
    (onEnterKey)="self.changeFilter()"
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
    (navigateToEvent)="self.navigateTo($event)"
    [(value)]="self.partnerListFilter.groupId"
    [contextMenuOperations]="[''copyToClipboard'', ''navigateTo'']"
    [dataCacheName]="''PartnerGroupDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_group''"
    [getListItemsFunction]="self.partnerGroupListFn"
    [isCleanListWhenAdditionalParameterChanged]="true"
    [labelTranslateKey]="''PARTNER.FILTER.PARTNER_GROUP''"
    [label]="''''"
    [class]=''""''
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
</div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.passport"
></cr-control-edit></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.phone1"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.phone2"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit></div><div class=''col-md-4''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''COMMON.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.partnerListFilter.showDeleted"
></cr-checkbox-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="self.authService.getEndpointAccessGranted(self.EndpointName.partner_GET)"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.GRID.TITLE'' : null"
        [title]="true ? null : ''Partner List''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]="undefined"
      ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-09-29 13:20:04.1166667 +00:00', 148, N'N', '56c14ae9-8faf-4dc2-b36c-31fcd3b9acfc', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (30032, 20045, 1, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.partnerDetails">
            <cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.validator"
    [validationField]="''partnerCode''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="!self.isNew || false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.validator"
    [translateKeys]="''PARTNER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''PARTNER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.validator"
    [validationField]="''govId''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.GOVERNMENT_ID''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.HEADER.BALANCE''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.TITLE'' : null"
        [title]="true ? null : ''כללי''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["bDay","eMail","passport","govId","validFrom","validTo","frozenFrom","frozenTo"]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [label]="''''"
    [class]=''""''>
</cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.validator"
    [validationField]="''bDay''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CREATION_STORE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.PARENT_PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.validator"
    [validationField]="''eMail''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.TOURIST''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.validator"
    [validationField]="''passport''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.VALID''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || false"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || false"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isFrozen || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div></div><div class=''col-md-6''>
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
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''paymentTerms''] ?? false"
        (expandedChange)="self.panelStateChange(''paymentTerms'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.PAYMENT_TERMS.TITLE'' : null"
        [title]="true ? null : ''תנאי תשלום''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''paymentTerms''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE''"
    [label]="''''"
    [class]=''""''
                          ></cr-dropdown-smart-control></div><div class=''col-md-2''>
        <ng-template [ngIf]="self.partnerDetails?.budgetTypeId === 1">
            <cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>

        </ng-template></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''statistic''] ?? false"
        (expandedChange)="self.panelStateChange(''statistic'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.STATISTIC'' : null"
        [title]="true ? null : ''נתונים סטטיסטיים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''statistic''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.SALES_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.RETURNS_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''groups''] ?? false"
        (expandedChange)="self.panelStateChange(''groups'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.GROUPS'' : null"
        [title]="true ? null : ''קבוצות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''groups''"
        [containFields]=''["partnerGroups"]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-group-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''""''
    [editIcon]="''icon-edit''"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''addresses''] ?? false"
        (expandedChange)="self.panelStateChange(''addresses'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.ADDRESSES'' : null"
        [title]="true ? null : ''כתובות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''addresses''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''contactPersons''] ?? false"
        (expandedChange)="self.panelStateChange(''contactPersons'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CONTACT_PERSONS'' : null"
        [title]="true ? null : ''Contact persons he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''contactPersons''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-contact-persons-list
    (openAddressPopup)="self.onCreatePartnerContactPersons()"
    (editAddressPopup)="self.onEditPartnerContactPersons($event)"
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
    [class]=''""''
></cr-partner-contact-persons-list>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="!self.isNew">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''cards''] ?? false"
        (expandedChange)="self.panelStateChange(''cards'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CARDS'' : null"
        [title]="true ? null : ''מספרי כרטיס נוספים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cards''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-cards-list
    [editable]="true"
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
    [isDeletedPartner]="self.partnerDetails.isDeleted"
></cr-partner-cards-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''points''] ?? false"
        (expandedChange)="self.panelStateChange(''points'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT'' : null"
        [title]="true ? null : ''נקודות נאמנות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''points''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-point 
    [class]=''""''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''pointHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''pointHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT_HISTORY'' : null"
        [title]="true ? null : ''היסטוריית נקודות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''pointHistory''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-point-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''transactionHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''transactionHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.HISTORY'' : null"
        [title]="true ? null : ''היסטוריה''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''transactionHistory''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''discountBudget''] ?? false"
        (expandedChange)="self.panelStateChange(''discountBudget'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.DISCOUNT_BUDGET'' : null"
        [title]="true ? null : ''תקציב הנחות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''discountBudget''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-discount-budget 
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="self.isUdfForPartnerDetailsAvailable">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''udf''] ?? false"
        (expandedChange)="self.panelStateChange(''udf'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''udf''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-udf-list
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
</ng-template>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''remark''] ?? false"
        (expandedChange)="self.panelStateChange(''remark'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.REMARK'' : null"
        [title]="true ? null : ''הערה''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remark''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-12''><cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="2"
    [maxlength]="50000"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-mailing-category''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''partner''"
    [subTemplateId]="1"
    [entityId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

<cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''contact-person''"
    [subTemplateId]="1"
    [entityId]="self.partnerDetailsContactPerson.id"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-groups''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-groups'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-group-manage-dynamic
    [subTemplateId]="2"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="3"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>

<cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="3"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-list''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-list'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="10005"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>

<cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="10005"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-09-01 17:55:29.0600000 +00:00', 176, N'N', 'a5f1989f-8100-4864-9051-90005eaa966d', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (30033, 20045, 2, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.partnerDetails">
            <cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.validator"
    [validationField]="''partnerCode''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="!self.isNew || false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.validator"
    [translateKeys]="''PARTNER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''PARTNER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.validator"
    [validationField]="''govId''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.GOVERNMENT_ID''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.HEADER.BALANCE''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.TITLE'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["bDay","eMail","passport","govId","validFrom","validTo","frozenFrom","frozenTo"]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [label]="''''"
    [class]=''""''>
</cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.validator"
    [validationField]="''bDay''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CREATION_STORE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.PARENT_PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.validator"
    [validationField]="''eMail''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.TOURIST''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.validator"
    [validationField]="''passport''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.VALID''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || false"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || false"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isFrozen || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div></div><div class=''col-md-6''>
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
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''paymentTerms''] ?? false"
        (expandedChange)="self.panelStateChange(''paymentTerms'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.PAYMENT_TERMS.TITLE'' : null"
        [title]="true ? null : ''Payment terms''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''paymentTerms''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE''"
    [label]="''''"
    [class]=''""''
                          ></cr-dropdown-smart-control></div><div class=''col-md-2''>
        <ng-template [ngIf]="self.partnerDetails?.budgetTypeId === 1">
            <cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>

        </ng-template></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''statistic''] ?? false"
        (expandedChange)="self.panelStateChange(''statistic'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.STATISTIC'' : null"
        [title]="true ? null : ''Statistic''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''statistic''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.SALES_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.RETURNS_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''groups''] ?? false"
        (expandedChange)="self.panelStateChange(''groups'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.GROUPS'' : null"
        [title]="true ? null : ''Groups''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''groups''"
        [containFields]=''["partnerGroups"]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-group-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''""''
    [editIcon]="''icon-edit''"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''addresses''] ?? false"
        (expandedChange)="self.panelStateChange(''addresses'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.ADDRESSES'' : null"
        [title]="true ? null : ''Addresses''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''addresses''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''contactPersons''] ?? false"
        (expandedChange)="self.panelStateChange(''contactPersons'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CONTACT_PERSONS'' : null"
        [title]="true ? null : ''Contact persons''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''contactPersons''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-contact-persons-list
    (openAddressPopup)="self.onCreatePartnerContactPersons()"
    (editAddressPopup)="self.onEditPartnerContactPersons($event)"
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
    [class]=''""''
></cr-partner-contact-persons-list>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="!self.isNew">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''cards''] ?? false"
        (expandedChange)="self.panelStateChange(''cards'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CARDS'' : null"
        [title]="true ? null : ''Additional card numbers''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cards''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-cards-list
    [editable]="true"
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
    [isDeletedPartner]="self.partnerDetails.isDeleted"
></cr-partner-cards-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''points''] ?? false"
        (expandedChange)="self.panelStateChange(''points'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT'' : null"
        [title]="true ? null : ''Loyalty points''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''points''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-point 
    [class]=''""''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''pointHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''pointHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT_HISTORY'' : null"
        [title]="true ? null : ''Point history''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''pointHistory''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-point-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''transactionHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''transactionHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.HISTORY'' : null"
        [title]="true ? null : ''History''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''transactionHistory''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''discountBudget''] ?? false"
        (expandedChange)="self.panelStateChange(''discountBudget'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.DISCOUNT_BUDGET'' : null"
        [title]="true ? null : ''Discount budget''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''discountBudget''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-discount-budget 
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="self.isUdfForPartnerDetailsAvailable">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''udf''] ?? false"
        (expandedChange)="self.panelStateChange(''udf'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''udf''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-udf-list
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
</ng-template>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''remark''] ?? false"
        (expandedChange)="self.panelStateChange(''remark'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.REMARK'' : null"
        [title]="true ? null : ''Remark''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remark''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-12''><cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="2"
    [maxlength]="50000"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-mailing-category''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''partner''"
    [subTemplateId]="1"
    [entityId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

<cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''contact-person''"
    [subTemplateId]="1"
    [entityId]="self.partnerDetailsContactPerson.id"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-groups''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-groups'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-group-manage-dynamic
    [subTemplateId]="2"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="3"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>

<cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="3"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-list''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-list'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="10005"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>

<cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="10005"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-09-01 17:55:29.0600000 +00:00', 176, N'N', '43646be1-f034-4a90-a984-f7a564eb62ea', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (40032, 30045, 1, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.partnerDetails">
            <cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header><form action="#">
        <div class="cr-outer-wrapper cr-alternate-shadow ">
            <div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.partnerValidator"
    [validationField]="''partnerCode''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="!self.isNew || false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.partnerValidator"
    [translateKeys]="''PARTNER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''PARTNER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Partner_type''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.partnerSrv.partnerType.getById.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.partnerSrv.partnerType.getList.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [validator]="self.partnerValidator"
    [validationField]="''partnerTypeId''"
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.partnerValidator"
    [validationField]="''govId''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.GOVERNMENT_ID''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.HEADER.BALANCE''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div>
        </div>
      </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''general'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''general'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.DETAILS.GENERAL.TITLE'' | translate}}
                </span>

                <span *ngIf="!true">
                  כללי
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <div class="row"><div class=''col-md-2''><cr-control-dropdown
    [elementName]="''dropdown:Partner_details.Gender''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.gender"
    [dataDisplayField]="''name''"
    [dataValueField]="''gender''"
    [dataSource]="self.genderTypes$ | async"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.partnerValidator"
    [validationField]="''bDay''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CREATION_STORE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Linked_store''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.locationSrv.locationUi.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.locationSrv.locationUi.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Parent_partner''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.partnerSrv.partner.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.partnerSrv.partner.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted : self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.PARENT_PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.partnerValidator"
    [validationField]="''eMail''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.TOURIST''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.partnerValidator"
    [validationField]="''passport''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.VALID''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.partnerValidator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || false"
    [validator]="self.partnerValidator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || false"
    [validator]="self.partnerValidator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.partnerValidator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isFrozen || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div></div><div class=''col-md-6''><form action="#">
      <div class="cr-outer-wrapper cr-mailing-wrapper">
        
      <ng-container>
            <div class="cr-panel-header-wrapper cr-panel-header-wrapper-light">
                <p *ngIf="true">{{ ''PARTNER.DETAILS.GENERAL.MAILING_CATEGORIES'' | translate }}</p>
                <p *ngIf="!true">דרכי התקשרות</p>
            </div>

            <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ?
        self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
        self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [editable]="true"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-container>
    
      </div>
    </form></div></div>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''paymentTerms'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''paymentTerms'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.DETAILS.PAYMENT_TERMS.TITLE'' | translate}}
                </span>

                <span *ngIf="!true">
                  תנאי תשלום
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_list''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.itemSrv.priceList.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.itemSrv.priceList.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_number''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.itemSrv.priceNumber.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.itemSrv.priceNumber.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-dropdown
    [elementName]="''dropdown:Partner_details.Budget_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.budgetTypeId ? self.partnerDetails.budgetTypeId : null"
    [dataDisplayField]="''label''"
    [dataValueField]="''value''"
    [dataSource]="self.budgetTypes$ | async"
    (dataValueChange)="self.onBudgetTypeChanged($event)"
    [isDisabled]="false"
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''><cr-control-dropdown
    *ngIf="partnerDetails?.budgetTypeId === 1"
    [elementName]="''dropdown:Partner_details.Budget_start_month''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.budgetStartMonth"
    [dataDisplayField]="''label''"
    [dataValueField]="''value''"
    [dataSource]="self.months$ | async"
    [isDisabled]="false"
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''statistic'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''statistic'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.STATISTIC'' | translate}}
                </span>

                <span *ngIf="!true">
                  נתונים סטטיסטיים
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.SALES_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.RETURNS_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div></div>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''groups'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''groups'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.GROUPS'' | translate}}
                </span>

                <span *ngIf="!true">
                  קבוצות
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-group-control
    [editable]="true && (self.isNew ?
        self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
        self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''""''
    [editIcon]="''icon-edit''"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''addresses'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''addresses'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.ADDRESSES'' | translate}}
                </span>

                <span *ngIf="!true">
                  כתובות
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form>
        <ng-template [ngIf]="!self.isNew">
            <form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''cards'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''cards'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.CARDS'' | translate}}
                </span>

                <span *ngIf="!true">
                  מספרי כרטיס נוספים
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''points'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''points'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.POINT'' | translate}}
                </span>

                <span *ngIf="!true">
                  נקודות נאמנות
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-point 
    [class]=''""''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''pointHistory'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''pointHistory'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.POINT_HISTORY'' | translate}}
                </span>

                <span *ngIf="!true">
                  היסטוריית נקודות
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-point-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''transactionHistory'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''transactionHistory'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.HISTORY'' | translate}}
                </span>

                <span *ngIf="!true">
                  היסטוריה
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form>
        </ng-template><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''discountBudget'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''discountBudget'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.DISCOUNT_BUDGET'' | translate}}
                </span>

                <span *ngIf="!true">
                  תקציב הנחות
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-discount-budget 
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''remark'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''remark'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.REMARK'' | translate}}
                </span>

                <span *ngIf="!true">
                  הערה
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <div class="row"><div class=''col-md-12''><cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="2"
    [maxlength]="50000"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-mailing-category''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="1"
    [partnerId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew">
</cr-partner-mailing-category-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-group''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-group'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-group-manage-dynamic
    [subTemplateId]="2"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="3"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="4"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-03-17 20:50:44.3476085 +02:00', 1, N'N', '16eceebb-5222-42ad-96c6-0f9e8767f1e9', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (40033, 30045, 2, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.partnerDetails">
            <cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header><form action="#">
        <div class="cr-outer-wrapper cr-alternate-shadow ">
            <div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.partnerValidator"
    [validationField]="''partnerCode''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="!self.isNew || false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.partnerValidator"
    [translateKeys]="''PARTNER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''PARTNER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Partner_type''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.partnerSrv.partnerType.getById.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.partnerSrv.partnerType.getList.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [validator]="self.partnerValidator"
    [validationField]="''partnerTypeId''"
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.partnerValidator"
    [validationField]="''govId''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.GOVERNMENT_ID''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.HEADER.BALANCE''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div>
        </div>
      </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''general'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''general'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.DETAILS.GENERAL.TITLE'' | translate}}
                </span>

                <span *ngIf="!true">
                  General
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <div class="row"><div class=''col-md-2''><cr-control-dropdown
    [elementName]="''dropdown:Partner_details.Gender''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.gender"
    [dataDisplayField]="''name''"
    [dataValueField]="''gender''"
    [dataSource]="self.genderTypes$ | async"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.partnerValidator"
    [validationField]="''bDay''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CREATION_STORE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Linked_store''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.locationSrv.locationUi.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.locationSrv.locationUi.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Parent_partner''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.partnerSrv.partner.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.partnerSrv.partner.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted : self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.PARENT_PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.partnerValidator"
    [validationField]="''eMail''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.TOURIST''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.partnerValidator"
    [validationField]="''passport''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.VALID''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.partnerValidator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || false"
    [validator]="self.partnerValidator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || false"
    [validator]="self.partnerValidator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.partnerValidator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isFrozen || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div></div><div class=''col-md-6''><form action="#">
      <div class="cr-outer-wrapper cr-mailing-wrapper">
        
      <ng-container>
            <div class="cr-panel-header-wrapper cr-panel-header-wrapper-light">
                <p *ngIf="true">{{ ''PARTNER.DETAILS.GENERAL.MAILING_CATEGORIES'' | translate }}</p>
                <p *ngIf="!true">Mailing categories</p>
            </div>

            <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ?
        self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
        self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [editable]="true"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-container>
    
      </div>
    </form></div></div>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''paymentTerms'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''paymentTerms'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.DETAILS.PAYMENT_TERMS.TITLE'' | translate}}
                </span>

                <span *ngIf="!true">
                  Payment terms
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_list''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.itemSrv.priceList.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.itemSrv.priceList.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_number''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.itemSrv.priceNumber.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.itemSrv.priceNumber.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-dropdown
    [elementName]="''dropdown:Partner_details.Budget_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.budgetTypeId ? self.partnerDetails.budgetTypeId : null"
    [dataDisplayField]="''label''"
    [dataValueField]="''value''"
    [dataSource]="self.budgetTypes$ | async"
    (dataValueChange)="self.onBudgetTypeChanged($event)"
    [isDisabled]="false"
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''><cr-control-dropdown
    *ngIf="partnerDetails?.budgetTypeId === 1"
    [elementName]="''dropdown:Partner_details.Budget_start_month''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.budgetStartMonth"
    [dataDisplayField]="''label''"
    [dataValueField]="''value''"
    [dataSource]="self.months$ | async"
    [isDisabled]="false"
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''statistic'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''statistic'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.STATISTIC'' | translate}}
                </span>

                <span *ngIf="!true">
                  Statistic
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.SALES_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.RETURNS_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div></div>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''groups'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''groups'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.GROUPS'' | translate}}
                </span>

                <span *ngIf="!true">
                  Groups
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-group-control
    [editable]="true && (self.isNew ?
        self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
        self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''""''
    [editIcon]="''icon-edit''"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''addresses'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''addresses'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.ADDRESSES'' | translate}}
                </span>

                <span *ngIf="!true">
                  Addresses
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form>
        <ng-template [ngIf]="!self.isNew">
            <form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''cards'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''cards'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.CARDS'' | translate}}
                </span>

                <span *ngIf="!true">
                  Additional card numbers
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''points'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''points'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.POINT'' | translate}}
                </span>

                <span *ngIf="!true">
                  Loyalty points
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-point 
    [class]=''""''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''pointHistory'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''pointHistory'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.POINT_HISTORY'' | translate}}
                </span>

                <span *ngIf="!true">
                  Point history
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-point-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''transactionHistory'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''transactionHistory'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.HISTORY'' | translate}}
                </span>

                <span *ngIf="!true">
                  History
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form>
        </ng-template><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''discountBudget'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''discountBudget'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.DISCOUNT_BUDGET'' | translate}}
                </span>

                <span *ngIf="!true">
                  Discount budget
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <cr-partner-discount-budget 
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form><form action="#">
      <div class="cr-outer-wrapper ">
        
        <kendo-panelbar (stateChange)="self.panelStateChange(''remark'', $event)">
         <kendo-panelbar-item title="" [expanded]="self.panelsViewState[''remark'']?? false">
            <ng-template kendoPanelBarItemTitle>
              <div class="">
                <span *ngIf="true">
                  {{ ''PARTNER.PANEL.REMARK'' | translate}}
                </span>

                <span *ngIf="!true">
                  Remark
                </span>
              </div>
            </ng-template>
            <ng-template kendoPanelBarContent>
                <div class="row"><div class=''col-md-12''><cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="2"
    [maxlength]="50000"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
            </ng-template>
            </kendo-panelbar-item>
          </kendo-panelbar>
      </div>
    </form>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-mailing-category''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="1"
    [partnerId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew">
</cr-partner-mailing-category-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-group''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-group'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-group-manage-dynamic
    [subTemplateId]="2"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="3"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="4"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-03-17 20:50:44.3476085 +02:00', 1, N'N', '27f683c6-c9ea-4173-a3f4-d38c5cbe2b4c', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (40034, 30046, 1, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.partnerDetails">
            <cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.validator"
    [validationField]="''partnerCode''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="!self.isNew || false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.validator"
    [translateKeys]="''PARTNER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''PARTNER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Partner_type''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.partnerSrv.partnerType.getById.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.partnerSrv.partnerType.getList.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.validator"
    [validationField]="''govId''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.GOVERNMENT_ID''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.HEADER.BALANCE''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.TITLE'' : null"
        [title]="true ? null : ''כללי''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["bDay","eMail","passport","govId","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-dropdown
    [elementName]="''dropdown:Partner_details.Gender''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.gender"
    [dataDisplayField]="''name''"
    [dataValueField]="''gender''"
    [dataSource]="self.genderTypes$ | async"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.validator"
    [validationField]="''bDay''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CREATION_STORE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Linked_store''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.locationSrv.locationUi.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.locationSrv.locationUi.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Parent_partner''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.partnerSrv.partner.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.partnerSrv.partner.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted : self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.PARENT_PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.validator"
    [validationField]="''eMail''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.TOURIST''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.validator"
    [validationField]="''passport''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.VALID''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || false"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || false"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isFrozen || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div></div><div class=''col-md-6''>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState[''undefined''] ?? true"
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
        self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
        self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [editable]="true"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''paymentTerms''] ?? false"
        (expandedChange)="self.panelStateChange(''paymentTerms'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.PAYMENT_TERMS.TITLE'' : null"
        [title]="true ? null : ''תנאי תשלום''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''paymentTerms''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_list''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.itemSrv.priceList.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.itemSrv.priceList.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_number''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.itemSrv.priceNumber.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.itemSrv.priceNumber.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-dropdown
    [elementName]="''dropdown:Partner_details.Budget_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.budgetTypeId ? self.partnerDetails.budgetTypeId : null"
    [dataDisplayField]="''label''"
    [dataValueField]="''value''"
    [dataSource]="self.budgetTypes$ | async"
    (dataValueChange)="self.onBudgetTypeChanged($event)"
    [isDisabled]="false"
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''><cr-control-dropdown
    *ngIf="partnerDetails?.budgetTypeId === 1"
    [elementName]="''dropdown:Partner_details.Budget_start_month''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.budgetStartMonth"
    [dataDisplayField]="''label''"
    [dataValueField]="''value''"
    [dataSource]="self.months$ | async"
    [isDisabled]="false"
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''statistic''] ?? false"
        (expandedChange)="self.panelStateChange(''statistic'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.STATISTIC'' : null"
        [title]="true ? null : ''נתונים סטטיסטיים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''statistic''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.SALES_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.RETURNS_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''groups''] ?? false"
        (expandedChange)="self.panelStateChange(''groups'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.GROUPS'' : null"
        [title]="true ? null : ''קבוצות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''groups''"
        [containFields]=''["partnerGroups"]''
      >
        <ng-template crPanelContent>
          <cr-partner-group-control
    [editable]="true && (self.isNew ?
        self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
        self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''""''
    [editIcon]="''icon-edit''"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''addresses''] ?? false"
        (expandedChange)="self.panelStateChange(''addresses'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.ADDRESSES'' : null"
        [title]="true ? null : ''כתובות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''addresses''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="!self.isNew">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''cards''] ?? false"
        (expandedChange)="self.panelStateChange(''cards'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CARDS'' : null"
        [title]="true ? null : ''מספרי כרטיס נוספים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cards''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''points''] ?? false"
        (expandedChange)="self.panelStateChange(''points'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT'' : null"
        [title]="true ? null : ''נקודות נאמנות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''points''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-point 
    [class]=''""''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''pointHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''pointHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT_HISTORY'' : null"
        [title]="true ? null : ''היסטוריית נקודות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''pointHistory''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-point-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''transactionHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''transactionHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.HISTORY'' : null"
        [title]="true ? null : ''היסטוריה''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''transactionHistory''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''discountBudget''] ?? false"
        (expandedChange)="self.panelStateChange(''discountBudget'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.DISCOUNT_BUDGET'' : null"
        [title]="true ? null : ''תקציב הנחות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''discountBudget''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-discount-budget 
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''remark''] ?? false"
        (expandedChange)="self.panelStateChange(''remark'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.REMARK'' : null"
        [title]="true ? null : ''הערה''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remark''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-12''><cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="2"
    [maxlength]="50000"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-mailing-category''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="1"
    [partnerId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew">
</cr-partner-mailing-category-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-group''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-group'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-group-manage-dynamic
    [subTemplateId]="2"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="3"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="4"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-03-22 23:53:16.2399824 +02:00', 1, N'N', '35f0cd8a-0478-4b74-ab23-6a8c3d533a0e', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (40035, 30046, 2, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.partnerDetails">
            <cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.validator"
    [validationField]="''partnerCode''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="!self.isNew || false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.validator"
    [translateKeys]="''PARTNER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''PARTNER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Partner_type''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.partnerSrv.partnerType.getById.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.partnerSrv.partnerType.getList.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.validator"
    [validationField]="''govId''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.GOVERNMENT_ID''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.HEADER.BALANCE''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.TITLE'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["bDay","eMail","passport","govId","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-dropdown
    [elementName]="''dropdown:Partner_details.Gender''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.gender"
    [dataDisplayField]="''name''"
    [dataValueField]="''gender''"
    [dataSource]="self.genderTypes$ | async"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.validator"
    [validationField]="''bDay''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CREATION_STORE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Linked_store''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.locationSrv.locationUi.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.locationSrv.locationUi.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Parent_partner''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.partnerSrv.partner.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.partnerSrv.partner.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted : self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.PARENT_PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.validator"
    [validationField]="''eMail''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.TOURIST''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.validator"
    [validationField]="''passport''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.VALID''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || false"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || false"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isFrozen || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div></div><div class=''col-md-6''>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState[''undefined''] ?? true"
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
        self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
        self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [editable]="true"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''paymentTerms''] ?? false"
        (expandedChange)="self.panelStateChange(''paymentTerms'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.PAYMENT_TERMS.TITLE'' : null"
        [title]="true ? null : ''Payment terms''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''paymentTerms''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_list''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.itemSrv.priceList.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.itemSrv.priceList.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_number''"
    [permissionSettings]="{
        isAccessRead: self.authService.endpointConfiguration.itemSrv.priceNumber.getByIdDropdown.isAccessGranted,
        isAccessEdit: self.authService.endpointConfiguration.itemSrv.priceNumber.getListDropdown.isAccessGranted && (
            self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
                self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-dropdown
    [elementName]="''dropdown:Partner_details.Budget_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [dataValue]="self.partnerDetails.budgetTypeId ? self.partnerDetails.budgetTypeId : null"
    [dataDisplayField]="''label''"
    [dataValueField]="''value''"
    [dataSource]="self.budgetTypes$ | async"
    (dataValueChange)="self.onBudgetTypeChanged($event)"
    [isDisabled]="false"
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''><cr-control-dropdown
    *ngIf="partnerDetails?.budgetTypeId === 1"
    [elementName]="''dropdown:Partner_details.Budget_start_month''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.budgetStartMonth"
    [dataDisplayField]="''label''"
    [dataValueField]="''value''"
    [dataSource]="self.months$ | async"
    [isDisabled]="false"
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''statistic''] ?? false"
        (expandedChange)="self.panelStateChange(''statistic'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.STATISTIC'' : null"
        [title]="true ? null : ''Statistic''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''statistic''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.SALES_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.RETURNS_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
            self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''groups''] ?? false"
        (expandedChange)="self.panelStateChange(''groups'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.GROUPS'' : null"
        [title]="true ? null : ''Groups''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''groups''"
        [containFields]=''["partnerGroups"]''
      >
        <ng-template crPanelContent>
          <cr-partner-group-control
    [editable]="true && (self.isNew ?
        self.authService.endpointConfiguration.partnerSrv.partner.create.isAccessGranted :
        self.authService.endpointConfiguration.partnerSrv.partner.update.isAccessGranted)"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''""''
    [editIcon]="''icon-edit''"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''addresses''] ?? false"
        (expandedChange)="self.panelStateChange(''addresses'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.ADDRESSES'' : null"
        [title]="true ? null : ''Addresses''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''addresses''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="!self.isNew">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''cards''] ?? false"
        (expandedChange)="self.panelStateChange(''cards'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CARDS'' : null"
        [title]="true ? null : ''Additional card numbers''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cards''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''points''] ?? false"
        (expandedChange)="self.panelStateChange(''points'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT'' : null"
        [title]="true ? null : ''Loyalty points''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''points''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-point 
    [class]=''""''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''pointHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''pointHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT_HISTORY'' : null"
        [title]="true ? null : ''Point history''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''pointHistory''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-point-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''transactionHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''transactionHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.HISTORY'' : null"
        [title]="true ? null : ''History''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''transactionHistory''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''discountBudget''] ?? false"
        (expandedChange)="self.panelStateChange(''discountBudget'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.DISCOUNT_BUDGET'' : null"
        [title]="true ? null : ''Discount budget''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''discountBudget''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-partner-discount-budget 
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState[''remark''] ?? false"
        (expandedChange)="self.panelStateChange(''remark'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.REMARK'' : null"
        [title]="true ? null : ''Remark''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remark''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-12''><cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="2"
    [maxlength]="50000"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-mailing-category''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="1"
    [partnerId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew">
</cr-partner-mailing-category-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-group''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-group'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-group-manage-dynamic
    [subTemplateId]="2"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="3"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="4"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-03-22 23:53:16.2399824 +02:00', 1, N'N', '7cbf22bd-d7f6-4d7d-9b2b-daa0262b40c9', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (50034, 40046, 1, N'רשימת פרטנרים 2', NULL, NULL, N'', '2022-09-20 10:13:11.9866667 +00:00', 22, N'N', '4c3df850-7107-4692-ad67-03609c60b95e', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (50035, 40046, 2, N'Partner List 2', NULL, NULL, N'', '2022-09-20 10:13:11.9866667 +00:00', 22, N'N', '02d6b149-4ef8-47fc-a5b4-c081cd09af7c', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (50036, 40047, 1, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.partnerDetails">
            <cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.validator"
    [validationField]="''partnerCode''"
    [translateKeys]="''''" 
    [dataLabel]="''קוד''"
    [customClass]=''""''
    [isDisabled]="!self.isNew || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.validator"
    [translateKeys]="''PARTNER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''PARTNER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.HEADER.BALANCE''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.validator"
    [validationField]="''govId''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.GOVERNMENT_ID''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.TITLE'' : null"
        [title]="true ? null : ''כללי''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["bDay","eMail","passport","govId","validFrom","validTo","frozenFrom","frozenTo"]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [label]="''''"
    [class]=''""''>
</cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.validator"
    [validationField]="''bDay''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CREATION_STORE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.PARENT_PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.validator"
    [validationField]="''eMail''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.TOURIST''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.validator"
    [validationField]="''passport''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.VALID''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || false"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || false"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isFrozen || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div></div><div class=''col-md-6''>
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
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''paymentTerms''] ?? false"
        (expandedChange)="self.panelStateChange(''paymentTerms'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.PAYMENT_TERMS.TITLE'' : null"
        [title]="true ? null : ''תנאי תשלום''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''paymentTerms''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE''"
    [label]="''''"
    [class]=''""''
                          ></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''statistic''] ?? true"
        (expandedChange)="self.panelStateChange(''statistic'', $event)"
        [titleTranslateKey]="false ? ''PARTNER.PANEL.STATISTIC'' : null"
        [title]="false ? null : ''נתונים סטטיסטיים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''statistic''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.SALES_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.RETURNS_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''groups''] ?? false"
        (expandedChange)="self.panelStateChange(''groups'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.GROUPS'' : null"
        [title]="true ? null : ''קבוצות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''groups''"
        [containFields]=''["partnerGroups"]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-group-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''""''
    [editIcon]="''icon-edit''"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''addresses''] ?? false"
        (expandedChange)="self.panelStateChange(''addresses'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.ADDRESSES'' : null"
        [title]="true ? null : ''כתובות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''addresses''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''contactPersons''] ?? false"
        (expandedChange)="self.panelStateChange(''contactPersons'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CONTACT_PERSONS'' : null"
        [title]="true ? null : ''Contact persons he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''contactPersons''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-contact-persons-list
    (openAddressPopup)="self.onCreatePartnerContactPersons()"
    (editAddressPopup)="self.onEditPartnerContactPersons($event)"
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
    [class]=''""''
></cr-partner-contact-persons-list>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="!self.isNew">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''cards''] ?? false"
        (expandedChange)="self.panelStateChange(''cards'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CARDS'' : null"
        [title]="true ? null : ''מספרי כרטיס נוספים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cards''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-cards-list
    [editable]="true"
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
    [isDeletedPartner]="self.partnerDetails.isDeleted"
></cr-partner-cards-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''points''] ?? false"
        (expandedChange)="self.panelStateChange(''points'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT'' : null"
        [title]="true ? null : ''נקודות נאמנות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''points''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-point 
    [class]=''""''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''pointHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''pointHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT_HISTORY'' : null"
        [title]="true ? null : ''היסטוריית נקודות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''pointHistory''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-point-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''transactionHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''transactionHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.HISTORY'' : null"
        [title]="true ? null : ''היסטוריה''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''transactionHistory''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''discountBudget''] ?? false"
        (expandedChange)="self.panelStateChange(''discountBudget'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.DISCOUNT_BUDGET'' : null"
        [title]="true ? null : ''תקציב הנחות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''discountBudget''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-discount-budget 
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="self.isUdfForPartnerDetailsAvailable">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''udf''] ?? false"
        (expandedChange)="self.panelStateChange(''udf'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''udf''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div data-component-type="partner-udf-list-form-element"> partner-udf-list-form-element is uknown component type </div>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''remark''] ?? false"
        (expandedChange)="self.panelStateChange(''remark'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.REMARK'' : null"
        [title]="true ? null : ''הערה''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remark''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-12''><cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="2"
    [maxlength]="50000"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-mailing-category''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''partner''"
    [subTemplateId]="1"
    [entityId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

<cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''contact-person''"
    [subTemplateId]="1"
    [entityId]="self.partnerDetailsContactPerson.id"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-groups''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-groups'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-group-manage-dynamic
    [subTemplateId]="2"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="10006"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>

<cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="10006"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-list''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-list'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="10005"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>

<cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="10005"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-09-01 17:55:29.0700000 +00:00', 12, N'N', 'a91a3fb1-e65b-42b6-a582-3cb56ec5fb9d', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (50037, 40047, 2, NULL, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.partnerDetails">
            <cr-title-header
    [titleTranslateKey]="''PARTNER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.validator"
    [validationField]="''partnerCode''"
    [translateKeys]="''''" 
    [dataLabel]="''Code!!!''"
    [customClass]=''""''
    [isDisabled]="!self.isNew || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.validator"
    [translateKeys]="''PARTNER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''PARTNER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.HEADER.BALANCE''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.validator"
    [validationField]="''govId''"
    [translateKeys]="''PARTNER.DETAILS.HEADER.GOVERNMENT_ID''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.TITLE'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["bDay","eMail","passport","govId","validFrom","validTo","frozenFrom","frozenTo"]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [label]="''''"
    [class]=''""''>
</cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.validator"
    [validationField]="''bDay''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.BIRTHDAY''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CREATION_STORE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="true"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-4''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.PARENT_PARTNER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div><div class="row"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.CELLULAR''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FAX''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.validator"
    [validationField]="''eMail''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.TOURIST''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.validator"
    [validationField]="''passport''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.VALID''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || false"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isValid || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || false"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_FROM''"
    [class]=''""'' 
></cr-control-datepicker></div><div class=''col-md-4''><cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.DATE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.partnerDetails.isFrozen || false"
></cr-control-datepicker></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div></div><div class=''col-md-6''>
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
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''paymentTerms''] ?? false"
        (expandedChange)="self.panelStateChange(''paymentTerms'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.PAYMENT_TERMS.TITLE'' : null"
        [title]="true ? null : ''Payment terms''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''paymentTerms''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div></div><div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT''" 
    [customClass]=''""''
    [format]="null" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE''"
    [label]="''''"
    [class]=''""''
                          ></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''statistic''] ?? true"
        (expandedChange)="self.panelStateChange(''statistic'', $event)"
        [titleTranslateKey]="false ? ''PARTNER.PANEL.STATISTIC'' : null"
        [title]="false ? null : ''Statistic1''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''statistic''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.SALES_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.RETURNS_COUNT''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="''''"
    [translateKeys]="''PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.LINKED_STORE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''groups''] ?? false"
        (expandedChange)="self.panelStateChange(''groups'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.GROUPS'' : null"
        [title]="true ? null : ''Groups''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''groups''"
        [containFields]=''["partnerGroups"]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-group-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''""''
    [editIcon]="''icon-edit''"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''addresses''] ?? false"
        (expandedChange)="self.panelStateChange(''addresses'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.ADDRESSES'' : null"
        [title]="true ? null : ''Addresses''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''addresses''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="true"
    [class]=''""''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''contactPersons''] ?? false"
        (expandedChange)="self.panelStateChange(''contactPersons'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CONTACT_PERSONS'' : null"
        [title]="true ? null : ''Contact persons''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''contactPersons''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-contact-persons-list
    (openAddressPopup)="self.onCreatePartnerContactPersons()"
    (editAddressPopup)="self.onEditPartnerContactPersons($event)"
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
    [class]=''""''
></cr-partner-contact-persons-list>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="!self.isNew">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''cards''] ?? false"
        (expandedChange)="self.panelStateChange(''cards'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.CARDS'' : null"
        [title]="true ? null : ''Additional card numbers''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cards''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-cards-list
    [editable]="true"
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
    [isDeletedPartner]="self.partnerDetails.isDeleted"
></cr-partner-cards-list>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''points''] ?? false"
        (expandedChange)="self.panelStateChange(''points'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT'' : null"
        [title]="true ? null : ''Loyalty points''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''points''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-point 
    [class]=''""''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''pointHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''pointHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.POINT_HISTORY'' : null"
        [title]="true ? null : ''Point history''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''pointHistory''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-point-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''transactionHistory''] ?? false"
        (expandedChange)="self.panelStateChange(''transactionHistory'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.HISTORY'' : null"
        [title]="true ? null : ''History''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''transactionHistory''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''discountBudget''] ?? false"
        (expandedChange)="self.panelStateChange(''discountBudget'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.DISCOUNT_BUDGET'' : null"
        [title]="true ? null : ''Discount budget''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''discountBudget''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <cr-partner-discount-budget 
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="self.isUdfForPartnerDetailsAvailable">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''udf''] ?? false"
        (expandedChange)="self.panelStateChange(''udf'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''udf''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div data-component-type="partner-udf-list-form-element"> partner-udf-list-form-element is uknown component type </div>
        </ng-template>
      </cr-panel>
        </ng-template>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''remark''] ?? false"
        (expandedChange)="self.panelStateChange(''remark'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.REMARK'' : null"
        [title]="true ? null : ''Remark''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remark''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-12''><cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="2"
    [maxlength]="50000"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-mailing-category''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''partner''"
    [subTemplateId]="1"
    [entityId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

<cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''contact-person''"
    [subTemplateId]="1"
    [entityId]="self.partnerDetailsContactPerson.id"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-groups''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-groups'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-group-manage-dynamic
    [subTemplateId]="2"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="10006"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>

<cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="10006"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-list''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-list'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="10005"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>

<cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="10005"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-09-01 17:55:29.0700000 +00:00', 12, N'N', 'ed64dc3e-8e0f-462d-9e41-c18d18b18127', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (50038, 40048, 1, N'רשימת פרטנרים 2', NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''''"
    [title]="''רשימת כרטיסים 2''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''COMMON.PANEL.FILTERS'' : null"
        [title]="true ? null : ''חתך הגדרות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''[]''
        (submit)=''true && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.partnerCode"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.lastName"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [(value)]="self.partnerListFilter.partnerTypeId"
    [contextMenuOperations]="[''copyToClipboard'']"
    [dataCacheName]="''PartnerTypeDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_type''"
    [getListItemsFunction]="self.partnerTypeListFn"
    [labelTranslateKey]="''''"
    [label]="''סוג פרטנר''"
    [class]=''""''
    [permissionSettings]="{
        isAccessEdit: self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_GET)
    }"
    [textField]="''displayName''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [valueField]="''id''"
    [isDropdownListOpenWhenKeyboardIsPrinted]="true"
    [isDropdownListOverrideEnterKeyBehaviour]="true"
    (onEnterKey)="self.changeFilter()"
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
    (navigateToEvent)="self.navigateTo($event)"
    [(value)]="self.partnerListFilter.groupId"
    [contextMenuOperations]="[''copyToClipboard'', ''navigateTo'']"
    [dataCacheName]="''PartnerGroupDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_group''"
    [getListItemsFunction]="self.partnerGroupListFn"
    [isCleanListWhenAdditionalParameterChanged]="true"
    [labelTranslateKey]="''PARTNER.FILTER.PARTNER_GROUP''"
    [label]="''''"
    [class]=''""''
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
</div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.passport"
></cr-control-edit></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.phone1"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.phone2"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit></div><div class=''col-md-4''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''COMMON.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.partnerListFilter.showDeleted"
></cr-checkbox-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="self.authService.getEndpointAccessGranted(self.EndpointName.partner_GET)"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.GRID.TITLE'' : null"
        [title]="true ? null : ''רשימת כרטיסים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]="undefined"
      ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-09-20 10:23:05.2100000 +00:00', 7, N'N', '55fd9ae1-f0fa-4c4c-921e-b21392680ccb', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [Title], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (50039, 40048, 2, N'Partner List 2', NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab()''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''''"
    [title]="''Partners 2''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''COMMON.PANEL.FILTERS'' : null"
        [title]="true ? null : ''Selection criteria''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''[]''
        (submit)=''true && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PARTNER_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.partnerCode"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.lastName"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
    [(value)]="self.partnerListFilter.partnerTypeId"
    [contextMenuOperations]="[''copyToClipboard'']"
    [dataCacheName]="''PartnerTypeDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_type''"
    [getListItemsFunction]="self.partnerTypeListFn"
    [labelTranslateKey]="''''"
    [label]="''Partner type''"
    [class]=''""''
    [permissionSettings]="{
        isAccessEdit: self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_GET)
    }"
    [textField]="''displayName''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [valueField]="''id''"
    [isDropdownListOpenWhenKeyboardIsPrinted]="true"
    [isDropdownListOverrideEnterKeyBehaviour]="true"
    (onEnterKey)="self.changeFilter()"
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
    (navigateToEvent)="self.navigateTo($event)"
    [(value)]="self.partnerListFilter.groupId"
    [contextMenuOperations]="[''copyToClipboard'', ''navigateTo'']"
    [dataCacheName]="''PartnerGroupDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_group''"
    [getListItemsFunction]="self.partnerGroupListFn"
    [isCleanListWhenAdditionalParameterChanged]="true"
    [labelTranslateKey]="''PARTNER.FILTER.PARTNER_GROUP''"
    [label]="''''"
    [class]=''""''
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
</div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.passport"
></cr-control-edit></div></div><div class="row"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PHONE_NUMBER_1''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.phone1"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.PHONE_NUMBER_2''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.phone2"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit></div><div class=''col-md-4''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''COMMON.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.partnerListFilter.showDeleted"
></cr-checkbox-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="self.authService.getEndpointAccessGranted(self.EndpointName.partner_GET)"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.GRID.TITLE'' : null"
        [title]="true ? null : ''Partner List''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
        (submit)=''false && self.onSubmit ? self.onSubmit($event) : null''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]="undefined"
      ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-09-20 10:23:05.2100000 +00:00', 7, N'N', 'd24bcbfc-d906-44e5-aaa5-92989e5848fe', 1, NULL)
SET IDENTITY_INSERT [dbo].[WebViewTemplateName] OFF

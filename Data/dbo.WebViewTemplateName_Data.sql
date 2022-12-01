INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('d1079288-cc6f-ed11-835f-02f176033ddb', 'd0079288-cc6f-ed11-835f-02f176033ddb', 1, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.employee">
            <cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNewEmployee ? ''COMMON.NEW'' : null"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''cr-alternate-shadow''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
    [(dataValue)]="self.employee.number"
    [elementName]="''numeric:Employee_details.Number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''number''"
    [validator]="self.validator"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.NUMBER''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="true"
></cr-numeric-control>
</div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.firstName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.lastName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.printName"
    [elementName]="''edit:Employee_details.Print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.PRINT_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-edit-password-control
    [(dataValue)]="self.employee.password"
    [elementName]="''edit-password:Employee_details.Password''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''password''"
    [validator]="self.validator"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.PASSWORD''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [showPasswordButton]="false"
    [showPasswordPlaceholder]="false"
></cr-edit-password-control>
</div><div class=''col-md-2''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''כללי''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["startDate","startDate","passport"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.additionalNumber"
    [elementName]="''edit:Employee_details.Additional_number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.ADDITIONAL_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-datepicker
    [(dataValue)]="self.employee.startDate"
    [elementName]="''date:Employee_details.Start_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''startDate''"
    [validator]="self.validator"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.START_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [(dataValue)]="self.employee.endDate"
    [elementName]="''date:Employee_details.End_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''endDate''"
    [validator]="self.validator"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.END_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker>
</div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isOfficeWorker"
    [elementName]="''checkbox:Employee_details.Office_worker''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.OFFICE_WORKER''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isDutyFreeZone"
    [elementName]="''checkbox:Employee_details.Duty_free_zone''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.DUTY_FREE_ZONE''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''EMPLOYEE.DETAILS.HEADER.USER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.employee.passport"
    [elementName]="''edit:Employee_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''passport''"
    [validator]="self.validator"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isFrozen"
    [elementName]="''checkbox:Employee_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee || (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isContractor"
    [elementName]="''checkbox:Employee_details.Contractor''"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.CONTRACTOR''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''></div></div><div class="row undefined"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''EMPLOYEE.DETAILS.GENERAL.MANAGER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-10''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''accessLevel''] ?? false"
        (expandedChange)="self.panelStateChange(''accessLevel'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.ACCESS_LEVEL'' : null"
        [title]="true ? null : ''Access level he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''accessLevel''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
    [class]=''""''
></cr-basket-population-view>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''sellerInStores''] ?? false"
        (expandedChange)="self.panelStateChange(''sellerInStores'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.SELLER_IN_STORES'' : null"
        [title]="true ? null : ''Seller in stores he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''sellerInStores''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
    [class]=''""''
></cr-basket-population-view>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''userFields''] ?? false"
        (expandedChange)="self.panelStateChange(''userFields'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''userFields''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]=''""''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''cardNumber''] ?? false"
        (expandedChange)="self.panelStateChange(''cardNumber'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.CARDS.TITLE'' : null"
        [title]="true ? null : ''Card numbers he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cardNumber''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-employee-details-card-number
    [employeeId]="self.employee.id"
    [isDeletedEmployee]="self.employee.isDeleted"
    [isNewEmployee]="self.isNewEmployee"
    [class]=''undefined''
></cr-employee-details-card-number>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''remarks''] ?? false"
        (expandedChange)="self.panelStateChange(''remarks'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.REMARKS'' : null"
        [title]="true ? null : ''הערות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remarks''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-12''><cr-text-area-control
    [(dataValue)]="self.employee.remark"
    [elementName]="''textarea:Employee_details.Remark''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="undefined"
    [maxlength]="50000"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        <div [class]="''cr-footer-view''">
            <div class="cr-footer-flex-wrapper" [class]=''""''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="''''"
            [dataLabelTranslateKeys]="''COMMON.CREATION_DATE''"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.employee?.creationDate | stringToDate | date:self.currentDateFormatPattern"
        ></cr-text-field-control>
    </div>
</div><div class="cr-footer-flex-wrapper" [class]=''""''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="''''"
            [dataLabelTranslateKeys]="''COMMON.UPDATE_DATE''"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.employee?.updateDate | stringToDate | date:self.currentDateFormatPattern">
        ></cr-text-field-control>
    </div>
</div>
        </div>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-baskets-seller-in-stores-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-baskets-seller-in-stores-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-seller-basket-population-edit
    [subTemplateId]="''22C5AE2C-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelSellerInStoresPopulation()"
    (confirm)="self.onSaveSellerInStoresPopulation($event)"
    [basket]="self.employee?.sellerLocation?.baskets[self.employee?.sellerLocation.selectedBasketIndex]?.populationDetails"
    [cacheName]="''sellerInStoresPopulationDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.sellerLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.sellerLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.sellerInStoresPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_EDIT''"
    [typeDropdownFn]="self.sellerInStoresTypeDropdownFn"
    [valueDropdownFn]="self.sellerInStoresValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-seller-basket-population-edit>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-baskets-seller-in-stores-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-baskets-seller-in-stores-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-seller-basket-population-edit
    [subTemplateId]="''B8A0C44A-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelSellerInStoresPopulation()"
    (confirm)="self.onCreateSellerInStoresPopulation($event)"
    [cacheName]="''sellerInStoresPopulationCreateDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.sellerLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.sellerLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.sellerInStoresPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CREATE''"
    [typeDropdownFn]="self.sellerInStoresTypeDropdownFn"
    [valueDropdownFn]="self.sellerInStoresValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-seller-basket-population-edit>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-access-level-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-access-level-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-access-level-basket-population-edit
    [subTemplateId]="''BE44CA58-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelAccessLevelPopulation()"
    (confirm)="self.onSaveAccessLevelPopulation($event)"
    [basket]="self.employee?.accessLevelLocation?.baskets[self.employee?.accessLevelLocation.selectedBasketIndex]?.populationDetails"
    [cacheName]="''accessLevelPopulationDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.accessLevelLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.accessLevelLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.accessLevelPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_EDIT''"
    [typeDropdownFn]="self.accessLevelTypeDropdownFn"
    [valueDropdownFn]="self.accessLevelValuesDropdownFn"
    [accessLevelDropdownFn]="self.accessLevelDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-access-level-basket-population-edit>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-access-level-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-access-level-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-access-level-basket-population-edit
    [subTemplateId]="''BC281366-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelAccessLevelPopulation()"
    (confirm)="self.onCreateAccessLevelPopulation($event)"
    [cacheName]="''accessLevelPopulationCreateDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.accessLevelLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.accessLevelLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.accessLevelPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CREATE''"
    [typeDropdownFn]="self.accessLevelTypeDropdownFn"
    [valueDropdownFn]="self.accessLevelValuesDropdownFn"
    [accessLevelDropdownFn]="self.accessLevelDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-access-level-basket-population-edit>

          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-12-01 09:26:25.6933333 +00:00', 13, N'N', 'bf68bdb6-fca1-4ee1-830a-6e7fef24e828', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('d2079288-cc6f-ed11-835f-02f176033ddb', 'd0079288-cc6f-ed11-835f-02f176033ddb', 2, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.employee">
            <cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNewEmployee ? ''COMMON.NEW'' : null"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''cr-alternate-shadow''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
    [(dataValue)]="self.employee.number"
    [elementName]="''numeric:Employee_details.Number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''number''"
    [validator]="self.validator"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.NUMBER''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="true"
></cr-numeric-control>
</div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.firstName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.lastName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.printName"
    [elementName]="''edit:Employee_details.Print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.PRINT_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-edit-password-control
    [(dataValue)]="self.employee.password"
    [elementName]="''edit-password:Employee_details.Password''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''password''"
    [validator]="self.validator"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.PASSWORD''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [showPasswordButton]="false"
    [showPasswordPlaceholder]="false"
></cr-edit-password-control>
</div><div class=''col-md-2''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["startDate","startDate","passport"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.additionalNumber"
    [elementName]="''edit:Employee_details.Additional_number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.ADDITIONAL_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-datepicker
    [(dataValue)]="self.employee.startDate"
    [elementName]="''date:Employee_details.Start_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''startDate''"
    [validator]="self.validator"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.START_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [(dataValue)]="self.employee.endDate"
    [elementName]="''date:Employee_details.End_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''endDate''"
    [validator]="self.validator"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.END_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker>
</div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isOfficeWorker"
    [elementName]="''checkbox:Employee_details.Office_worker''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.OFFICE_WORKER''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isDutyFreeZone"
    [elementName]="''checkbox:Employee_details.Duty_free_zone''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.DUTY_FREE_ZONE''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''EMPLOYEE.DETAILS.HEADER.USER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.employee.passport"
    [elementName]="''edit:Employee_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''passport''"
    [validator]="self.validator"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isFrozen"
    [elementName]="''checkbox:Employee_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee || (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isContractor"
    [elementName]="''checkbox:Employee_details.Contractor''"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.CONTRACTOR''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''></div></div><div class="row undefined"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''EMPLOYEE.DETAILS.GENERAL.MANAGER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-10''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''accessLevel''] ?? false"
        (expandedChange)="self.panelStateChange(''accessLevel'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.ACCESS_LEVEL'' : null"
        [title]="true ? null : ''Access level''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''accessLevel''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
    [class]=''""''
></cr-basket-population-view>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''sellerInStores''] ?? false"
        (expandedChange)="self.panelStateChange(''sellerInStores'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.SELLER_IN_STORES'' : null"
        [title]="true ? null : ''Seller in stores''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''sellerInStores''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
    [class]=''""''
></cr-basket-population-view>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''userFields''] ?? false"
        (expandedChange)="self.panelStateChange(''userFields'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''userFields''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]=''""''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''cardNumber''] ?? false"
        (expandedChange)="self.panelStateChange(''cardNumber'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.CARDS.TITLE'' : null"
        [title]="true ? null : ''Card numbers''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cardNumber''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-employee-details-card-number
    [employeeId]="self.employee.id"
    [isDeletedEmployee]="self.employee.isDeleted"
    [isNewEmployee]="self.isNewEmployee"
    [class]=''undefined''
></cr-employee-details-card-number>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''remarks''] ?? false"
        (expandedChange)="self.panelStateChange(''remarks'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.REMARKS'' : null"
        [title]="true ? null : ''Remarks''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remarks''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-12''><cr-text-area-control
    [(dataValue)]="self.employee.remark"
    [elementName]="''textarea:Employee_details.Remark''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="undefined"
    [maxlength]="50000"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        <div [class]="''cr-footer-view''">
            <div class="cr-footer-flex-wrapper" [class]=''""''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="''''"
            [dataLabelTranslateKeys]="''COMMON.CREATION_DATE''"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.employee?.creationDate | stringToDate | date:self.currentDateFormatPattern"
        ></cr-text-field-control>
    </div>
</div><div class="cr-footer-flex-wrapper" [class]=''""''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="''''"
            [dataLabelTranslateKeys]="''COMMON.UPDATE_DATE''"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.employee?.updateDate | stringToDate | date:self.currentDateFormatPattern">
        ></cr-text-field-control>
    </div>
</div>
        </div>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-baskets-seller-in-stores-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-baskets-seller-in-stores-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-seller-basket-population-edit
    [subTemplateId]="''22C5AE2C-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelSellerInStoresPopulation()"
    (confirm)="self.onSaveSellerInStoresPopulation($event)"
    [basket]="self.employee?.sellerLocation?.baskets[self.employee?.sellerLocation.selectedBasketIndex]?.populationDetails"
    [cacheName]="''sellerInStoresPopulationDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.sellerLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.sellerLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.sellerInStoresPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_EDIT''"
    [typeDropdownFn]="self.sellerInStoresTypeDropdownFn"
    [valueDropdownFn]="self.sellerInStoresValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-seller-basket-population-edit>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-baskets-seller-in-stores-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-baskets-seller-in-stores-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-seller-basket-population-edit
    [subTemplateId]="''B8A0C44A-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelSellerInStoresPopulation()"
    (confirm)="self.onCreateSellerInStoresPopulation($event)"
    [cacheName]="''sellerInStoresPopulationCreateDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.sellerLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.sellerLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.sellerInStoresPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CREATE''"
    [typeDropdownFn]="self.sellerInStoresTypeDropdownFn"
    [valueDropdownFn]="self.sellerInStoresValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-seller-basket-population-edit>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-access-level-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-access-level-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-access-level-basket-population-edit
    [subTemplateId]="''BE44CA58-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelAccessLevelPopulation()"
    (confirm)="self.onSaveAccessLevelPopulation($event)"
    [basket]="self.employee?.accessLevelLocation?.baskets[self.employee?.accessLevelLocation.selectedBasketIndex]?.populationDetails"
    [cacheName]="''accessLevelPopulationDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.accessLevelLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.accessLevelLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.accessLevelPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_EDIT''"
    [typeDropdownFn]="self.accessLevelTypeDropdownFn"
    [valueDropdownFn]="self.accessLevelValuesDropdownFn"
    [accessLevelDropdownFn]="self.accessLevelDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-access-level-basket-population-edit>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-access-level-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-access-level-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-access-level-basket-population-edit
    [subTemplateId]="''BC281366-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelAccessLevelPopulation()"
    (confirm)="self.onCreateAccessLevelPopulation($event)"
    [cacheName]="''accessLevelPopulationCreateDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.accessLevelLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.accessLevelLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.accessLevelPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CREATE''"
    [typeDropdownFn]="self.accessLevelTypeDropdownFn"
    [valueDropdownFn]="self.accessLevelValuesDropdownFn"
    [accessLevelDropdownFn]="self.accessLevelDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-access-level-basket-population-edit>

          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-12-01 09:26:25.6933333 +00:00', 13, N'N', '66bb12c2-9c1b-4a4c-96a5-bb15372e2f8f', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1d4cc897-cc6f-ed11-835f-02f176033ddb', '1c4cc897-cc6f-ed11-835f-02f176033ddb', 1, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.employee">
            <cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNewEmployee ? ''COMMON.NEW'' : null"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''cr-alternate-shadow''"
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [(dataValue)]="self.employee.number"
    [elementName]="''numeric:Employee_details.Number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''number''"
    [validator]="self.validator"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.NUMBER''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="true"
></cr-numeric-control>
</div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.firstName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.lastName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.printName"
    [elementName]="''edit:Employee_details.Print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.PRINT_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-edit-password-control
    [(dataValue)]="self.employee.password"
    [elementName]="''edit-password:Employee_details.Password''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''password''"
    [validator]="self.validator"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.PASSWORD''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [showPasswordButton]="false"
    [showPasswordPlaceholder]="false"
></cr-edit-password-control>
</div><div class=''col-md-2''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''כללי''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["startDate","startDate","passport"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.additionalNumber"
    [elementName]="''edit:Employee_details.Additional_number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.ADDITIONAL_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-datepicker
    [(dataValue)]="self.employee.startDate"
    [elementName]="''date:Employee_details.Start_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''startDate''"
    [validator]="self.validator"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.START_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [(dataValue)]="self.employee.endDate"
    [elementName]="''date:Employee_details.End_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''endDate''"
    [validator]="self.validator"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.END_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker>
</div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isOfficeWorker"
    [elementName]="''checkbox:Employee_details.Office_worker''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.OFFICE_WORKER''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isDutyFreeZone"
    [elementName]="''checkbox:Employee_details.Duty_free_zone''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.DUTY_FREE_ZONE''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''EMPLOYEE.DETAILS.HEADER.USER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.employee.passport"
    [elementName]="''edit:Employee_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''passport''"
    [validator]="self.validator"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isFrozen"
    [elementName]="''checkbox:Employee_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee || (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isContractor"
    [elementName]="''checkbox:Employee_details.Contractor''"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.CONTRACTOR''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''></div></div><div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''EMPLOYEE.DETAILS.GENERAL.MANAGER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-10''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''accessLevel''] ?? false"
        (expandedChange)="self.panelStateChange(''accessLevel'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.ACCESS_LEVEL'' : null"
        [title]="true ? null : ''Access level he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''accessLevel''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
    [class]=''""''
></cr-basket-population-view>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''sellerInStores''] ?? false"
        (expandedChange)="self.panelStateChange(''sellerInStores'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.SELLER_IN_STORES'' : null"
        [title]="true ? null : ''Seller in stores he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''sellerInStores''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
    [class]=''""''
></cr-basket-population-view>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''userFields''] ?? false"
        (expandedChange)="self.panelStateChange(''userFields'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''userFields''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]=''""''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''cardNumber''] ?? false"
        (expandedChange)="self.panelStateChange(''cardNumber'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.CARDS.TITLE'' : null"
        [title]="true ? null : ''Card numbers he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cardNumber''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-employee-details-card-number
    [employeeId]="self.employee.id"
    [isDeletedEmployee]="self.employee.isDeleted"
    [isNewEmployee]="self.isNewEmployee"
    [class]=''undefined''
></cr-employee-details-card-number>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''remarks''] ?? false"
        (expandedChange)="self.panelStateChange(''remarks'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.REMARKS'' : null"
        [title]="true ? null : ''הערות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remarks''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-text-area-control
    [(dataValue)]="self.employee.remark"
    [elementName]="''textarea:Employee_details.Remark''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="undefined"
    [maxlength]="50000"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-baskets-seller-in-stores-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-baskets-seller-in-stores-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-seller-basket-population-edit
    [subTemplateId]="''22C5AE2C-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelSellerInStoresPopulation()"
    (confirm)="self.onSaveSellerInStoresPopulation($event)"
    [basket]="self.employee?.sellerLocation?.baskets[self.employee?.sellerLocation.selectedBasketIndex]?.populationDetails"
    [cacheName]="''sellerInStoresPopulationDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.sellerLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.sellerLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.sellerInStoresPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_EDIT''"
    [typeDropdownFn]="self.sellerInStoresTypeDropdownFn"
    [valueDropdownFn]="self.sellerInStoresValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-seller-basket-population-edit>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-baskets-seller-in-stores-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-baskets-seller-in-stores-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-seller-basket-population-edit
    [subTemplateId]="''B8A0C44A-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelSellerInStoresPopulation()"
    (confirm)="self.onCreateSellerInStoresPopulation($event)"
    [cacheName]="''sellerInStoresPopulationCreateDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.sellerLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.sellerLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.sellerInStoresPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CREATE''"
    [typeDropdownFn]="self.sellerInStoresTypeDropdownFn"
    [valueDropdownFn]="self.sellerInStoresValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-seller-basket-population-edit>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-access-level-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-access-level-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-access-level-basket-population-edit
    [subTemplateId]="''BE44CA58-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelAccessLevelPopulation()"
    (confirm)="self.onSaveAccessLevelPopulation($event)"
    [basket]="self.employee?.accessLevelLocation?.baskets[self.employee?.accessLevelLocation.selectedBasketIndex]?.populationDetails"
    [cacheName]="''accessLevelPopulationDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.accessLevelLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.accessLevelLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.accessLevelPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_EDIT''"
    [typeDropdownFn]="self.accessLevelTypeDropdownFn"
    [valueDropdownFn]="self.accessLevelValuesDropdownFn"
    [accessLevelDropdownFn]="self.accessLevelDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-access-level-basket-population-edit>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-access-level-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-access-level-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-access-level-basket-population-edit
    [subTemplateId]="''BC281366-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelAccessLevelPopulation()"
    (confirm)="self.onCreateAccessLevelPopulation($event)"
    [cacheName]="''accessLevelPopulationCreateDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.accessLevelLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.accessLevelLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.accessLevelPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CREATE''"
    [typeDropdownFn]="self.accessLevelTypeDropdownFn"
    [valueDropdownFn]="self.accessLevelValuesDropdownFn"
    [accessLevelDropdownFn]="self.accessLevelDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-access-level-basket-population-edit>

          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-29 14:22:59.5400000 +00:00', 6, N'N', '8a69c359-8e15-44ff-a76f-7f990643c49f', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1e4cc897-cc6f-ed11-835f-02f176033ddb', '1c4cc897-cc6f-ed11-835f-02f176033ddb', 2, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.employee">
            <cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNewEmployee ? ''COMMON.NEW'' : null"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''cr-alternate-shadow''"
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [(dataValue)]="self.employee.number"
    [elementName]="''numeric:Employee_details.Number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''number''"
    [validator]="self.validator"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.NUMBER''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="true"
></cr-numeric-control>
</div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.firstName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.lastName"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Employee_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.printName"
    [elementName]="''edit:Employee_details.Print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.PRINT_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-edit-password-control
    [(dataValue)]="self.employee.password"
    [elementName]="''edit-password:Employee_details.Password''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''password''"
    [validator]="self.validator"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.PASSWORD''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [showPasswordButton]="false"
    [showPasswordPlaceholder]="false"
></cr-edit-password-control>
</div><div class=''col-md-2''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["startDate","startDate","passport"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.employee.additionalNumber"
    [elementName]="''edit:Employee_details.Additional_number''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.ADDITIONAL_NUMBER''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-datepicker
    [(dataValue)]="self.employee.startDate"
    [elementName]="''date:Employee_details.Start_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''startDate''"
    [validator]="self.validator"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.START_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [(dataValue)]="self.employee.endDate"
    [elementName]="''date:Employee_details.End_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''endDate''"
    [validator]="self.validator"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.END_DATE''"
    [class]=''""'' 
    [isDisabled]="false"
></cr-control-datepicker>
</div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isOfficeWorker"
    [elementName]="''checkbox:Employee_details.Office_worker''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.OFFICE_WORKER''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isDutyFreeZone"
    [elementName]="''checkbox:Employee_details.Duty_free_zone''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.DUTY_FREE_ZONE''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''EMPLOYEE.DETAILS.HEADER.USER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.employee.passport"
    [elementName]="''edit:Employee_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''passport''"
    [validator]="self.validator"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.PASSPORT''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isFrozen"
    [elementName]="''checkbox:Employee_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee || (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [(dataValue)]="self.employee.isContractor"
    [elementName]="''checkbox:Employee_details.Contractor''"
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.DETAILS.HEADER.CONTRACTOR''"
    [isDisabled]="false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''></div></div><div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''EMPLOYEE.DETAILS.GENERAL.MANAGER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-10''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''accessLevel''] ?? false"
        (expandedChange)="self.panelStateChange(''accessLevel'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.ACCESS_LEVEL'' : null"
        [title]="true ? null : ''Access level''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''accessLevel''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
    [class]=''""''
></cr-basket-population-view>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''sellerInStores''] ?? false"
        (expandedChange)="self.panelStateChange(''sellerInStores'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.SELLER_IN_STORES'' : null"
        [title]="true ? null : ''Seller in stores''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''sellerInStores''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
    [class]=''""''
></cr-basket-population-view>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''userFields''] ?? false"
        (expandedChange)="self.panelStateChange(''userFields'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''userFields''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]=''""''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''cardNumber''] ?? false"
        (expandedChange)="self.panelStateChange(''cardNumber'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.CARDS.TITLE'' : null"
        [title]="true ? null : ''Card numbers''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''cardNumber''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-employee-details-card-number
    [employeeId]="self.employee.id"
    [isDeletedEmployee]="self.employee.isDeleted"
    [isNewEmployee]="self.isNewEmployee"
    [class]=''undefined''
></cr-employee-details-card-number>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''remarks''] ?? false"
        (expandedChange)="self.panelStateChange(''remarks'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.PANEL.REMARKS'' : null"
        [title]="true ? null : ''Remarks''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''remarks''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-text-area-control
    [(dataValue)]="self.employee.remark"
    [elementName]="''textarea:Employee_details.Remark''"
    [permissionSettings]="{
        isAccessEdit: self.isNewEmployee ?
            (self.EndpointName.employee_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.employee_id_PUT | endpointAccessGrantedPipe)
    }"
    [dataLabel]="''''"
    [translateKeys]="''''"
    [class]=''""'' 
    [isDisabled]="false"
    [rows]="undefined"
    [maxlength]="50000"
></cr-text-area-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''manage-baskets-seller-in-stores-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-baskets-seller-in-stores-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-seller-basket-population-edit
    [subTemplateId]="''22C5AE2C-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelSellerInStoresPopulation()"
    (confirm)="self.onSaveSellerInStoresPopulation($event)"
    [basket]="self.employee?.sellerLocation?.baskets[self.employee?.sellerLocation.selectedBasketIndex]?.populationDetails"
    [cacheName]="''sellerInStoresPopulationDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.sellerLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.sellerLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.sellerInStoresPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_EDIT''"
    [typeDropdownFn]="self.sellerInStoresTypeDropdownFn"
    [valueDropdownFn]="self.sellerInStoresValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-seller-basket-population-edit>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-baskets-seller-in-stores-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-baskets-seller-in-stores-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-seller-basket-population-edit
    [subTemplateId]="''B8A0C44A-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelSellerInStoresPopulation()"
    (confirm)="self.onCreateSellerInStoresPopulation($event)"
    [cacheName]="''sellerInStoresPopulationCreateDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.sellerLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.sellerLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.sellerInStoresPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CREATE''"
    [typeDropdownFn]="self.sellerInStoresTypeDropdownFn"
    [valueDropdownFn]="self.sellerInStoresValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-seller-basket-population-edit>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-access-level-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-access-level-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-access-level-basket-population-edit
    [subTemplateId]="''BE44CA58-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelAccessLevelPopulation()"
    (confirm)="self.onSaveAccessLevelPopulation($event)"
    [basket]="self.employee?.accessLevelLocation?.baskets[self.employee?.accessLevelLocation.selectedBasketIndex]?.populationDetails"
    [cacheName]="''accessLevelPopulationDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.accessLevelLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.accessLevelLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.accessLevelPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_EDIT''"
    [typeDropdownFn]="self.accessLevelTypeDropdownFn"
    [valueDropdownFn]="self.accessLevelValuesDropdownFn"
    [accessLevelDropdownFn]="self.accessLevelDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-access-level-basket-population-edit>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-access-level-population''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-access-level-population'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-access-level-basket-population-edit
    [subTemplateId]="''BC281366-F06F-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelAccessLevelPopulation()"
    (confirm)="self.onCreateAccessLevelPopulation($event)"
    [cacheName]="''accessLevelPopulationCreateDropdown''"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.employee?.accessLevelLocation.lastExcludeNumber"
    [lastIncludeNumber]="self.employee?.accessLevelLocation.lastIncludeNumber"
    [propertyDropdownFn]="self.accessLevelPropertiesDropdownFn"
    [titleContentTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION''"
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CREATE''"
    [typeDropdownFn]="self.accessLevelTypeDropdownFn"
    [valueDropdownFn]="self.accessLevelValuesDropdownFn"
    [accessLevelDropdownFn]="self.accessLevelDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-access-level-basket-population-edit>

          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-29 14:22:59.5400000 +00:00', 6, N'N', 'c3252532-42d6-4f32-8afb-68cc49363c3b', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f0819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd5ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
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
          <div class="row "><div class=''col-md-2''><cr-control-edit
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
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.TITLE'' : null"
        [title]="true ? null : ''כללי''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["bDay","eMail","passport","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
></cr-dropdown-smart-control></div></div><div class="row "><div class=''col-md-2''><cr-control-edit
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
></cr-control-edit></div></div><div class="row "><div class=''col-md-6''><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-edit></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-datepicker></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-datepicker></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-checkbox-control></div><div class=''col-md-8''><cr-control-edit
    [translateKeys]="''PARTNER.DETAILS.GENERAL.UPDATE_EMPLOYEE''"
    [dataLabel]="''''"
    [isDisabled]="true"
    [customClass]=''""''
    [dataValue]="self.partnerDetails.updateEmployee?.name"
    [elementName]="''label:Partner_details.Update_employee''"
></cr-control-edit></div></div></div><div class=''col-md-6''>
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
</div></div><div class="row "><div class=''col-md-2''><cr-numeric-control
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
></cr-numeric-control></div></div><div class="row "><div class=''col-md-2''><cr-numeric-control
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
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
      >
        <ng-template crPanelContent>
          <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
        </ng-template>
      </cr-panel>
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
        [expanded]="self.panelsViewState?.[''udf''] ?? false"
        (expandedChange)="self.panelStateChange(''udf'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''udf''"
        [containFields]=''[]''
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
    [getUserFieldsDefault$]="self.getUserFieldsDefault$"
    [class]=''""''
></cr-udf-list>
<ng-template #noAccess>
    <div class="cr-no-read-access p-2">
        {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
    </div>
</ng-template>
        </ng-template>
      </cr-panel>
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-text-area-control
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
    
        <ng-template [ngSwitchCase]="''manage-mailing-category-partner''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category-partner'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''0900AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
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
    [subTemplateId]="''0A00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="''0B00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-mailing-category-contact-person''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category-contact-person'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''0900AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="''7BCDF1FD-535C-ED11-8E5E-4CCC6A2BB6D6''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    [subTemplateId]="''BBD312CC-5B5C-ED11-8E5E-4CCC6A2BB6D6''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    [subTemplateId]="''0E00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
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
        </div>', '2022-11-25 10:18:00.2633333 +00:00', 214, N'N', 'df9f7127-b446-4f03-898d-158d39ccfc49', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f1819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd5ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
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
          <div class="row "><div class=''col-md-2''><cr-control-edit
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
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.DETAILS.GENERAL.TITLE'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["bDay","eMail","passport","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
></cr-dropdown-smart-control></div></div><div class="row "><div class=''col-md-2''><cr-control-edit
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
></cr-control-edit></div></div><div class="row "><div class=''col-md-6''><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-edit></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-datepicker></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-datepicker></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-checkbox-control></div><div class=''col-md-8''><cr-control-edit
    [translateKeys]="''PARTNER.DETAILS.GENERAL.UPDATE_EMPLOYEE''"
    [dataLabel]="''''"
    [isDisabled]="true"
    [customClass]=''""''
    [dataValue]="self.partnerDetails.updateEmployee?.name"
    [elementName]="''label:Partner_details.Update_employee''"
></cr-control-edit></div></div></div><div class=''col-md-6''>
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
</div></div><div class="row "><div class=''col-md-2''><cr-numeric-control
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
></cr-numeric-control></div></div><div class="row "><div class=''col-md-2''><cr-numeric-control
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
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
      >
        <ng-template crPanelContent>
          <cr-partner-transaction-history
    [class]=''""''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>
        </ng-template>
      </cr-panel>
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
        [expanded]="self.panelsViewState?.[''udf''] ?? false"
        (expandedChange)="self.panelStateChange(''udf'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''udf''"
        [containFields]=''[]''
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
    [getUserFieldsDefault$]="self.getUserFieldsDefault$"
    [class]=''""''
></cr-udf-list>
<ng-template #noAccess>
    <div class="cr-no-read-access p-2">
        {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
    </div>
</ng-template>
        </ng-template>
      </cr-panel>
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-text-area-control
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
    
        <ng-template [ngSwitchCase]="''manage-mailing-category-partner''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category-partner'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''0900AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
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
    [subTemplateId]="''0A00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="''0B00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-mailing-category-contact-person''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category-contact-person'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''0900AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="''7BCDF1FD-535C-ED11-8E5E-4CCC6A2BB6D6''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    [subTemplateId]="''BBD312CC-5B5C-ED11-8E5E-4CCC6A2BB6D6''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    [subTemplateId]="''0E00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
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
        </div>', '2022-11-25 10:18:00.5866667 +00:00', 214, N'N', 'ab442279-1dcf-4aaa-b261-8bb3d86434ca', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f2819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd6ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
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
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f3819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd6ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
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
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f4819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd7ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
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
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f5819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd7ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
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
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f6819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd8ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
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
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="false ? ''undefined'' : null"
        [title]="false ? null : ''Panel he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit></div><div class=''col-md-2''></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''""''
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
        </div>', '2022-11-04 18:24:21.9866667 +00:00', 31, N'N', '67d4dbc2-d5ea-4cbf-a22c-da513b28228f', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f7819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd8ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
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
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="false ? ''undefined'' : null"
        [title]="false ? null : ''חתך הגדרות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit></div><div class=''col-md-2''></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''""''
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
        </div>', '2022-11-04 18:24:22.0666667 +00:00', 31, N'N', 'db6bf9b0-4575-4124-b031-4442671ba11d', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f8819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd9ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
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
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-04 18:18:11.5800000 +00:00', 15, N'N', '19ca0b9a-b3e7-4c7d-9dc2-74b19c890052', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f9819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd9ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
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
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-04 18:18:11.6866667 +00:00', 15, N'N', '3020460f-5784-4781-9c4b-579f58e67b24', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('fa819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'daae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
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
        </div>', '2022-11-04 18:24:22.0366667 +00:00', 13, N'N', '13628203-aa25-4f1f-afa7-696a9f4fa7f9', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('fb819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'daae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
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
        </div>', '2022-11-04 18:24:22.0966667 +00:00', 13, N'N', '64e9fa0d-5282-42a0-82b1-38a3d44a4e70', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('fe819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'dcae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''TAX_GROUP.DETAILS.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.taxGroup.code"
    [elementName]="''edit:TaxGroup_details.Code''"
    [validator]="self.validator"
    [validationField]="''code''"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''TAX_GROUP.DETAILS.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.taxGroup.isPredefined || false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.taxGroup.name"
    [elementName]="''edit:TaxGroup_details.Name''"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="''TAX_GROUP.DETAILS.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''taxDefinition''] ?? true"
        (expandedChange)="self.panelStateChange(''taxDefinition'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TITLE_DEFINITIONS'' : null"
        [title]="true ? null : ''Tax definitions he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''taxDefinition''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new cr-grid-with-collapse cr-tax-group-grid">
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
                  </div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-25 10:18:04.0666667 +00:00', 20, N'N', '38bba65d-9d09-47b6-bb12-e6ade186d476', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('ff819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'dcae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''TAX_GROUP.DETAILS.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.taxGroup.code"
    [elementName]="''edit:TaxGroup_details.Code''"
    [validator]="self.validator"
    [validationField]="''code''"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="''TAX_GROUP.DETAILS.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.taxGroup.isPredefined || false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.taxGroup.name"
    [elementName]="''edit:TaxGroup_details.Name''"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="''TAX_GROUP.DETAILS.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''taxDefinition''] ?? true"
        (expandedChange)="self.panelStateChange(''taxDefinition'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TITLE_DEFINITIONS'' : null"
        [title]="true ? null : ''Tax definitions''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''taxDefinition''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new cr-grid-with-collapse cr-tax-group-grid">
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
                  </div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-25 10:18:04.0700000 +00:00', 20, N'N', '93c7a93c-b18b-4817-b5cd-c9289f9ff8cd', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('8ca5acaf-8553-ed11-8e5d-4ccc6a2bb6d6', '8ba5acaf-8553-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
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
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="false ? ''undefined'' : null"
        [title]="false ? null : ''Panel he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit></div><div class=''col-md-2''></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''""''
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
        </div>', '2022-11-04 14:28:21.9933333 +00:00', 2, N'N', '01b9991a-607d-4e05-8bfb-2b83e05fde3b', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('8da5acaf-8553-ed11-8e5d-4ccc6a2bb6d6', '8ba5acaf-8553-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
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
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="false ? ''undefined'' : null"
        [title]="false ? null : ''חתך הגדרות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit></div><div class=''col-md-2''></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''""''
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
        </div>', '2022-11-04 14:28:27.4233333 +00:00', 2, N'N', 'd27ff221-850f-44d4-9532-d70346e99f13', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('9e2dcb25-645c-ed11-8e5e-4ccc6a2bb6d6', '9d2dcb25-645c-ed11-8e5e-4ccc6a2bb6d6', 1, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
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
          <div class="row "><div class=''col-md-2''><cr-control-edit
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
        [containFields]=''["bDay","eMail","passport","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
></cr-dropdown-smart-control></div></div><div class="row "><div class=''col-md-2''><cr-control-edit
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
></cr-control-edit></div></div><div class="row "><div class=''col-md-6''><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-edit></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-datepicker></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-datepicker></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
</div></div><div class="row "><div class=''col-md-2''><cr-numeric-control
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
></cr-numeric-control></div></div><div class="row "><div class=''col-md-2''><cr-numeric-control
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
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
        [expanded]="self.panelsViewState?.[''udf''] ?? false"
        (expandedChange)="self.panelStateChange(''udf'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''udf''"
        [containFields]=''[]''
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
    [getUserFieldsDefault$]="self.getUserFieldsDefault$"
    [class]=''""''
></cr-udf-list>
<ng-template #noAccess>
    <div class="cr-no-read-access p-2">
        {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
    </div>
</ng-template>
        </ng-template>
      </cr-panel>
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-text-area-control
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
    
        <ng-template [ngSwitchCase]="''manage-mailing-category-partner''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category-partner'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''0900AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
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
    [subTemplateId]="''0A00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="''0B00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-mailing-category-contact-person''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category-contact-person'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''0900AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="''7BCDF1FD-535C-ED11-8E5E-4CCC6A2BB6D6''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    [subTemplateId]="''BBD312CC-5B5C-ED11-8E5E-4CCC6A2BB6D6''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    [subTemplateId]="''0E00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
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
        </div>', '2022-11-25 10:18:07.5700000 +00:00', 17, N'N', 'ec1e081e-a8b4-470c-b7df-2ec25bb552c4', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('9f2dcb25-645c-ed11-8e5e-4ccc6a2bb6d6', '9d2dcb25-645c-ed11-8e5e-4ccc6a2bb6d6', 2, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
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
          <div class="row "><div class=''col-md-2''><cr-control-edit
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
        [containFields]=''["bDay","eMail","passport","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
></cr-dropdown-smart-control></div></div><div class="row "><div class=''col-md-2''><cr-control-edit
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
></cr-control-edit></div></div><div class="row "><div class=''col-md-6''><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-edit></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-datepicker></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
></cr-control-datepicker></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-dropdown-smart-control
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
</div></div><div class="row "><div class=''col-md-2''><cr-numeric-control
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
></cr-numeric-control></div></div><div class="row "><div class=''col-md-2''><cr-numeric-control
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
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
        [expanded]="self.panelsViewState?.[''udf''] ?? false"
        (expandedChange)="self.panelStateChange(''udf'', $event)"
        [titleTranslateKey]="true ? ''PARTNER.PANEL.UDF'' : null"
        [title]="true ? null : ''UDF''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''udf''"
        [containFields]=''[]''
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
    [getUserFieldsDefault$]="self.getUserFieldsDefault$"
    [class]=''""''
></cr-udf-list>
<ng-template #noAccess>
    <div class="cr-no-read-access p-2">
        {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
    </div>
</ng-template>
        </ng-template>
      </cr-panel>
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
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-text-area-control
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
    
        <ng-template [ngSwitchCase]="''manage-mailing-category-partner''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category-partner'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''0900AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
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
    [subTemplateId]="''0A00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="''0B00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-mailing-category-contact-person''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-mailing-category-contact-person'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''0900AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-addresses-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-addresses-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-addresses-details-dynamic
    [subTemplateId]="''7BCDF1FD-535C-ED11-8E5E-4CCC6A2BB6D6''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    [subTemplateId]="''BBD312CC-5B5C-ED11-8E5E-4CCC6A2BB6D6''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-partner-contact-persons-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-partner-contact-persons-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-partner-contact-persons-details
    [subTemplateId]="''0E00AEBD-4251-ED11-8E5D-4CCC6A2BB6D6''"
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
        </div>', '2022-11-25 10:18:07.5700000 +00:00', 17, N'N', 'd8770d2b-5680-4f0c-80fe-e2ae637ccf0e', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('9b16e302-a86c-ed11-835f-02f176033ddb', '9a16e302-a86c-ed11-835f-02f176033ddb', 1, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.item">
            <cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNewItem ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''ITEM.DETAILS.HEADER.ITEM_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isNewItem || self.item.isDeleted"
    [elementName]="''edit:Item_details.Item_code''"
    [(dataValue)]="self.item.code"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''code''"
    [validator]="self.validator"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''ITEM.DETAILS.HEADER.SHORT_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || self.item.isDeleted"
    [elementName]="''edit:Item_details.Display_name''"
    [(dataValue)]="self.item.shortDisplayName"
    (dataValueChange)="self.changeTitle()"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''shortDisplayName''"
    [validator]="self.validator"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.MODEL''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Short_print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.shortPrintName"
    [validator]="self.validator"
    [validationField]="''shortPrintName''"
    [translateKeys]="''ITEM.DETAILS.HEADER.SHORT_PRINT_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.item_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.item_id_PUT)
    }"

    [(dataValue)]="self.item.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.HEADER.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE1''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE1''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE2''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE2''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE3''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE3''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''כללי''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["itemHierarchyValues.1","supplierCatNum","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''1''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''2''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''3''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''4''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''5''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.MANUFACTURE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Supplier_cat_num''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.supplierCatNum"
    [validator]="self.validator"
    [validationField]="''supplierCatNum''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.SUPPLIER_CAT_NUM''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.item.isDeleted || false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.BRAND''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.PREFERRED_SUPPLIER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-dropdown 
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
    [translateKeys]="''ITEM.DETAILS.GENERAL.UNIT_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-multi-select-smart-control
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
    [translateKeys]="''ITEM.DETAILS.GENERAL.COLLECTIONS''"
    [dataLabel]="''''"
    [class]=''""''
></cr-multi-select-smart-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.TAX_GROUP''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Active''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeActiveCheckbox($event)"
    [(dataValue)]="self.item.isValid"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validTo"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeFrozenCheckbox($event)"
    [(dataValue)]="self.item.isFrozen"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenFrom"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN_TO''"
    [class]=''""'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Sale_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.saleItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.SALE_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Inventory_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.inventoryItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.INVENTORY_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.PURCHASE_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Refundable''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.refundable"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.REFUNDABLE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Download_to_pos''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.downloadToPOS"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DOWNLOAD_TO_POS''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Consignment_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isConsignmentItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.CONSIGNMENT_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Gift_card_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.giftCard"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.GIFT_CARD_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Distribution_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.distributionRecommendation"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DISTRIBUTION_RECOMMENDATION''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseRecommendation"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.PURCHASE_RECOMMENDATION''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Direct_supply''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.directSupply"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DIRECT_SUPPLY''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.History''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.history"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.HISTORY''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Allow_zero_price''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isAllowZeroPrice"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ALLOW_ZERO_PRICE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row "><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_modifier''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__item_modifier_group_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isModifier"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.IS_MODIFIER''"
    [isDisabled]="self.item.isComboMeal || self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_combo_meal''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__combo_meal_category_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isComboMeal"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.IS_COMBO_MEAL''"
    [isDisabled]="self.item.isModifier || self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''properties''] ?? false"
        (expandedChange)="self.panelStateChange(''properties'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PROPERTIES'' : null"
        [title]="true ? null : ''מאפיינים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''properties''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new cr-grid-no-inner-borders">
    <cr-item-property-list 
        [itemDetails]="self.item" 
        [class]=''""''
    ></cr-item-property-list>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''price''] ?? false"
        (expandedChange)="self.panelStateChange(''price'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PRICES'' : null"
        [title]="true ? null : ''מחירים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''price''"
        [containFields]=''["prices"]''
      >
        <ng-template crPanelContent>
          <div class="cr-item-price-wrapper">
    <cr-item-price-list
        *ngIf="(self.EndpointName.item__item_price_GET | endpointAccessGrantedPipe) &&
            (self.EndpointName.item__item_property_value_id_dropdown_GET | endpointAccessGrantedPipe); else noAccess"
        [editable]="self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        [item]="self.item"
        [panelsViewState]="self.panelsViewState"
        [class]=''""''
    ></cr-item-price-list>

    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''barcodes''] ?? false"
        (expandedChange)="self.panelStateChange(''barcodes'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.BARCODES'' : null"
        [title]="true ? null : ''ברקודים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''barcodes''"
        [containFields]=''["barcodes"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-barcodes-list
        [isNew]="self.isNewItem"
        [item]="self.item"
        [editable]="self.isNewItem
            ? (self.EndpointName.item_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        (barcodesChanged)="self.onBarcodesChanged()"
        [class]=''""''
    ></cr-item-barcodes-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''userFields''] ?? false"
        (expandedChange)="self.panelStateChange(''userFields'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.USER_FIELDS'' : null"
        [title]="true ? null : ''UDF he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''userFields''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]=''""''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''basketImage''] ?? false"
        (expandedChange)="self.panelStateChange(''basketImage'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.IMAGE_BASKET'' : null"
        [title]="true ? null : ''Images he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''basketImage''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-image-basket-list
        [imageBasketId]="self.item.imageBasketSetId"
        [isDeleted]="self.item.isDeleted"
        [refreshList$]="self.itemImageBasketContentListRefresh$"
        (onCreateItem)="self.onCreateImageBasketPopup()"
        (onUpdateItem)="self.onUpdateImageBasketPopup($event)"
        (onDeleteItem)="self.onDeleteImageBasketContent($event)"
        [class]=''""''
    ></cr-item-image-basket-list>
</div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''image-content-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''image-content-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-image-basket-details
    [subTemplateId]="''D98D4CF1-1D6B-ED11-835F-02F176033DDB''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="true"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessCreate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_POST | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (create)="self.onCreateImageBasketContent($event)"
></cr-image-basket-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''image-content-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''image-content-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-image-basket-details
    [subTemplateId]="''38B2C3FD-1D6B-ED11-835F-02F176033DDB''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="false"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessDelete: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_id_DELETE | endpointAccessGrantedPipe),
        isAccessUpdate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_id_PUT | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (update)="self.onUpdateImageBasketContent($event)"
    (delete)="self.onDeleteImageBasketContentPopUp($event)"
    (refresh)="self.onRefreshImageBasketContent()"
></cr-image-basket-details>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-29 09:54:20.0400000 +00:00', 5, N'N', '2412f6e9-3ca9-472e-a486-40f7646a5279', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('9c16e302-a86c-ed11-835f-02f176033ddb', '9a16e302-a86c-ed11-835f-02f176033ddb', 2, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.item">
            <cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNewItem ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''ITEM.DETAILS.HEADER.ITEM_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isNewItem || self.item.isDeleted"
    [elementName]="''edit:Item_details.Item_code''"
    [(dataValue)]="self.item.code"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''code''"
    [validator]="self.validator"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''ITEM.DETAILS.HEADER.SHORT_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || self.item.isDeleted"
    [elementName]="''edit:Item_details.Display_name''"
    [(dataValue)]="self.item.shortDisplayName"
    (dataValueChange)="self.changeTitle()"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''shortDisplayName''"
    [validator]="self.validator"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.MODEL''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Short_print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.shortPrintName"
    [validator]="self.validator"
    [validationField]="''shortPrintName''"
    [translateKeys]="''ITEM.DETAILS.HEADER.SHORT_PRINT_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.item_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.item_id_PUT)
    }"

    [(dataValue)]="self.item.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.HEADER.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE1''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE1''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE2''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE2''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE3''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE3''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["itemHierarchyValues.1","supplierCatNum","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''1''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''2''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''3''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''4''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''5''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.MANUFACTURE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Supplier_cat_num''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.supplierCatNum"
    [validator]="self.validator"
    [validationField]="''supplierCatNum''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.SUPPLIER_CAT_NUM''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.item.isDeleted || false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.BRAND''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.PREFERRED_SUPPLIER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-dropdown 
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
    [translateKeys]="''ITEM.DETAILS.GENERAL.UNIT_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-multi-select-smart-control
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
    [translateKeys]="''ITEM.DETAILS.GENERAL.COLLECTIONS''"
    [dataLabel]="''''"
    [class]=''""''
></cr-multi-select-smart-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.TAX_GROUP''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Active''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeActiveCheckbox($event)"
    [(dataValue)]="self.item.isValid"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validTo"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeFrozenCheckbox($event)"
    [(dataValue)]="self.item.isFrozen"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenFrom"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN_TO''"
    [class]=''""'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Sale_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.saleItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.SALE_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Inventory_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.inventoryItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.INVENTORY_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.PURCHASE_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Refundable''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.refundable"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.REFUNDABLE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Download_to_pos''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.downloadToPOS"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DOWNLOAD_TO_POS''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Consignment_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isConsignmentItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.CONSIGNMENT_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Gift_card_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.giftCard"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.GIFT_CARD_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Distribution_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.distributionRecommendation"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DISTRIBUTION_RECOMMENDATION''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseRecommendation"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.PURCHASE_RECOMMENDATION''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Direct_supply''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.directSupply"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DIRECT_SUPPLY''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.History''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.history"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.HISTORY''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Allow_zero_price''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isAllowZeroPrice"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ALLOW_ZERO_PRICE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row "><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_modifier''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__item_modifier_group_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isModifier"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.IS_MODIFIER''"
    [isDisabled]="self.item.isComboMeal || self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_combo_meal''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__combo_meal_category_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isComboMeal"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.IS_COMBO_MEAL''"
    [isDisabled]="self.item.isModifier || self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''properties''] ?? false"
        (expandedChange)="self.panelStateChange(''properties'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PROPERTIES'' : null"
        [title]="true ? null : ''Properties''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''properties''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new cr-grid-no-inner-borders">
    <cr-item-property-list 
        [itemDetails]="self.item" 
        [class]=''""''
    ></cr-item-property-list>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''price''] ?? false"
        (expandedChange)="self.panelStateChange(''price'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PRICES'' : null"
        [title]="true ? null : ''Prices''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''price''"
        [containFields]=''["prices"]''
      >
        <ng-template crPanelContent>
          <div class="cr-item-price-wrapper">
    <cr-item-price-list
        *ngIf="(self.EndpointName.item__item_price_GET | endpointAccessGrantedPipe) &&
            (self.EndpointName.item__item_property_value_id_dropdown_GET | endpointAccessGrantedPipe); else noAccess"
        [editable]="self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        [item]="self.item"
        [panelsViewState]="self.panelsViewState"
        [class]=''""''
    ></cr-item-price-list>

    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''barcodes''] ?? false"
        (expandedChange)="self.panelStateChange(''barcodes'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.BARCODES'' : null"
        [title]="true ? null : ''Barcodes''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''barcodes''"
        [containFields]=''["barcodes"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-barcodes-list
        [isNew]="self.isNewItem"
        [item]="self.item"
        [editable]="self.isNewItem
            ? (self.EndpointName.item_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        (barcodesChanged)="self.onBarcodesChanged()"
        [class]=''""''
    ></cr-item-barcodes-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''userFields''] ?? false"
        (expandedChange)="self.panelStateChange(''userFields'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.USER_FIELDS'' : null"
        [title]="true ? null : ''UDF''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''userFields''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]=''""''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''basketImage''] ?? false"
        (expandedChange)="self.panelStateChange(''basketImage'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.IMAGE_BASKET'' : null"
        [title]="true ? null : ''Images''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''basketImage''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-image-basket-list
        [imageBasketId]="self.item.imageBasketSetId"
        [isDeleted]="self.item.isDeleted"
        [refreshList$]="self.itemImageBasketContentListRefresh$"
        (onCreateItem)="self.onCreateImageBasketPopup()"
        (onUpdateItem)="self.onUpdateImageBasketPopup($event)"
        (onDeleteItem)="self.onDeleteImageBasketContent($event)"
        [class]=''""''
    ></cr-item-image-basket-list>
</div>
        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''image-content-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''image-content-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-image-basket-details
    [subTemplateId]="''D98D4CF1-1D6B-ED11-835F-02F176033DDB''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="true"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessCreate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_POST | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (create)="self.onCreateImageBasketContent($event)"
></cr-image-basket-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''image-content-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''image-content-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-image-basket-details
    [subTemplateId]="''38B2C3FD-1D6B-ED11-835F-02F176033DDB''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="false"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessDelete: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_id_DELETE | endpointAccessGrantedPipe),
        isAccessUpdate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_id_PUT | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (update)="self.onUpdateImageBasketContent($event)"
    (delete)="self.onDeleteImageBasketContentPopUp($event)"
    (refresh)="self.onRefreshImageBasketContent()"
></cr-image-basket-details>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-29 09:54:20.0400000 +00:00', 5, N'N', '6425bff2-8e32-4903-b19c-259ddac9ad47', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('7ce7709d-ca6d-ed11-835f-02f176033ddb', '7be7709d-ca6d-ed11-835f-02f176033ddb', 1, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''USER.LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filterExpanded''] ?? true"
        (expandedChange)="self.panelStateChange(''filterExpanded'', $event)"
        [titleTranslateKey]="true ? ''USER.LIST.FILTER.TITLE'' : null"
        [title]="true ? null : ''מסננים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filterExpanded''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.login"
    [elementName]="''edit:User_list.Login''"
    [translateKeys]="''USER.LIST.FILTER.LOGIN''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.firstName"
    [elementName]="''edit:User_list.First_name''"
    [translateKeys]="''USER.LIST.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.lastName"
    [elementName]="''edit:User_list.Last_name''"
    [translateKeys]="''USER.LIST.FILTER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''USER.LIST.FILTER.USER_ROLE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.mobile"
    [elementName]="''edit:User_list.Mobile''"
    [translateKeys]="''USER.LIST.FILTER.MOBILE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.email"
    [elementName]="''edit:User_list.Email''"
    [translateKeys]="''USER.LIST.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-6''></div><div class=''col-md-2''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''COMMON.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.filter.showDeleted"
    [elementName]="''checkbox:User_list.Deleted''"
></cr-checkbox-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.RESET''"
    [classArray]=''["k-mr-5","cr-custom-button-reset","d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    [type]="''button''"
    (buttonClickEvent)="self.resetFilter()"
></cr-button-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="(self.EndpointName.user_GET | endpointAccessGrantedPipe)"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''USER.LIST.GRID.TITLE'' : null"
        [title]="true ? null : ''משתמשים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataSource]="self.dataSource"
        [elementName]="''edit-grid-server-paging:User_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [dataCacheName]="''user-grid-cache''"
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-12-01 09:21:31.2266667 +00:00', 6, N'N', '6da748d3-ad4b-4290-95dc-08ed287f1eee', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('7de7709d-ca6d-ed11-835f-02f176033ddb', '7be7709d-ca6d-ed11-835f-02f176033ddb', 2, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''USER.LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filterExpanded''] ?? true"
        (expandedChange)="self.panelStateChange(''filterExpanded'', $event)"
        [titleTranslateKey]="true ? ''USER.LIST.FILTER.TITLE'' : null"
        [title]="true ? null : ''Selection criteria''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filterExpanded''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.login"
    [elementName]="''edit:User_list.Login''"
    [translateKeys]="''USER.LIST.FILTER.LOGIN''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.firstName"
    [elementName]="''edit:User_list.First_name''"
    [translateKeys]="''USER.LIST.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.lastName"
    [elementName]="''edit:User_list.Last_name''"
    [translateKeys]="''USER.LIST.FILTER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''USER.LIST.FILTER.USER_ROLE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control>
</div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.mobile"
    [elementName]="''edit:User_list.Mobile''"
    [translateKeys]="''USER.LIST.FILTER.MOBILE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [(dataValue)]="self.filter.email"
    [elementName]="''edit:User_list.Email''"
    [translateKeys]="''USER.LIST.FILTER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"    
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-6''></div><div class=''col-md-2''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''COMMON.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.filter.showDeleted"
    [elementName]="''checkbox:User_list.Deleted''"
></cr-checkbox-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.RESET''"
    [classArray]=''["k-mr-5","cr-custom-button-reset","d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    [type]="''button''"
    (buttonClickEvent)="self.resetFilter()"
></cr-button-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="(self.EndpointName.user_GET | endpointAccessGrantedPipe)"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''USER.LIST.GRID.TITLE'' : null"
        [title]="true ? null : ''Users''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataSource]="self.dataSource"
        [elementName]="''edit-grid-server-paging:User_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [dataCacheName]="''user-grid-cache''"
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-12-01 09:21:31.2266667 +00:00', 6, N'N', '17eca020-d075-4f6c-8b0f-398f400d39a0', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('b285c5b2-d26d-ed11-835f-02f176033ddb', 'b185c5b2-d26d-ed11-835f-02f176033ddb', 1, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.userDetail">
            <cr-title-header
    [titleTranslateKey]="''USER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValue"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''cr-alternate-shadow''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.LOGIN''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-edit-password-control
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
    [translateKeys]="''USER.DETAILS.HEADER.PASSWORD''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
    [showPasswordButton]="false"
    [showPasswordPlaceholder]="true"
></cr-edit-password-control>
</div><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''></div><div class=''col-md-2''></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Phone''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.phone"
    [translateKeys]="''USER.DETAILS.HEADER.PHONE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Mobile''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.mobile"
    [translateKeys]="''USER.DETAILS.HEADER.MOBILE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.email"
    [validator]="self.validator"
    [validationField]="''email''"
    [translateKeys]="''USER.DETAILS.HEADER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''></div><div class=''col-md-2''></div><div class=''col-md-2''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''roles''] ?? false"
        (expandedChange)="self.panelStateChange(''roles'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.ROLES.PANEL_TITLE'' : null"
        [title]="true ? null : ''Roles he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''roles''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row cr-row-padding-revert"><div class=''col-md-12''>
        <div [class]="''cr-col-content-align-right cr-col-no-padding''">
            <cr-button-control
    *ngIf="(self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))
        && (self.EndpointName.user__role_GET | endpointAccessGrantedPipe) && !self.userDetail.isDeleted"
    (buttonClickEvent)="self.editRoleClick()"
    [buttonTemplateType]="''icon-button''"
    [text]="''''"
    [textTranslateKey]="''''"
    [classArray]=''""''
    [width]="''30''"
    [height]="''30''"
    [icon]="''icon-edit''"
></cr-button-control>
        </div></div><div class=''col-md-6''></div></div><div class="cr-grid-wrapper-new">
    <cr-user-details-role-list [roles]="self.userDetail.roles" [class]=''undefined''></cr-user-details-role-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''permissions''] ?? false"
        (expandedChange)="self.panelStateChange(''permissions'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.PERMISSIONS.PANEL_TITLE'' : null"
        [title]="true ? null : ''Permissions he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''permissions''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-user-permission-tree
    *ngIf="(self.EndpointName.user__function_tree_list_GET | endpointAccessGrantedPipe)"
    [userId]="self.userId"
    [isNew]="self.isNew"
    [(selected)]="self.userDetail.functions"
    [editable]="!self.userDetail.isDeleted && (self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))"
    [class]=''""''
></cr-user-permission-tree>

        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''user-roles''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''user-roles'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-user-details-role-manager
    [subTemplateId]="''1BB629A9-D26D-ED11-835F-02F176033DDB''"
    [roles]="self.userDetail.roles"
    (changeSelectedRoles)="self.onChangeSelectedRoles($event)"
></cr-user-details-role-manager>

          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-12-01 09:22:08.1766667 +00:00', 14, N'N', '9022d790-20af-4654-8a3d-de9d43c4bb4d', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('b385c5b2-d26d-ed11-835f-02f176033ddb', 'b185c5b2-d26d-ed11-835f-02f176033ddb', 2, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.userDetail">
            <cr-title-header
    [titleTranslateKey]="''USER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValue"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''cr-alternate-shadow''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.LOGIN''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-edit-password-control
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
    [translateKeys]="''USER.DETAILS.HEADER.PASSWORD''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
    [showPasswordButton]="false"
    [showPasswordPlaceholder]="true"
></cr-edit-password-control>
</div><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''></div><div class=''col-md-2''></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Phone''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.phone"
    [translateKeys]="''USER.DETAILS.HEADER.PHONE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Mobile''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.mobile"
    [translateKeys]="''USER.DETAILS.HEADER.MOBILE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.email"
    [validator]="self.validator"
    [validationField]="''email''"
    [translateKeys]="''USER.DETAILS.HEADER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''></div><div class=''col-md-2''></div><div class=''col-md-2''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''roles''] ?? false"
        (expandedChange)="self.panelStateChange(''roles'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.ROLES.PANEL_TITLE'' : null"
        [title]="true ? null : ''Roles''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''roles''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row cr-row-padding-revert"><div class=''col-md-12''>
        <div [class]="''cr-col-content-align-right cr-col-no-padding''">
            <cr-button-control
    *ngIf="(self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))
        && (self.EndpointName.user__role_GET | endpointAccessGrantedPipe) && !self.userDetail.isDeleted"
    (buttonClickEvent)="self.editRoleClick()"
    [buttonTemplateType]="''icon-button''"
    [text]="''''"
    [textTranslateKey]="''''"
    [classArray]=''""''
    [width]="''30''"
    [height]="''30''"
    [icon]="''icon-edit''"
></cr-button-control>
        </div></div><div class=''col-md-6''></div></div><div class="cr-grid-wrapper-new">
    <cr-user-details-role-list [roles]="self.userDetail.roles" [class]=''undefined''></cr-user-details-role-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''permissions''] ?? false"
        (expandedChange)="self.panelStateChange(''permissions'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.PERMISSIONS.PANEL_TITLE'' : null"
        [title]="true ? null : ''Permissions''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''permissions''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-user-permission-tree
    *ngIf="(self.EndpointName.user__function_tree_list_GET | endpointAccessGrantedPipe)"
    [userId]="self.userId"
    [isNew]="self.isNew"
    [(selected)]="self.userDetail.functions"
    [editable]="!self.userDetail.isDeleted && (self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))"
    [class]=''""''
></cr-user-permission-tree>

        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''user-roles''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''user-roles'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-user-details-role-manager
    [subTemplateId]="''1BB629A9-D26D-ED11-835F-02F176033DDB''"
    [roles]="self.userDetail.roles"
    (changeSelectedRoles)="self.onChangeSelectedRoles($event)"
></cr-user-details-role-manager>

          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-12-01 09:22:08.1766667 +00:00', 14, N'N', '934d72ab-ae12-4fb0-b9e9-19519d2992c9', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('b96145e6-d26d-ed11-835f-02f176033ddb', 'b86145e6-d26d-ed11-835f-02f176033ddb', 1, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.userDetail">
            <cr-title-header
    [titleTranslateKey]="''USER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValue"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''cr-alternate-shadow''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.LOGIN''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-edit-password-control
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
    [translateKeys]="''USER.DETAILS.HEADER.PASSWORD''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
    [showPasswordButton]="false"
    [showPasswordPlaceholder]="false"
></cr-edit-password-control>
</div><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''></div><div class=''col-md-2''></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Phone''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.phone"
    [translateKeys]="''USER.DETAILS.HEADER.PHONE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Mobile''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.mobile"
    [translateKeys]="''USER.DETAILS.HEADER.MOBILE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.email"
    [validator]="self.validator"
    [validationField]="''email''"
    [translateKeys]="''USER.DETAILS.HEADER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''></div><div class=''col-md-2''></div><div class=''col-md-2''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''roles''] ?? false"
        (expandedChange)="self.panelStateChange(''roles'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.ROLES.PANEL_TITLE'' : null"
        [title]="true ? null : ''Roles he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''roles''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row cr-row-padding-revert"><div class=''col-md-12''>
        <div [class]="''cr-col-content-align-right cr-col-no-padding''">
            <cr-button-control
    *ngIf="(self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))
        && (self.EndpointName.user__role_GET | endpointAccessGrantedPipe) && !self.userDetail.isDeleted"
    (buttonClickEvent)="self.editRoleClick()"
    [buttonTemplateType]="''icon-button''"
    [text]="''''"
    [textTranslateKey]="''''"
    [classArray]=''""''
    [width]="''30''"
    [height]="''30''"
    [icon]="''icon-edit''"
></cr-button-control>
        </div></div><div class=''col-md-6''></div></div><div class="cr-grid-wrapper-new">
    <cr-user-details-role-list [roles]="self.userDetail.roles" [class]=''undefined''></cr-user-details-role-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''permissions''] ?? false"
        (expandedChange)="self.panelStateChange(''permissions'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.PERMISSIONS.PANEL_TITLE'' : null"
        [title]="true ? null : ''Permissions he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''permissions''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-user-permission-tree
    *ngIf="(self.EndpointName.user__function_tree_list_GET | endpointAccessGrantedPipe)"
    [userId]="self.userId"
    [isNew]="self.isNew"
    [(selected)]="self.userDetail.functions"
    [editable]="!self.userDetail.isDeleted && (self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))"
    [class]=''""''
></cr-user-permission-tree>

        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''user-roles''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''user-roles'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-user-details-role-manager
    [subTemplateId]="''1BB629A9-D26D-ED11-835F-02F176033DDB''"
    [roles]="self.userDetail.roles"
    (changeSelectedRoles)="self.onChangeSelectedRoles($event)"
></cr-user-details-role-manager>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-29 09:51:41.3700000 +00:00', 6, N'N', 'a3e37907-1706-4ade-b5d6-d1fa42acd617', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('ba6145e6-d26d-ed11-835f-02f176033ddb', 'b86145e6-d26d-ed11-835f-02f176033ddb', 2, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.userDetail">
            <cr-title-header
    [titleTranslateKey]="''USER.DETAILS.TITLE''"
    [title]="''''"
    [titleValue]="self.titleValue"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''cr-alternate-shadow''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.LOGIN''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-edit-password-control
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
    [translateKeys]="''USER.DETAILS.HEADER.PASSWORD''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
    [showPasswordButton]="false"
    [showPasswordPlaceholder]="false"
></cr-edit-password-control>
</div><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
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
    [translateKeys]="''USER.DETAILS.HEADER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''></div><div class=''col-md-2''></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Phone''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.phone"
    [translateKeys]="''USER.DETAILS.HEADER.PHONE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Mobile''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.mobile"
    [translateKeys]="''USER.DETAILS.HEADER.MOBILE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:User_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew
            ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.userDetail.email"
    [validator]="self.validator"
    [validationField]="''email''"
    [translateKeys]="''USER.DETAILS.HEADER.EMAIL''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.userDetail.isDeleted || false"
></cr-control-edit>
</div><div class=''col-md-2''></div><div class=''col-md-2''></div><div class=''col-md-2''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''roles''] ?? false"
        (expandedChange)="self.panelStateChange(''roles'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.ROLES.PANEL_TITLE'' : null"
        [title]="true ? null : ''Roles''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''roles''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row cr-row-padding-revert"><div class=''col-md-12''>
        <div [class]="''cr-col-content-align-right cr-col-no-padding''">
            <cr-button-control
    *ngIf="(self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))
        && (self.EndpointName.user__role_GET | endpointAccessGrantedPipe) && !self.userDetail.isDeleted"
    (buttonClickEvent)="self.editRoleClick()"
    [buttonTemplateType]="''icon-button''"
    [text]="''''"
    [textTranslateKey]="''''"
    [classArray]=''""''
    [width]="''30''"
    [height]="''30''"
    [icon]="''icon-edit''"
></cr-button-control>
        </div></div><div class=''col-md-6''></div></div><div class="cr-grid-wrapper-new">
    <cr-user-details-role-list [roles]="self.userDetail.roles" [class]=''undefined''></cr-user-details-role-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''permissions''] ?? false"
        (expandedChange)="self.panelStateChange(''permissions'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.PERMISSIONS.PANEL_TITLE'' : null"
        [title]="true ? null : ''Permissions''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''permissions''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-user-permission-tree
    *ngIf="(self.EndpointName.user__function_tree_list_GET | endpointAccessGrantedPipe)"
    [userId]="self.userId"
    [isNew]="self.isNew"
    [(selected)]="self.userDetail.functions"
    [editable]="!self.userDetail.isDeleted && (self.isNew
        ? (self.EndpointName.user_POST | endpointAccessGrantedPipe)
        : (self.EndpointName.user_id_PUT | endpointAccessGrantedPipe))"
    [class]=''""''
></cr-user-permission-tree>

        </ng-template>
      </cr-panel>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''user-roles''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''user-roles'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-user-details-role-manager
    [subTemplateId]="''1BB629A9-D26D-ED11-835F-02F176033DDB''"
    [roles]="self.userDetail.roles"
    (changeSelectedRoles)="self.onChangeSelectedRoles($event)"
></cr-user-details-role-manager>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-29 09:51:41.9100000 +00:00', 6, N'N', '86536739-95f4-4af0-8ba8-6fc784c9bd7e', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('786ee9fb-586f-ed11-835f-02f176033ddb', '776ee9fb-586f-ed11-835f-02f176033ddb', 1, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''EMPLOYEE.LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filter''] ?? true"
        (expandedChange)="self.panelStateChange(''filter'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.FILTER.TITLE'' : null"
        [title]="true ? null : ''חתך הגדרות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filter''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
    [(dataValue)]="self.employeeFilterRequest.number"
    [elementName]="''numeric:Employee_list.Number''"
    [autoCorrectMinMax]="true"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''EMPLOYEE.FILTER.NUMBER''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''EMPLOYEE.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.employeeFilterRequest.firstName"
    [elementName]="''edit:Employee_list.First_name''"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''EMPLOYEE.FILTER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.employeeFilterRequest.lastName"
    [elementName]="''edit:Employee_list.Last_name''"
></cr-control-edit>
</div><div class=''col-md-2''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.FILTER.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.employeeFilterRequest.isShowDeleted"
    [elementName]="''checkbox:Employee_list.Deleted''"
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.FILTER.SHOW_FROZEN''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.employeeFilterRequest.isShowFrozen"
    [elementName]="''checkbox:Employee_list.Frozen''"
></cr-checkbox-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.LIST.GRID_TITLE'' : null"
        [title]="true ? null : ''עובד''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataCacheName]="''EmployeeListGrid''"
        [dataSource]="self.gridData"
        [elementName]="''edit-grid-server-paging:Employee_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-12-01 09:28:12.5900000 +00:00', 6, N'N', '740257f3-d2ad-456f-8f3e-8053b45a93f9', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('796ee9fb-586f-ed11-835f-02f176033ddb', '776ee9fb-586f-ed11-835f-02f176033ddb', 2, N'', N'', N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''EMPLOYEE.LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filter''] ?? true"
        (expandedChange)="self.panelStateChange(''filter'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.FILTER.TITLE'' : null"
        [title]="true ? null : ''Selection Criteria''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filter''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
    [(dataValue)]="self.employeeFilterRequest.number"
    [elementName]="''numeric:Employee_list.Number''"
    [autoCorrectMinMax]="true"
    [isDisabled]="false"
    [dataLabel]="''''" 
    [translateKeys]="''EMPLOYEE.FILTER.NUMBER''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''EMPLOYEE.FILTER.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.employeeFilterRequest.firstName"
    [elementName]="''edit:Employee_list.First_name''"
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''EMPLOYEE.FILTER.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.employeeFilterRequest.lastName"
    [elementName]="''edit:Employee_list.Last_name''"
></cr-control-edit>
</div><div class=''col-md-2''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.FILTER.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.employeeFilterRequest.isShowDeleted"
    [elementName]="''checkbox:Employee_list.Deleted''"
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [dataLabel]="''''"
    [translateKeys]="''EMPLOYEE.FILTER.SHOW_FROZEN''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.employeeFilterRequest.isShowFrozen"
    [elementName]="''checkbox:Employee_list.Frozen''"
></cr-checkbox-control></div><div class=''col-md-2''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.LIST.GRID_TITLE'' : null"
        [title]="true ? null : ''Employee''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataCacheName]="''EmployeeListGrid''"
        [dataSource]="self.gridData"
        [elementName]="''edit-grid-server-paging:Employee_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel>
      </ng-template>
    </ng-template>
    
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-12-01 09:28:12.5933333 +00:00', 6, N'N', '8efc3819-198a-404b-841a-87dbd9861cc0', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('ee819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd4ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
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
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit 
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
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit 
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
        </div>', '2022-11-29 09:51:43.9100000 +00:00', 188, N'N', '30e1909c-bacf-4470-8a9f-7efd13eff393', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('ef819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'd4ae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
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
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit 
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
></cr-control-edit>
</div><div class=''col-md-2''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit 
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
        </div>', '2022-11-29 09:51:44.9266667 +00:00', 188, N'N', '45daf931-912a-478b-858e-e5a0e0766638', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('fc819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'dbae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 1, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''TAX_GROUP.LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.LIST.FILTER.TITLE'' : null"
        [title]="true ? null : ''Selection criteria he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''TAX_GROUP.LIST.FILTER.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Tax_group_list.Code''"
    [(dataValue)]="self.taxGroupFilterRequest.code"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''TAX_GROUP.LIST.FILTER.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Tax_group_list.Name''"
    [(dataValue)]="self.taxGroupFilterRequest.name"
></cr-control-edit></div><div class=''col-md-8''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="(self.EndpointName.tax_group_GET | endpointAccessGrantedPipe)"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.LIST.GRID.TITLE'' : null"
        [title]="true ? null : ''VAT Groups he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        </div>', '2022-11-29 09:51:43.0333333 +00:00', 25, N'N', 'a8b054a1-1118-4b01-a94c-9cd356b3b4fc', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('fd819b05-4351-ed11-8e5d-4ccc6a2bb6d6', 'dbae82e8-4251-ed11-8e5d-4ccc6a2bb6d6', 2, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''TAX_GROUP.LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.LIST.FILTER.TITLE'' : null"
        [title]="true ? null : ''Selection criteria''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''TAX_GROUP.LIST.FILTER.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Tax_group_list.Code''"
    [(dataValue)]="self.taxGroupFilterRequest.code"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''TAX_GROUP.LIST.FILTER.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Tax_group_list.Name''"
    [(dataValue)]="self.taxGroupFilterRequest.name"
></cr-control-edit></div><div class=''col-md-8''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="(self.EndpointName.tax_group_GET | endpointAccessGrantedPipe)"
></cr-button-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.LIST.GRID.TITLE'' : null"
        [title]="true ? null : ''VAT Groups''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        </div>', '2022-11-29 09:51:43.0333333 +00:00', 25, N'N', '276da99c-bd5d-4073-a4dc-e747cec4047b', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('c60ebe22-f164-ed11-8e60-4ccc6a2bb6d6', 'c50ebe22-f164-ed11-8e60-4ccc6a2bb6d6', 1, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''ITEM.LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filter''] ?? true"
        (expandedChange)="self.panelStateChange(''filter'', $event)"
        [titleTranslateKey]="true ? ''ITEM.FILTER.FILTER'' : null"
        [title]="true ? null : ''חתך הגדרות''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filter''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit 
    [elementName]="''edit:Item_list.Code''"
    [translateKeys]="''ITEM.FILTER.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.itemFilterRequest.code"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [elementName]="''edit:Item_list.Display_name''"
    [translateKeys]="''ITEM.FILTER.SHORT_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.itemFilterRequest.shortDisplayName"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [elementName]="''edit:Item_list.Barcode''"
    [translateKeys]="''ITEM.FILTER.BARCODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.itemFilterRequest.barcode"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [elementName]="''edit:Item_list.Model_code''"
    [translateKeys]="''ITEM.FILTER.MODEL_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.itemFilterRequest.itemModelCode"
></cr-control-edit></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_list.Deleted''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.FILTER.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.itemFilterRequest.showDeleted"
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_list.Frozen''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.FILTER.SHOW_FROZEN''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.itemFilterRequest.showFrozen"
></cr-checkbox-control></div></div><div class="row undefined"><div class=''col-md-12''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="(self.EndpointName.item_GET | endpointAccessGrantedPipe)"
></cr-button-control></div><div class=''col-md-1''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.LIST.TITLE'' : null"
        [title]="true ? null : ''רשימת פריטים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_list.Grid''"
        [dataCacheName]="''ItemListGrid''"
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataSource]="self.gridData"
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
        </div>', '2022-11-29 20:22:50.5300000 +00:00', 21, N'N', 'c250b7c1-185d-4406-b3a9-ebbf00834f51', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('c70ebe22-f164-ed11-8e60-4ccc6a2bb6d6', 'c50ebe22-f164-ed11-8e60-4ccc6a2bb6d6', 2, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        <cr-title-header
    [titleTranslateKey]="''ITEM.LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filter''] ?? true"
        (expandedChange)="self.panelStateChange(''filter'', $event)"
        [titleTranslateKey]="true ? ''ITEM.FILTER.FILTER'' : null"
        [title]="true ? null : ''Selection criteria''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filter''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit 
    [elementName]="''edit:Item_list.Code''"
    [translateKeys]="''ITEM.FILTER.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.itemFilterRequest.code"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [elementName]="''edit:Item_list.Display_name''"
    [translateKeys]="''ITEM.FILTER.SHORT_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.itemFilterRequest.shortDisplayName"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [elementName]="''edit:Item_list.Barcode''"
    [translateKeys]="''ITEM.FILTER.BARCODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.itemFilterRequest.barcode"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [elementName]="''edit:Item_list.Model_code''"
    [translateKeys]="''ITEM.FILTER.MODEL_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [(dataValue)]="self.itemFilterRequest.itemModelCode"
></cr-control-edit></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_list.Deleted''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.FILTER.SHOW_DELETED''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.itemFilterRequest.showDeleted"
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_list.Frozen''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.FILTER.SHOW_FROZEN''"
    [isDisabled]="false"
    [class]=''""''
    [(dataValue)]="self.itemFilterRequest.showFrozen"
></cr-checkbox-control></div></div><div class="row undefined"><div class=''col-md-12''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="(self.EndpointName.item_GET | endpointAccessGrantedPipe)"
></cr-button-control></div><div class=''col-md-1''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.LIST.TITLE'' : null"
        [title]="true ? null : ''Items''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_list.Grid''"
        [dataCacheName]="''ItemListGrid''"
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataSource]="self.gridData"
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
        </div>', '2022-11-29 20:22:50.5300000 +00:00', 21, N'N', '21df00b4-a2f9-4c8e-9788-52adf9d1c86d', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2e660511-fc64-ed11-8e60-4ccc6a2bb6d6', '2d660511-fc64-ed11-8e60-4ccc6a2bb6d6', 1, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.item">
            <cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNewItem ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''ITEM.DETAILS.HEADER.ITEM_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isNewItem || self.item.isDeleted"
    [elementName]="''edit:Item_details.Item_code''"
    [(dataValue)]="self.item.code"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''code''"
    [validator]="self.validator"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''ITEM.DETAILS.HEADER.SHORT_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || self.item.isDeleted"
    [elementName]="''edit:Item_details.Display_name''"
    [(dataValue)]="self.item.shortDisplayName"
    (dataValueChange)="self.changeTitle()"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''shortDisplayName''"
    [validator]="self.validator"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.MODEL''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Short_print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.shortPrintName"
    [validator]="self.validator"
    [validationField]="''shortPrintName''"
    [translateKeys]="''ITEM.DETAILS.HEADER.SHORT_PRINT_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.item_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.item_id_PUT)
    }"

    [(dataValue)]="self.item.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.HEADER.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Active''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeActiveCheckbox($event)"
    [(dataValue)]="self.item.isValid"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE1''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE1''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE2''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE2''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE3''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE3''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''כללי''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["itemHierarchyValues.1","supplierCatNum","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''1''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''2''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''3''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''4''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''5''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.MANUFACTURE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Supplier_cat_num''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.supplierCatNum"
    [validator]="self.validator"
    [validationField]="''supplierCatNum''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.SUPPLIER_CAT_NUM''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.item.isDeleted || false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.BRAND''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.PREFERRED_SUPPLIER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-dropdown 
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
    [translateKeys]="''ITEM.DETAILS.GENERAL.UNIT_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-multi-select-smart-control
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
    [translateKeys]="''ITEM.DETAILS.GENERAL.COLLECTIONS''"
    [dataLabel]="''''"
    [class]=''""''
></cr-multi-select-smart-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.TAX_GROUP''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Active''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeActiveCheckbox($event)"
    [(dataValue)]="self.item.isValid"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validTo"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeFrozenCheckbox($event)"
    [(dataValue)]="self.item.isFrozen"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenFrom"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN_TO''"
    [class]=''""'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Sale_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.saleItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.SALE_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Inventory_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.inventoryItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.INVENTORY_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.PURCHASE_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Refundable''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.refundable"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.REFUNDABLE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Download_to_pos''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.downloadToPOS"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DOWNLOAD_TO_POS''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Consignment_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isConsignmentItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.CONSIGNMENT_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Gift_card_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.giftCard"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.GIFT_CARD_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Distribution_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.distributionRecommendation"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DISTRIBUTION_RECOMMENDATION''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseRecommendation"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.PURCHASE_RECOMMENDATION''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Direct_supply''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.directSupply"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DIRECT_SUPPLY''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.History''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.history"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.HISTORY''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Allow_zero_price''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isAllowZeroPrice"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ALLOW_ZERO_PRICE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row "><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_modifier''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__item_modifier_group_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isModifier"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.IS_MODIFIER''"
    [isDisabled]="self.item.isComboMeal || self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_combo_meal''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__combo_meal_category_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isComboMeal"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.IS_COMBO_MEAL''"
    [isDisabled]="self.item.isModifier || self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''properties''] ?? false"
        (expandedChange)="self.panelStateChange(''properties'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PROPERTIES'' : null"
        [title]="true ? null : ''מאפיינים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''properties''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new cr-grid-no-inner-borders">
    <cr-item-property-list 
        [itemDetails]="self.item" 
        [class]=''""''
    ></cr-item-property-list>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''price''] ?? false"
        (expandedChange)="self.panelStateChange(''price'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PRICES'' : null"
        [title]="true ? null : ''מחירים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''price''"
        [containFields]=''["prices"]''
      >
        <ng-template crPanelContent>
          <div class="cr-item-price-wrapper">
    <cr-item-price-list
        *ngIf="(self.EndpointName.item__item_price_GET | endpointAccessGrantedPipe) &&
            (self.EndpointName.item__item_property_value_id_dropdown_GET | endpointAccessGrantedPipe); else noAccess"
        [editable]="self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        [item]="self.item"
        [panelsViewState]="self.panelsViewState"
        [class]=''""''
    ></cr-item-price-list>

    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''barcodes''] ?? false"
        (expandedChange)="self.panelStateChange(''barcodes'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.BARCODES'' : null"
        [title]="true ? null : ''ברקודים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''barcodes''"
        [containFields]=''["barcodes"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-barcodes-list
        [isNew]="self.isNewItem"
        [item]="self.item"
        [editable]="self.isNewItem
            ? (self.EndpointName.item_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        (barcodesChanged)="self.onBarcodesChanged()"
        [class]=''""''
    ></cr-item-barcodes-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''specialPrices''] ?? false"
        (expandedChange)="self.panelStateChange(''specialPrices'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.SPECIAL_PRICES_LIST'' : null"
        [title]="true ? null : ''רשימת מחירים מיוחדים''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''specialPrices''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-special-prices-list
        (onCellClickEvent)="self.openSpecialPrice($event)"
        (onChangePageEvent)="self.changePageEvent($event)"
        [specialPrices]="self.specialPricesList"
        [class]=''""''
    ></cr-item-special-prices-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''promotions''] ?? false"
        (expandedChange)="self.panelStateChange(''promotions'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PROMOTIONS'' : null"
        [title]="true ? null : ''Promotions''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''promotions''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-promotion-list
        [itemId]="self.item?.id"
        [class]=''""''
    ></cr-item-promotion-list>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''userFields''] ?? false"
        (expandedChange)="self.panelStateChange(''userFields'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.USER_FIELDS'' : null"
        [title]="true ? null : ''UDF he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''userFields''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]=''""''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''basketImage''] ?? false"
        (expandedChange)="self.panelStateChange(''basketImage'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.IMAGE_BASKET'' : null"
        [title]="true ? null : ''Images he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''basketImage''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-image-basket-list
        [imageBasketId]="self.item.imageBasketSetId"
        [isDeleted]="self.item.isDeleted"
        [refreshList$]="self.itemImageBasketContentListRefresh$"
        (onCreateItem)="self.onCreateImageBasketPopup()"
        (onUpdateItem)="self.onUpdateImageBasketPopup($event)"
        (onDeleteItem)="self.onDeleteImageBasketContent($event)"
        [class]=''""''
    ></cr-item-image-basket-list>
</div>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="!self.item.isModifier">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''modifiers''] ?? false"
        (expandedChange)="self.panelStateChange(''modifiers'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.MODIFIERS_LIST'' : null"
        [title]="true ? null : ''Modifiers groups he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''modifiers''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-item-modifier
        [itemId]="self.item.id"
        [isDeleted]="self.item.isDeleted"
        (onOpenModifiersGroupList)="self.onOpenModifiersGroupListPopup()"
        (onOpenModifiersTemplateList)="self.onOpenModifiersTemplateListPopup()"
        (onSelectModifierGroups)="self.onSelectModifierGroups($event)"
        [class]=''""''
    ></cr-item-item-modifier>
</div>
        </ng-template>
      </cr-panel>
        </ng-template>
        <ng-template [ngIf]="self.item.isComboMeal">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''comboMeal''] ?? false"
        (expandedChange)="self.panelStateChange(''comboMeal'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.COMBO_MEAL_LIST'' : null"
        [title]="true ? null : ''Combo meal categories he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''comboMeal''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-combo-meal-category-list
        [itemId]="self.item.id"
        [isDeleted]="self.item.isDeleted"
        (openComboMealCategoryDetails)="self.onOpenComboMealDetailsPopup($event)"
        (openComboMealCategoryNew)="self.onOpenComboMealNewPopup()"
        [class]=''""''
    ></cr-item-combo-meal-category-list>
</div>
        </ng-template>
      </cr-panel>
        </ng-template>
        <div [class]="''cr-footer-view''">
            <div class="cr-footer-flex-wrapper" [class]=''""''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="''''"
            [dataLabelTranslateKeys]="''COMMON.CREATION_DATE''"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.item?.createDate | stringToDate | date:self.currentDateFormatPattern">
        </cr-text-field-control>
    </div>
</div>
<div class="cr-footer-flex-wrapper" [class]=''""''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="''''"
            [dataLabelTranslateKeys]="''COMMON.UPDATE_DATE''"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.item?.updateDate | stringToDate | date:self.currentDateFormatPattern">
        </cr-text-field-control>
    </div>
</div>

        </div>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''image-content-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''image-content-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-image-basket-details
    [subTemplateId]="''D98D4CF1-1D6B-ED11-835F-02F176033DDB''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="true"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessCreate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_POST | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (create)="self.onCreateImageBasketContent($event)"
></cr-image-basket-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''image-content-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''image-content-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-image-basket-details
    [subTemplateId]="''38B2C3FD-1D6B-ED11-835F-02F176033DDB''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="false"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessDelete: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_id_DELETE | endpointAccessGrantedPipe),
        isAccessUpdate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_id_PUT | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (update)="self.onUpdateImageBasketContent($event)"
    (delete)="self.onDeleteImageBasketContentPopUp($event)"
    (refresh)="self.onRefreshImageBasketContent()"
></cr-image-basket-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''modifiers-template-list''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''modifiers-template-list'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-item-modifier-template-list
    [subTemplateId]="''2F906084-986C-ED11-835F-02F176033DDB''"
    [selected]="self.cache.selectedModifierGroups"
    (onSelection)="self.onSelectModifierGroups($event)"
    (onUpdate)="self.onUpdateModifierGroups($event)"
></cr-item-item-modifier-template-list>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''modifiers-group-list''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''modifiers-group-list'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-item-modifier-group-list
    [subTemplateId]="''A7F3165F-996C-ED11-835F-02F176033DDB''"
    [selected]="self.cache.selectedModifierGroups"
    (onSelection)="self.onSelectModifierGroups($event)"
    (onUpdate)="self.onUpdateModifierGroups($event)"
></cr-item-item-modifier-group-list>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''combo-meal-category-new''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''combo-meal-category-new'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-combo-meal-category-details
    [subTemplateId]="''945629E2-A86C-ED11-835F-02F176033DDB''"
    [isNew]="self.cache.isNewComboMealCategory"
    [comboMealCategoryId]="self.cache.selectedComboMealCategory"
    [itemId]="self.item.id"
    [isDeleted]="self.item.isDeleted"
    (closePopup)="self.onComboMealPopupClose($event)"
    (selectFromCatalog)="self.onComboMealItemSelectFromCatalog()"
    (selectFromBasket)="self.onComboMealItemSelectFromBasket()"
></cr-item-combo-meal-category-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''combo-meal-category-details''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''combo-meal-category-details'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-combo-meal-category-details
    [subTemplateId]="''D0B506ED-A86C-ED11-835F-02F176033DDB''"
    [isNew]="self.cache.isNewComboMealCategory"
    [comboMealCategoryId]="self.cache.selectedComboMealCategory"
    [itemId]="self.item.id"
    [isDeleted]="self.item.isDeleted"
    (closePopup)="self.onComboMealPopupClose($event)"
    (selectFromCatalog)="self.onComboMealItemSelectFromCatalog()"
    (selectFromBasket)="self.onComboMealItemSelectFromBasket()"
></cr-item-combo-meal-category-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''combo-meal-category-item-select-from-catalog''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''combo-meal-category-item-select-from-catalog'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-combo-meal-category-select-from-catalog
    [subTemplateId]="''720E3302-E96C-ED11-835F-02F176033DDB''"
    (closePopup)="self.onComboMealItemSelectFromCatalogPopupClose()"
    (confirm)="self.onComboMealItemSelectFromCatalogPopupClose()"
></cr-item-combo-meal-category-select-from-catalog>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''combo-meal-category-item-select-from-basket''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''combo-meal-category-item-select-from-basket'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-combo-meal-category-select-from-basket
    [subTemplateId]="''9804E012-E96C-ED11-835F-02F176033DDB''"
    (closePopup)="self.onComboMealItemSelectFromBasketPopupClose()"
    (confirm)="self.onComboMealItemSelectFromBasketPopupClose()"
    (openItemBasket)="self.onOpenComboMealItemBasketDetails($event)"
></cr-item-combo-meal-category-select-from-basket>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-combo-meal-baskets-item''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-combo-meal-baskets-item'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-basket-population-edit
    [subTemplateId]="''B315D290-F36C-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelPopulation()"
    (confirm)="self.savePopulation($event)"
    [basket]="self.comboMealItemBasket.baskets[self.comboMealItemBasket.selectedBasketIndex]?.populationDetails"
    [cacheName]="''itemPopulationDropdown''"
    [lastExcludeNumber]="self.comboMealItemBasket.lastExcludeNumber"
    [lastIncludeNumber]="self.comboMealItemBasket.lastIncludeNumber"
    [propertyDropdownFn]="self.itemCriteriaPropertiesDropdownFn"
    [titleContentTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_CONTENT_POPULATION''"
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_ITEM_POPULATION''"
    [typeDropdownFn]="self.itemCriteriaDropdownFn"
    [valueDropdownFn]="self.itemCriteriaValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-basket-population-edit>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-combo-meal-baskets-item''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-combo-meal-baskets-item'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-basket-population-edit
    [subTemplateId]="''5C4DEB84-F36C-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelPopulation()"
    (confirm)="self.createPopulation($event)"
    [cacheName]="''promotionPopulationDropdown''"
    [lastExcludeNumber]="self.comboMealItemBasket.lastExcludeNumber"
    [lastIncludeNumber]="self.comboMealItemBasket.lastIncludeNumber"
    [propertyDropdownFn]="self.itemCriteriaPropertiesDropdownFn"
    [titleContentTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_CONTENT_POPULATION''"
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_POPULATION''"
    [typeDropdownFn]="self.itemCriteriaDropdownFn"
    [valueDropdownFn]="self.itemCriteriaValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-basket-population-edit>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-30 07:58:52.2766667 +00:00', 80, N'N', 'b14b1c0d-1ec9-48b5-a386-8d561c6c921e', 1, NULL)
INSERT INTO [dbo].[WebViewTemplateName] ([ID], [WebViewTemplateID], [LanguageID], [BookmarkName], [BookmarkDescription], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2f660511-fc64-ed11-8e60-4ccc6a2bb6d6', '2d660511-fc64-ed11-8e60-4ccc6a2bb6d6', 2, NULL, NULL, N'
        <div class=''cr-popup-content-wrapper'' [class.cr-popup-is-shown]=''self.popupTab.tabs.length > 1''>
          <cr-popup-tabs
            [popupTabs]=''self.popupTab.tabs''
            [activePopup]=''self.popupTab.activeTabIndex''
            (closePopup)=''self.removePopupTab($event)''
            (changeActive)=''self.changeActiveTab($event)''
          ></cr-popup-tabs>
          <div class=''cr-details-inner-container''>
            <ng-container *ngFor=''let tab of self.popupTab.tabs; index as i;''>
              <ng-container [ngSwitch]=''tab.type''>
                
    <ng-template [ngSwitchCase]="''general''">
      <ng-template [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''general'' && self.popupTab.activeTabIndex == i">
        <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
        
        <ng-template [ngIf]="self.item">
            <cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNewItem ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''ITEM.DETAILS.HEADER.ITEM_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isNewItem || self.item.isDeleted"
    [elementName]="''edit:Item_details.Item_code''"
    [(dataValue)]="self.item.code"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''code''"
    [validator]="self.validator"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit 
    [translateKeys]="''ITEM.DETAILS.HEADER.SHORT_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || self.item.isDeleted"
    [elementName]="''edit:Item_details.Display_name''"
    [(dataValue)]="self.item.shortDisplayName"
    (dataValueChange)="self.changeTitle()"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''shortDisplayName''"
    [validator]="self.validator"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.MODEL''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Short_print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.shortPrintName"
    [validator]="self.validator"
    [validationField]="''shortPrintName''"
    [translateKeys]="''ITEM.DETAILS.HEADER.SHORT_PRINT_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.item_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.item_id_PUT)
    }"

    [(dataValue)]="self.item.registrationDate"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.HEADER.REGISTRATION_DATE''"
    [class]=''""'' 
    [isDisabled]="self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Active''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeActiveCheckbox($event)"
    [(dataValue)]="self.item.isValid"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE1''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE1''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE2''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE2''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_TYPE3''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.HEADER.METRIC_VALUE3''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? false"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["itemHierarchyValues.1","supplierCatNum","validFrom","validTo","frozenFrom","frozenTo"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''1''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''2''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''3''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''4''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''''"
    [label]="true ? self.levelLabels?.levelLabels[''5''] : ''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.MANUFACTURE''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Supplier_cat_num''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.supplierCatNum"
    [validator]="self.validator"
    [validationField]="''supplierCatNum''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.SUPPLIER_CAT_NUM''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.item.isDeleted || false"
></cr-control-edit></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.BRAND''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.PREFERRED_SUPPLIER''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-2''><cr-control-dropdown 
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
    [translateKeys]="''ITEM.DETAILS.GENERAL.UNIT_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-2''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-multi-select-smart-control
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
    [translateKeys]="''ITEM.DETAILS.GENERAL.COLLECTIONS''"
    [dataLabel]="''''"
    [class]=''""''
></cr-multi-select-smart-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-dropdown-smart-control
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
    [labelTranslateKey]="''ITEM.DETAILS.GENERAL.TAX_GROUP''"
    [label]="''''"
    [class]=''""''
></cr-dropdown-smart-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Active''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeActiveCheckbox($event)"
    [(dataValue)]="self.item.isValid"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validTo"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ACTIVE_TO''"
    [class]=''""'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeFrozenCheckbox($event)"
    [(dataValue)]="self.item.isFrozen"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenFrom"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN_FROM''"
    [class]=''""'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || false"
></cr-control-datepicker></div><div class=''col-md-2''><cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.FROZEN_TO''"
    [class]=''""'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || false"
></cr-control-datepicker></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Sale_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.saleItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.SALE_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Inventory_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.inventoryItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.INVENTORY_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.PURCHASE_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Refundable''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.refundable"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.REFUNDABLE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Download_to_pos''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.downloadToPOS"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DOWNLOAD_TO_POS''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Consignment_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isConsignmentItem"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.CONSIGNMENT_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Gift_card_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.giftCard"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.GIFT_CARD_ITEM''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Distribution_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.distributionRecommendation"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DISTRIBUTION_RECOMMENDATION''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseRecommendation"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.PURCHASE_RECOMMENDATION''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Direct_supply''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.directSupply"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.DIRECT_SUPPLY''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.History''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.history"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.HISTORY''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Allow_zero_price''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isAllowZeroPrice"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.ALLOW_ZERO_PRICE''"
    [isDisabled]="self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div><div class="row "><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_modifier''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__item_modifier_group_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isModifier"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.IS_MODIFIER''"
    [isDisabled]="self.item.isComboMeal || self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-2''><cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_combo_meal''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__combo_meal_category_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isComboMeal"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.GENERAL.IS_COMBO_MEAL''"
    [isDisabled]="self.item.isModifier || self.item.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''properties''] ?? false"
        (expandedChange)="self.panelStateChange(''properties'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PROPERTIES'' : null"
        [title]="true ? null : ''Properties''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''properties''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new cr-grid-no-inner-borders">
    <cr-item-property-list 
        [itemDetails]="self.item" 
        [class]=''""''
    ></cr-item-property-list>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''price''] ?? false"
        (expandedChange)="self.panelStateChange(''price'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PRICES'' : null"
        [title]="true ? null : ''Prices''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''price''"
        [containFields]=''["prices"]''
      >
        <ng-template crPanelContent>
          <div class="cr-item-price-wrapper">
    <cr-item-price-list
        *ngIf="(self.EndpointName.item__item_price_GET | endpointAccessGrantedPipe) &&
            (self.EndpointName.item__item_property_value_id_dropdown_GET | endpointAccessGrantedPipe); else noAccess"
        [editable]="self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        [item]="self.item"
        [panelsViewState]="self.panelsViewState"
        [class]=''""''
    ></cr-item-price-list>

    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''barcodes''] ?? false"
        (expandedChange)="self.panelStateChange(''barcodes'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.BARCODES'' : null"
        [title]="true ? null : ''Barcodes''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''barcodes''"
        [containFields]=''["barcodes"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-barcodes-list
        [isNew]="self.isNewItem"
        [item]="self.item"
        [editable]="self.isNewItem
            ? (self.EndpointName.item_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        (barcodesChanged)="self.onBarcodesChanged()"
        [class]=''""''
    ></cr-item-barcodes-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''specialPrices''] ?? false"
        (expandedChange)="self.panelStateChange(''specialPrices'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.SPECIAL_PRICES_LIST'' : null"
        [title]="true ? null : ''Special prices list''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''specialPrices''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-special-prices-list
        (onCellClickEvent)="self.openSpecialPrice($event)"
        (onChangePageEvent)="self.changePageEvent($event)"
        [specialPrices]="self.specialPricesList"
        [class]=''""''
    ></cr-item-special-prices-list>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''promotions''] ?? false"
        (expandedChange)="self.panelStateChange(''promotions'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.PROMOTIONS'' : null"
        [title]="true ? null : ''Promotions''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''promotions''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-promotion-list
        [itemId]="self.item?.id"
        [class]=''""''
    ></cr-item-promotion-list>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''userFields''] ?? false"
        (expandedChange)="self.panelStateChange(''userFields'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.USER_FIELDS'' : null"
        [title]="true ? null : ''UDF''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''userFields''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
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
        [class]=''""''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''basketImage''] ?? false"
        (expandedChange)="self.panelStateChange(''basketImage'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.IMAGE_BASKET'' : null"
        [title]="true ? null : ''Images''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''basketImage''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-image-basket-list
        [imageBasketId]="self.item.imageBasketSetId"
        [isDeleted]="self.item.isDeleted"
        [refreshList$]="self.itemImageBasketContentListRefresh$"
        (onCreateItem)="self.onCreateImageBasketPopup()"
        (onUpdateItem)="self.onUpdateImageBasketPopup($event)"
        (onDeleteItem)="self.onDeleteImageBasketContent($event)"
        [class]=''""''
    ></cr-item-image-basket-list>
</div>
        </ng-template>
      </cr-panel>
        <ng-template [ngIf]="!self.item.isModifier">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''modifiers''] ?? false"
        (expandedChange)="self.panelStateChange(''modifiers'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.MODIFIERS_LIST'' : null"
        [title]="true ? null : ''Modifiers groups''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''modifiers''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-item-modifier
        [itemId]="self.item.id"
        [isDeleted]="self.item.isDeleted"
        (onOpenModifiersGroupList)="self.onOpenModifiersGroupListPopup()"
        (onOpenModifiersTemplateList)="self.onOpenModifiersTemplateListPopup()"
        (onSelectModifierGroups)="self.onSelectModifierGroups($event)"
        [class]=''""''
    ></cr-item-item-modifier>
</div>
        </ng-template>
      </cr-panel>
        </ng-template>
        <ng-template [ngIf]="self.item.isComboMeal">
            
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''comboMeal''] ?? false"
        (expandedChange)="self.panelStateChange(''comboMeal'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.PANEL.COMBO_MEAL_LIST'' : null"
        [title]="true ? null : ''Combo meal categories''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''comboMeal''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-item-combo-meal-category-list
        [itemId]="self.item.id"
        [isDeleted]="self.item.isDeleted"
        (openComboMealCategoryDetails)="self.onOpenComboMealDetailsPopup($event)"
        (openComboMealCategoryNew)="self.onOpenComboMealNewPopup()"
        [class]=''""''
    ></cr-item-combo-meal-category-list>
</div>
        </ng-template>
      </cr-panel>
        </ng-template>
        <div [class]="''cr-footer-view''">
            <div class="cr-footer-flex-wrapper" [class]=''""''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="''''"
            [dataLabelTranslateKeys]="''COMMON.CREATION_DATE''"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.item?.createDate | stringToDate | date:self.currentDateFormatPattern">
        </cr-text-field-control>
    </div>
</div>
<div class="cr-footer-flex-wrapper" [class]=''""''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="''''"
            [dataLabelTranslateKeys]="''COMMON.UPDATE_DATE''"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.item?.updateDate | stringToDate | date:self.currentDateFormatPattern">
        </cr-text-field-control>
    </div>
</div>

        </div>
        </ng-template>
      </ng-template>
    </ng-template>
    
        <ng-template [ngSwitchCase]="''image-content-create''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''image-content-create'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-image-basket-details
    [subTemplateId]="''D98D4CF1-1D6B-ED11-835F-02F176033DDB''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="true"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessCreate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_POST | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (create)="self.onCreateImageBasketContent($event)"
></cr-image-basket-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''image-content-update''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''image-content-update'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-image-basket-details
    [subTemplateId]="''38B2C3FD-1D6B-ED11-835F-02F176033DDB''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="false"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessDelete: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_id_DELETE | endpointAccessGrantedPipe),
        isAccessUpdate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_id_PUT | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (update)="self.onUpdateImageBasketContent($event)"
    (delete)="self.onDeleteImageBasketContentPopUp($event)"
    (refresh)="self.onRefreshImageBasketContent()"
></cr-image-basket-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''modifiers-template-list''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''modifiers-template-list'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-item-modifier-template-list
    [subTemplateId]="''2F906084-986C-ED11-835F-02F176033DDB''"
    [selected]="self.cache.selectedModifierGroups"
    (onSelection)="self.onSelectModifierGroups($event)"
    (onUpdate)="self.onUpdateModifierGroups($event)"
></cr-item-item-modifier-template-list>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''modifiers-group-list''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''modifiers-group-list'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-item-modifier-group-list
    [subTemplateId]="''A7F3165F-996C-ED11-835F-02F176033DDB''"
    [selected]="self.cache.selectedModifierGroups"
    (onSelection)="self.onSelectModifierGroups($event)"
    (onUpdate)="self.onUpdateModifierGroups($event)"
></cr-item-item-modifier-group-list>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''combo-meal-category-new''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''combo-meal-category-new'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-combo-meal-category-details
    [subTemplateId]="''945629E2-A86C-ED11-835F-02F176033DDB''"
    [isNew]="self.cache.isNewComboMealCategory"
    [comboMealCategoryId]="self.cache.selectedComboMealCategory"
    [itemId]="self.item.id"
    [isDeleted]="self.item.isDeleted"
    (closePopup)="self.onComboMealPopupClose($event)"
    (selectFromCatalog)="self.onComboMealItemSelectFromCatalog()"
    (selectFromBasket)="self.onComboMealItemSelectFromBasket()"
></cr-item-combo-meal-category-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''combo-meal-category-details''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''combo-meal-category-details'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-combo-meal-category-details
    [subTemplateId]="''D0B506ED-A86C-ED11-835F-02F176033DDB''"
    [isNew]="self.cache.isNewComboMealCategory"
    [comboMealCategoryId]="self.cache.selectedComboMealCategory"
    [itemId]="self.item.id"
    [isDeleted]="self.item.isDeleted"
    (closePopup)="self.onComboMealPopupClose($event)"
    (selectFromCatalog)="self.onComboMealItemSelectFromCatalog()"
    (selectFromBasket)="self.onComboMealItemSelectFromBasket()"
></cr-item-combo-meal-category-details>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''combo-meal-category-item-select-from-catalog''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''combo-meal-category-item-select-from-catalog'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-combo-meal-category-select-from-catalog
    [subTemplateId]="''720E3302-E96C-ED11-835F-02F176033DDB''"
    (closePopup)="self.onComboMealItemSelectFromCatalogPopupClose()"
    (confirm)="self.onComboMealItemSelectFromCatalogPopupClose()"
></cr-item-combo-meal-category-select-from-catalog>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''combo-meal-category-item-select-from-basket''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''combo-meal-category-item-select-from-basket'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-item-combo-meal-category-select-from-basket
    [subTemplateId]="''9804E012-E96C-ED11-835F-02F176033DDB''"
    (closePopup)="self.onComboMealItemSelectFromBasketPopupClose()"
    (confirm)="self.onComboMealItemSelectFromBasketPopupClose()"
    (openItemBasket)="self.onOpenComboMealItemBasketDetails($event)"
></cr-item-combo-meal-category-select-from-basket>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''manage-combo-meal-baskets-item''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''manage-combo-meal-baskets-item'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-basket-population-edit
    [subTemplateId]="''B315D290-F36C-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelPopulation()"
    (confirm)="self.savePopulation($event)"
    [basket]="self.comboMealItemBasket.baskets[self.comboMealItemBasket.selectedBasketIndex]?.populationDetails"
    [cacheName]="''itemPopulationDropdown''"
    [lastExcludeNumber]="self.comboMealItemBasket.lastExcludeNumber"
    [lastIncludeNumber]="self.comboMealItemBasket.lastIncludeNumber"
    [propertyDropdownFn]="self.itemCriteriaPropertiesDropdownFn"
    [titleContentTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_CONTENT_POPULATION''"
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_ITEM_POPULATION''"
    [typeDropdownFn]="self.itemCriteriaDropdownFn"
    [valueDropdownFn]="self.itemCriteriaValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-basket-population-edit>
          </ng-template>
        </ng-template>
      
        <ng-template [ngSwitchCase]="''create-combo-meal-baskets-item''">
          <ng-template
            [ngIf]="self.popupTab.tabs[self.popupTab.activeTabIndex].type == ''create-combo-meal-baskets-item'' && self.popupTab.activeTabIndex == i">
            <div *ngIf=''self.popupTab.activeTabIndex != self.popupTab.tabs.length - 1'' class=''cr-popup-blocker''></div>
            <cr-basket-population-edit
    [subTemplateId]="''5C4DEB84-F36C-ED11-835F-02F176033DDB''"
    (cancel)="self.onCancelPopulation()"
    (confirm)="self.createPopulation($event)"
    [cacheName]="''promotionPopulationDropdown''"
    [lastExcludeNumber]="self.comboMealItemBasket.lastExcludeNumber"
    [lastIncludeNumber]="self.comboMealItemBasket.lastIncludeNumber"
    [propertyDropdownFn]="self.itemCriteriaPropertiesDropdownFn"
    [titleContentTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_CONTENT_POPULATION''"
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_POPULATION''"
    [typeDropdownFn]="self.itemCriteriaDropdownFn"
    [valueDropdownFn]="self.itemCriteriaValuesDropdownFn"
    [basketTypeFn$]="self.basketTypeFn"
></cr-basket-population-edit>
          </ng-template>
        </ng-template>
      
              </ng-container>
            </ng-container>
          </div>
        </div>', '2022-11-30 07:58:52.2766667 +00:00', 80, N'N', 'cf7aa7fd-71fd-46f2-a075-3c678e6da039', 1, NULL)

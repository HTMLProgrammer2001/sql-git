INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('e59851da-f46f-ed11-835f-02f176033ddb', '22c5ae2c-f06f-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_EDIT''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Seller in stores population basket he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-seller-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-seller-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 14:49:45.2500000 +00:00', 2, N'N', 'f6f2b99a-e914-4ae4-8447-8b5044c15aeb', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('e69851da-f46f-ed11-835f-02f176033ddb', '22c5ae2c-f06f-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_EDIT''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Seller in stores population basket''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-seller-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-seller-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 14:49:45.2500000 +00:00', 2, N'N', '350311db-67a5-48b4-a0f3-07dafabf1489', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('14165d32-f56f-ed11-835f-02f176033ddb', 'b8a0c44a-f06f-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CREATE''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Seller in stores population basket he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-seller-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-seller-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 14:50:43.0985364 +00:00', 1, N'N', '616b68de-def7-4602-854f-7ca0069dceb2', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('15165d32-f56f-ed11-835f-02f176033ddb', 'b8a0c44a-f06f-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CREATE''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.SELLER_IN_STORES.MANAGE_BASKET.TITLE_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Seller in stores population basket''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-seller-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-seller-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 14:50:43.0985364 +00:00', 1, N'N', '0ebccbac-d399-4cf1-9c11-b94f9f8cdb95', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('e5d2a916-fb6f-ed11-835f-02f176033ddb', 'be44ca58-f06f-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_EDIT''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Access level population basket he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-access-level-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        [accessLevelDropdownFn]="self.accessLevelDropdownFn"
        [selectedValueAccessLevel]="self.selectedValueAccessLevel"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)">
    </cr-access-level-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 15:32:53.6056165 +00:00', 1, N'N', '82e52205-d765-4117-81ad-9eec4f361b6f', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('e6d2a916-fb6f-ed11-835f-02f176033ddb', 'be44ca58-f06f-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_EDIT''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Access level population basket''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-access-level-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        [accessLevelDropdownFn]="self.accessLevelDropdownFn"
        [selectedValueAccessLevel]="self.selectedValueAccessLevel"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)">
    </cr-access-level-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 15:32:53.6056165 +00:00', 1, N'N', '0f847446-a4e1-48af-971b-3f2374e82d3a', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('6bb0bd2d-fb6f-ed11-835f-02f176033ddb', 'bc281366-f06f-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CREATE''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Access level population basket he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-access-level-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        [accessLevelDropdownFn]="self.accessLevelDropdownFn"
        [selectedValueAccessLevel]="self.selectedValueAccessLevel"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)">
    </cr-access-level-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 15:33:32.3234027 +00:00', 1, N'N', 'e564f337-f1b2-47ce-98e2-e515191780c4', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('6cb0bd2d-fb6f-ed11-835f-02f176033ddb', 'bc281366-f06f-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CREATE''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.validator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''EMPLOYEE.DETAILS.ACCESS_LEVEL.MANAGE_BASKET.TITLE_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Access level population basket''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-access-level-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        [accessLevelDropdownFn]="self.accessLevelDropdownFn"
        [selectedValueAccessLevel]="self.selectedValueAccessLevel"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)">
    </cr-access-level-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 15:33:32.3234027 +00:00', 1, N'N', 'c528257d-46b1-429c-9789-d67f44e96b0e', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('dbb6a30d-296b-ed11-835f-02f176033ddb', 'd98d4cf1-1d6b-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [titleTranslateKey]="''COMMON.IMAGE_BASKET.DETAILS.TITLE''"
    [title]="''''"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-3''><div class="cr-text-center">
    <img
        [src]="self.image.cdnResourceUrl ? self.sanitizeUrl(self.image.cdnResourceUrl) : (self.image.cdnResourceUrl || ''/assets/images/no-image.svg'')"
        class="cr-image-basket-details-img"
        [alt]="self.image.description"
        [title]="self.image.name"
        [class]=''""''
    />
</div>
</div><div class=''col-md-9''><div class="row undefined"><div class=''col-md-6''><cr-control-edit
    [(dataValue)]="self.image.code"
    [elementName]="''edit:Image_basket_details.Code''"
    [validator]="self.validator"
    [validationField]="''code''"
    [maxlength]="50"
    [translateKeys]="''COMMON.IMAGE_BASKET.DETAILS.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''><cr-file-control
    [(dataValue)]="self.image.file"
    (dataValueChange)="self.onImageChange()"
    [allowedExtensions]="self.allowedUploadExtensions"
    [elementName]="''file:Image_basket_details.File''"
    [maxFileSize]="self.maxUploadFileSize"
    [validator]="self.validator"
    [validationField]="''file''"
    [isDisabled]="self.isNew ? !self._parsedPermissionSettings.isAccessCreate : !self._parsedPermissionSettings.isAccessUpdate"
    [translateKeys]="''COMMON.IMAGE_BASKET.DETAILS.FILE''" 
    [dataLabel]="''''"
    [dataDropzoneMessage]="''''"
    [dataDropzoneMessageTranslateKey]="''COMMON.IMAGE_BASKET.DETAILS.FILE_DROPZONE''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-file-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-6''><cr-translate-editor
    [elementName]="''edit:Image_basket_details.Name''"
    [languages]="self.languages"
    [(value)]="self.image.nameLanguageData"
    [validator]="self.validator"
    [validationField]="''nameLanguageData''"
    (valueChange)="self.onChangeTitle()"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.NAME''"
    [class]=''""''
    [isDisabled]="false"
></cr-translate-editor></div><div class=''col-md-6''><cr-translate-editor
    [elementName]="''edit:Image_basket_details.Description''"
    [languages]="self.languages"
    [(value)]="self.image.descriptionLanguageData"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.DESCRIPTION''"
    [class]=''""''
    [isDisabled]="false"
></cr-translate-editor></div></div></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-23 15:56:32.6066667 +00:00', 9, N'N', 'f02d1c5d-a6b0-48d4-83fb-d27a910b3f25', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('dcb6a30d-296b-ed11-835f-02f176033ddb', 'd98d4cf1-1d6b-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [titleTranslateKey]="''COMMON.IMAGE_BASKET.DETAILS.TITLE''"
    [title]="''''"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-3''><div class="cr-text-center">
    <img
        [src]="self.image.cdnResourceUrl ? self.sanitizeUrl(self.image.cdnResourceUrl) : (self.image.cdnResourceUrl || ''/assets/images/no-image.svg'')"
        class="cr-image-basket-details-img"
        [alt]="self.image.description"
        [title]="self.image.name"
        [class]=''""''
    />
</div>
</div><div class=''col-md-9''><div class="row undefined"><div class=''col-md-6''><cr-control-edit
    [(dataValue)]="self.image.code"
    [elementName]="''edit:Image_basket_details.Code''"
    [validator]="self.validator"
    [validationField]="''code''"
    [maxlength]="50"
    [translateKeys]="''COMMON.IMAGE_BASKET.DETAILS.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''><cr-file-control
    [(dataValue)]="self.image.file"
    (dataValueChange)="self.onImageChange()"
    [allowedExtensions]="self.allowedUploadExtensions"
    [elementName]="''file:Image_basket_details.File''"
    [maxFileSize]="self.maxUploadFileSize"
    [validator]="self.validator"
    [validationField]="''file''"
    [isDisabled]="self.isNew ? !self._parsedPermissionSettings.isAccessCreate : !self._parsedPermissionSettings.isAccessUpdate"
    [translateKeys]="''COMMON.IMAGE_BASKET.DETAILS.FILE''" 
    [dataLabel]="''''"
    [dataDropzoneMessage]="''''"
    [dataDropzoneMessageTranslateKey]="''COMMON.IMAGE_BASKET.DETAILS.FILE_DROPZONE''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-file-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-6''><cr-translate-editor
    [elementName]="''edit:Image_basket_details.Name''"
    [languages]="self.languages"
    [(value)]="self.image.nameLanguageData"
    [validator]="self.validator"
    [validationField]="''nameLanguageData''"
    (valueChange)="self.onChangeTitle()"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.NAME''"
    [class]=''""''
    [isDisabled]="false"
></cr-translate-editor></div><div class=''col-md-6''><cr-translate-editor
    [elementName]="''edit:Image_basket_details.Description''"
    [languages]="self.languages"
    [(value)]="self.image.descriptionLanguageData"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.DESCRIPTION''"
    [class]=''""''
    [isDisabled]="false"
></cr-translate-editor></div></div></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-23 15:56:32.6066667 +00:00', 9, N'N', '64a52136-8437-4001-ad55-080a56475c7d', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('56ad9952-9e6c-ed11-835f-02f176033ddb', 'a7f3165f-996c-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.PANEL_TITLE'' : null"
        [title]="true ? null : ''Selection criteria he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_group_list.Popup.Code''"
    [(dataValue)]="self.cache.filter.code"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.TEMPLATE_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_group_list.Popup.Name''"
    [(dataValue)]="self.cache.filter.name"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.TEMPLATE_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_group_list.Popup.Display_name''"
    [(dataValue)]="self.cache.filter.displayName"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.TEMPLATE_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''>
        <div [class]="''cr-search-button-column cr-align-right''">
            <div class="row cr-row-no-padding"><div class=''col-md-6''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.FILTER_CLEAR''"
    [classArray]=''["cr-custom-button-reset","k-mr-5"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    [type]="''button''"
    (buttonClickEvent)="self.onClearFilter()"
></cr-button-control></div><div class=''col-md-6''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.SEARCH''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.onSearch()"
></cr-button-control></div></div>
        </div></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filter''] ?? true"
        (expandedChange)="self.panelStateChange(''filter'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.MODIFIER_TEMPLATES'' : null"
        [title]="true ? null : ''Modifier templates he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filter''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Item_details.Modifier_group_list.Popup.Selected_groups''"
    [dataValue]="self.selected?.length"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.SELECTED_GROUPS''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-10''></div></div><div class="cr-grid-wrapper-new">
<cr-edit-grid-server-paging
    [fieldNameForMultiSelectColumnTranslateKey]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.USE''"
    [elementName]="''grid:Item_details.Modifier_group_list.Popup.Group_list_grid''"
    [dataCacheName]="''ItemModifierGroupListCache''"
    [columnSettings]="self.columnSettings"
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
    [class]="undefined"
></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-11-25 09:40:49.1200000 +00:00', 5, N'N', 'de7ef806-0586-456f-b15b-e80e888a6c27', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('57ad9952-9e6c-ed11-835f-02f176033ddb', 'a7f3165f-996c-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.PANEL_TITLE'' : null"
        [title]="true ? null : ''Selection criteria''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_group_list.Popup.Code''"
    [(dataValue)]="self.cache.filter.code"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.TEMPLATE_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_group_list.Popup.Name''"
    [(dataValue)]="self.cache.filter.name"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.TEMPLATE_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_group_list.Popup.Display_name''"
    [(dataValue)]="self.cache.filter.displayName"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.TEMPLATE_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''>
        <div [class]="''cr-search-button-column cr-align-right''">
            <div class="row cr-row-no-padding"><div class=''col-md-6''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.FILTER_CLEAR''"
    [classArray]=''["cr-custom-button-reset","k-mr-5"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    [type]="''button''"
    (buttonClickEvent)="self.onClearFilter()"
></cr-button-control></div><div class=''col-md-6''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.SEARCH''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.onSearch()"
></cr-button-control></div></div>
        </div></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filter''] ?? true"
        (expandedChange)="self.panelStateChange(''filter'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.MODIFIER_TEMPLATES'' : null"
        [title]="true ? null : ''Modifier templates''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filter''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Item_details.Modifier_group_list.Popup.Selected_groups''"
    [dataValue]="self.selected?.length"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.SELECTED_GROUPS''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-10''></div></div><div class="cr-grid-wrapper-new">
<cr-edit-grid-server-paging
    [fieldNameForMultiSelectColumnTranslateKey]="''ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.USE''"
    [elementName]="''grid:Item_details.Modifier_group_list.Popup.Group_list_grid''"
    [dataCacheName]="''ItemModifierGroupListCache''"
    [columnSettings]="self.columnSettings"
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
    [class]="undefined"
></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-11-25 09:40:49.1200000 +00:00', 5, N'N', '42be3a65-4568-4ee8-b33f-bd98e0173f40', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2352f05d-aa6c-ed11-835f-02f176033ddb', 'd0b506ed-a86c-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
        <ng-template [ngIf]="comboMealCategory">
            
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.code"
    [elementName]="''edit:Item_details.Combo_meal_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''code''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.name"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Item_details.Combo_meal_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.displayName"
    [elementName]="''edit:Item_details.Combo_meal_display_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''displayName''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''items''] ?? true"
        (expandedChange)="self.panelStateChange(''items'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.ITEMS.PANEL_TITLE'' : null"
        [title]="true ? null : ''Items he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''items''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          
        <div [class]="''row cr-row-padding-revert''">
            
        <div [class]="''col-lg-12 cr-col-content-align-right cr-col-no-padding d-flex''">
            <cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_basket''"
    (buttonClickEvent)="self.onSelectFromBasket()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_POST | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="''secondary-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_BASKET''"
    [classArray]=''["mr-2"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
></cr-button-control><cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_catalog''"
    (buttonClickEvent)="onSelectFromCatalog()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_GET | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="''secondary-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_CATALOG''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
></cr-button-control>
        </div>
        </div><div class="cr-grid-relative-wrapper">
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
            [columnSettings]="self.columnSettings"
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
            [class]=''undefined''
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
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''rules''] ?? true"
        (expandedChange)="self.panelStateChange(''rules'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.RULES.PANEL_TITLE'' : null"
        [title]="true ? null : ''Category rules he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''rules''"
        [containFields]=''["selectionMin","selectionMax"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.description"
    [elementName]="''edit:Item_details.Combo_meal_description''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.DESCRIPTION''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-6''><cr-image-single-picker
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
    [isDisabled]="false || self.isDeleted"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IMAGE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-image-single-picker>
</div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-4''><cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isAllowOnlyOneSelection"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_allow_one_selection''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IS_ALLOW_ONE_SELECTION''"
    [isDisabled]="self.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_minimum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMin"
    [validator]="self.validator"
    [validationField]="''selectionMin''"
    [isDisabled]="false || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MINIMUM''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="1" 
    [max]="1000"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_maximum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMax"
    [validator]="self.validator"
    [validationField]="''selectionMax''"
    [isDisabled]="false || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MAXIMUM''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="1" 
    [max]="1000"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isMoveToNextAfterLimit"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_move_to_next_after_limit''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IS_MOVE_TO_NEXT_AFTER_LIMIT''"
    [isDisabled]="self.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template></ng-container>', '2022-11-25 17:41:07.6566667 +00:00', 2, N'N', 'e07b3596-92e6-456d-a619-ca974e5baae8', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2452f05d-aa6c-ed11-835f-02f176033ddb', 'd0b506ed-a86c-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
        <ng-template [ngIf]="comboMealCategory">
            
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.code"
    [elementName]="''edit:Item_details.Combo_meal_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''code''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.name"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Item_details.Combo_meal_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.displayName"
    [elementName]="''edit:Item_details.Combo_meal_display_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''displayName''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''items''] ?? true"
        (expandedChange)="self.panelStateChange(''items'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.ITEMS.PANEL_TITLE'' : null"
        [title]="true ? null : ''Items''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''items''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          
        <div [class]="''row cr-row-padding-revert''">
            
        <div [class]="''col-lg-12 cr-col-content-align-right cr-col-no-padding d-flex''">
            <cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_basket''"
    (buttonClickEvent)="self.onSelectFromBasket()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_POST | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="''secondary-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_BASKET''"
    [classArray]=''["mr-2"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
></cr-button-control><cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_catalog''"
    (buttonClickEvent)="onSelectFromCatalog()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_GET | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="''secondary-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_CATALOG''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
></cr-button-control>
        </div>
        </div><div class="cr-grid-relative-wrapper">
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
            [columnSettings]="self.columnSettings"
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
            [class]=''undefined''
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
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''rules''] ?? true"
        (expandedChange)="self.panelStateChange(''rules'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.RULES.PANEL_TITLE'' : null"
        [title]="true ? null : ''Category rules''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''rules''"
        [containFields]=''["selectionMin","selectionMax"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.description"
    [elementName]="''edit:Item_details.Combo_meal_description''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.DESCRIPTION''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-6''><cr-image-single-picker
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
    [isDisabled]="false || self.isDeleted"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IMAGE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-image-single-picker>
</div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-4''><cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isAllowOnlyOneSelection"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_allow_one_selection''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IS_ALLOW_ONE_SELECTION''"
    [isDisabled]="self.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_minimum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMin"
    [validator]="self.validator"
    [validationField]="''selectionMin''"
    [isDisabled]="false || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MINIMUM''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="1" 
    [max]="1000"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_maximum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMax"
    [validator]="self.validator"
    [validationField]="''selectionMax''"
    [isDisabled]="false || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MAXIMUM''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="1" 
    [max]="1000"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div></div><div class="row "><div class=''col-md-4''><cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isMoveToNextAfterLimit"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_move_to_next_after_limit''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IS_MOVE_TO_NEXT_AFTER_LIMIT''"
    [isDisabled]="self.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template></ng-container>', '2022-11-25 17:41:07.6600000 +00:00', 2, N'N', 'bd214986-c76b-4a74-8e44-9c8a05b95b5d', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('d632460c-986d-ed11-835f-02f176033ddb', 'b315d290-f36c-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_ITEM_POPULATION''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.basketValidator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Item population basket''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-26 14:38:53.6737110 +00:00', 1, N'N', '97b07db6-f7db-4387-821b-541fdd0fb112', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('d732460c-986d-ed11-835f-02f176033ddb', 'b315d290-f36c-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_ITEM_POPULATION''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.basketValidator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Item population basket''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-26 14:38:53.6743365 +00:00', 1, N'N', 'a393ec89-397f-41af-8745-e13e06bd6e57', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('b133300c-116f-ed11-835f-02f176033ddb', '1bb629a9-d26d-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''USER.DETAILS.ROLE_MANAGER.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.ROLE_MANAGER.GRID.TITLE'' : null"
        [title]="true ? null : ''Roles he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:DETAILS.Details_roles_manager_grid''"
        [dataSource]="self.dataSource"
        [columnSettings]="self.columnSettings"
        [pageable]="true"
        [resizable]="true"
        (pageChangeEvent)="self.changePage($event)"
        [initialSelectedRows]="self.cache.initialSelectedRows"
        [uniqueField]="''id''"
        [allowMultiSelect]="true"
        [selectionDataMode]="''object''"
        [dataCacheName]="''UserDetailsRoleManagerGrid''"
        (selectionChanged)="self.onSelectionChange($event)"
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-11-28 18:17:43.8500000 +00:00', 2, N'N', '7fa70bd3-5ab6-44a5-89b7-fc24451884c9', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('b233300c-116f-ed11-835f-02f176033ddb', '1bb629a9-d26d-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''USER.DETAILS.ROLE_MANAGER.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''USER.DETAILS.ROLE_MANAGER.GRID.TITLE'' : null"
        [title]="true ? null : ''Roles''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:DETAILS.Details_roles_manager_grid''"
        [dataSource]="self.dataSource"
        [columnSettings]="self.columnSettings"
        [pageable]="true"
        [resizable]="true"
        (pageChangeEvent)="self.changePage($event)"
        [initialSelectedRows]="self.cache.initialSelectedRows"
        [uniqueField]="''id''"
        [allowMultiSelect]="true"
        [selectionDataMode]="''object''"
        [dataCacheName]="''UserDetailsRoleManagerGrid''"
        (selectionChanged)="self.onSelectionChange($event)"
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-11-28 18:17:43.8600000 +00:00', 2, N'N', 'd0072ab4-0308-4f3e-9d2b-16ea32c11a37', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-25 08:51:17.0566667 +00:00', 78, N'N', '8de5b116-8d9f-4ca3-85c1-2e4f5d7dfa67', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-25 08:51:26.1166667 +00:00', 78, N'N', 'df834de8-d89d-4382-aafa-15945645d7d4', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-21 11:44:55.3300000 +00:00', 74, N'N', 'bf459f52-3667-48f8-9ccb-4fbd62ee26d6', 1, NULL)
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
      </cr-panel></ng-container>', '2022-11-21 11:45:01.0733333 +00:00', 74, N'N', '5a3cdee4-cc7c-4031-a1a8-0b758884186e', 1, NULL)
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
    [validator]="self.validator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.validator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.validator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.validator"
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
    [validator]="self.validator"
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
      </cr-panel></ng-container>', '2022-11-21 11:27:26.4966667 +00:00', 45, N'N', '2ed0f492-b71b-44b3-b014-bb94b517ad27', 1, NULL)
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
    [validator]="self.validator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.validator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.validator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.validator"
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
    [validator]="self.validator"
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
      </cr-panel></ng-container>', '2022-11-21 11:27:26.4966667 +00:00', 45, N'N', 'cb8d1487-54ae-492c-acb3-5801bcd0d3b8', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-2''><cr-dropdown-smart-control
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
></cr-combobox-smart-control></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit 
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
      </cr-panel></ng-container>', '2022-11-25 10:17:30.9633333 +00:00', 15, N'N', '890e5594-2ea2-4c95-92f0-a1763f6d7519', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-2''><cr-dropdown-smart-control
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
></cr-combobox-smart-control></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit 
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
      </cr-panel></ng-container>', '2022-11-25 10:17:34.0533333 +00:00', 15, N'N', '3c8c9e64-1dfd-4181-9bff-e5dade524655', 1, NULL)
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
    [validator]="self.validator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.validator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.validator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.validator"
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
    [validator]="self.validator"
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
      </cr-panel></ng-container>', '2022-11-21 11:44:55.5566667 +00:00', 9, N'N', 'f6606845-c154-43a4-b40d-55a4f40e6912', 1, NULL)
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
    [validator]="self.validator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.validator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.validator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.validator"
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
    [validator]="self.validator"
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
      </cr-panel></ng-container>', '2022-11-21 11:45:01.4400000 +00:00', 9, N'N', '35b59307-c618-4005-a7d2-fc540bd2c6a7', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('28d5af8b-476b-ed11-835f-02f176033ddb', '38b2c3fd-1d6b-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [titleTranslateKey]="''COMMON.IMAGE_BASKET.DETAILS.TITLE''"
    [title]="''''"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-3''><div class="cr-text-center">
    <img
        [src]="self.image.cdnResourceUrl ? self.sanitizeUrl(self.image.cdnResourceUrl) : (self.image.cdnResourceUrl || ''/assets/images/no-image.svg'')"
        class="cr-image-basket-details-img"
        [alt]="self.image.description"
        [title]="self.image.name"
        [class]=''""''
    />
</div>
</div><div class=''col-md-9''><div class="row undefined"><div class=''col-md-6''><cr-control-edit
    [(dataValue)]="self.image.code"
    [elementName]="''edit:Image_basket_details.Code''"
    [validator]="self.validator"
    [validationField]="''code''"
    [maxlength]="50"
    [translateKeys]="''COMMON.IMAGE_BASKET.DETAILS.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''><cr-file-control
    [(dataValue)]="self.image.file"
    (dataValueChange)="self.onImageChange()"
    [allowedExtensions]="self.allowedUploadExtensions"
    [elementName]="''file:Image_basket_details.File''"
    [maxFileSize]="self.maxUploadFileSize"
    [validator]="self.validator"
    [validationField]="''file''"
    [isDisabled]="self.isNew ? !self._parsedPermissionSettings.isAccessCreate : !self._parsedPermissionSettings.isAccessUpdate"
    [translateKeys]="''COMMON.IMAGE_BASKET.DETAILS.FILE''" 
    [dataLabel]="''''"
    [dataDropzoneMessage]="''''"
    [dataDropzoneMessageTranslateKey]="''COMMON.IMAGE_BASKET.DETAILS.FILE_DROPZONE''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-file-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-6''><cr-translate-editor
    [elementName]="''edit:Image_basket_details.Name''"
    [languages]="self.languages"
    [(value)]="self.image.nameLanguageData"
    [validator]="self.validator"
    [validationField]="''nameLanguageData''"
    (valueChange)="self.onChangeTitle()"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.NAME''"
    [class]=''""''
    [isDisabled]="false"
></cr-translate-editor></div><div class=''col-md-6''><cr-translate-editor
    [elementName]="''edit:Image_basket_details.Description''"
    [languages]="self.languages"
    [(value)]="self.image.descriptionLanguageData"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.DESCRIPTION''"
    [class]=''""''
    [isDisabled]="false"
></cr-translate-editor></div></div></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''COMMON.IMAGE_BASKET.DETAILS.GENERAL'' : null"
        [title]="true ? null : ''General he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-label-control
    [link]="self.image.cdnResourceUrl"
    [containsLink]="true"
    (linkClicked)="self.onLinkOpen(self.image.cdnResourceUrl)"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.CDN_FULL_URL''"
    [class]=''""''
></cr-label-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-label-control
    [link]="self.image.bucketResourceUrl"
    [containsLink]="true"
    (linkClicked)="self.onLinkOpen(self.image.bucketResourceUrl)"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.BUCKET_FULL_URL''"
    [class]=''""''
></cr-label-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-label-control
    [link]="self.image.fileIdentifier"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.IMAGE_IDENTIFIER''"
    [class]=''""''
></cr-label-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-label-control
    [link]="self.image.originalFileName"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.ORIGINAL_FILE_NAME''"
    [class]=''""''
></cr-label-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:15.7266667 +00:00', 5, N'N', '4470547a-740c-4e74-baad-3b6b9d3068a0', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('29d5af8b-476b-ed11-835f-02f176033ddb', '38b2c3fd-1d6b-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [titleTranslateKey]="''COMMON.IMAGE_BASKET.DETAILS.TITLE''"
    [title]="''''"
></cr-title-header>

      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-3''><div class="cr-text-center">
    <img
        [src]="self.image.cdnResourceUrl ? self.sanitizeUrl(self.image.cdnResourceUrl) : (self.image.cdnResourceUrl || ''/assets/images/no-image.svg'')"
        class="cr-image-basket-details-img"
        [alt]="self.image.description"
        [title]="self.image.name"
        [class]=''""''
    />
</div>
</div><div class=''col-md-9''><div class="row undefined"><div class=''col-md-6''><cr-control-edit
    [(dataValue)]="self.image.code"
    [elementName]="''edit:Image_basket_details.Code''"
    [validator]="self.validator"
    [validationField]="''code''"
    [maxlength]="50"
    [translateKeys]="''COMMON.IMAGE_BASKET.DETAILS.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''><cr-file-control
    [(dataValue)]="self.image.file"
    (dataValueChange)="self.onImageChange()"
    [allowedExtensions]="self.allowedUploadExtensions"
    [elementName]="''file:Image_basket_details.File''"
    [maxFileSize]="self.maxUploadFileSize"
    [validator]="self.validator"
    [validationField]="''file''"
    [isDisabled]="self.isNew ? !self._parsedPermissionSettings.isAccessCreate : !self._parsedPermissionSettings.isAccessUpdate"
    [translateKeys]="''COMMON.IMAGE_BASKET.DETAILS.FILE''" 
    [dataLabel]="''''"
    [dataDropzoneMessage]="''''"
    [dataDropzoneMessageTranslateKey]="''COMMON.IMAGE_BASKET.DETAILS.FILE_DROPZONE''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-file-control></div></div><div class="row cr-bottom-row-border"><div class=''col-md-6''><cr-translate-editor
    [elementName]="''edit:Image_basket_details.Name''"
    [languages]="self.languages"
    [(value)]="self.image.nameLanguageData"
    [validator]="self.validator"
    [validationField]="''nameLanguageData''"
    (valueChange)="self.onChangeTitle()"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.NAME''"
    [class]=''""''
    [isDisabled]="false"
></cr-translate-editor></div><div class=''col-md-6''><cr-translate-editor
    [elementName]="''edit:Image_basket_details.Description''"
    [languages]="self.languages"
    [(value)]="self.image.descriptionLanguageData"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.DESCRIPTION''"
    [class]=''""''
    [isDisabled]="false"
></cr-translate-editor></div></div></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''COMMON.IMAGE_BASKET.DETAILS.GENERAL'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-label-control
    [link]="self.image.cdnResourceUrl"
    [containsLink]="true"
    (linkClicked)="self.onLinkOpen(self.image.cdnResourceUrl)"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.CDN_FULL_URL''"
    [class]=''""''
></cr-label-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-label-control
    [link]="self.image.bucketResourceUrl"
    [containsLink]="true"
    (linkClicked)="self.onLinkOpen(self.image.bucketResourceUrl)"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.BUCKET_FULL_URL''"
    [class]=''""''
></cr-label-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-label-control
    [link]="self.image.fileIdentifier"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.IMAGE_IDENTIFIER''"
    [class]=''""''
></cr-label-control></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-label-control
    [link]="self.image.originalFileName"
    [label]="''''"
    [translateKey]="''COMMON.IMAGE_BASKET.DETAILS.ORIGINAL_FILE_NAME''"
    [class]=''""''
></cr-label-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:24.5200000 +00:00', 5, N'N', '3520a630-1372-4403-864a-cc62032e4406', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('72e7cc01-9b6c-ed11-835f-02f176033ddb', '2f906084-986c-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.PANEL_TITLE'' : null"
        [title]="true ? null : ''Selection criteria he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_template_list.Popup.Code''"
    [(dataValue)]="self.cache.filter.code"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.TEMPLATE_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_template_list.Popup.Display_name''"
    [(dataValue)]="self.cache.filter.name"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.TEMPLATE_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-8''>
        <div [class]="''cr-search-button-column cr-align-right''">
            <div class="row cr-row-no-padding"><div class=''col-md-6''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.FILTER_CLEAR''"
    [classArray]=''["cr-custom-button-reset","k-mr-5"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    [type]="''button''"
    (buttonClickEvent)="self.onClearFilter()"
></cr-button-control></div><div class=''col-md-6''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.SEARCH''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.onSearch()"
></cr-button-control></div></div>
        </div></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filter''] ?? true"
        (expandedChange)="self.panelStateChange(''filter'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.MODIFIER_TEMPLATES'' : null"
        [title]="true ? null : ''Modifier templates he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filter''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Item_details.Modifier_template_list.Popup.Groups''"
    [dataValue]="self.cache.selection?.length"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.SELECTED_GROUPS''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-10''></div></div><div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''grid:Item_details.Modifier_template_list.Popup.List_grid''"
        [dataCacheName]="''ItemModifierTemplateListCache''"
        [dataSource]="self.dataSource"
        [columnSettings]="self.columnSettings"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [initialSelectedRows]="self.cache.selection"
        [expandable]="true"
        [expandedRows]="self.cache.expandedRows"
        (pageChangeEvent)="self.changePage($event)"
        (expandedRowsChange)="self.onExpandedRowsChange($event)"
        (cellClickEvent)="self.onCellClick($event)"
        [class]="undefined"
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
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:16.3600000 +00:00', 10, N'N', 'c8c09670-5e54-4a6a-814f-d3733b02d5d5', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('73e7cc01-9b6c-ed11-835f-02f176033ddb', '2f906084-986c-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.PANEL_TITLE'' : null"
        [title]="true ? null : ''Selection criteria''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_template_list.Popup.Code''"
    [(dataValue)]="self.cache.filter.code"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.TEMPLATE_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Modifier_template_list.Popup.Display_name''"
    [(dataValue)]="self.cache.filter.name"
    [translateKeys]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.TEMPLATE_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-8''>
        <div [class]="''cr-search-button-column cr-align-right''">
            <div class="row cr-row-no-padding"><div class=''col-md-6''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.FILTER_CLEAR''"
    [classArray]=''["cr-custom-button-reset","k-mr-5"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    [type]="''button''"
    (buttonClickEvent)="self.onClearFilter()"
></cr-button-control></div><div class=''col-md-6''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.SEARCH''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.onSearch()"
></cr-button-control></div></div>
        </div></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''filter''] ?? true"
        (expandedChange)="self.panelStateChange(''filter'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.MODIFIER_TEMPLATES'' : null"
        [title]="true ? null : ''Modifier templates''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''filter''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Item_details.Modifier_template_list.Popup.Groups''"
    [dataValue]="self.cache.selection?.length"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.SELECTED_GROUPS''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-10''></div></div><div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''grid:Item_details.Modifier_template_list.Popup.List_grid''"
        [dataCacheName]="''ItemModifierTemplateListCache''"
        [dataSource]="self.dataSource"
        [columnSettings]="self.columnSettings"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [initialSelectedRows]="self.cache.selection"
        [expandable]="true"
        [expandedRows]="self.cache.expandedRows"
        (pageChangeEvent)="self.changePage($event)"
        (expandedRowsChange)="self.onExpandedRowsChange($event)"
        (cellClickEvent)="self.onCellClick($event)"
        [class]="undefined"
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
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:24.7700000 +00:00', 10, N'N', '06ac32c5-5fd8-4b55-8fb5-0542205f0ac2', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2152f05d-aa6c-ed11-835f-02f176033ddb', '945629e2-a86c-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
        <ng-template [ngIf]="comboMealCategory">
            
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.code"
    [elementName]="''edit:Item_details.Combo_meal_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''code''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.name"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Item_details.Combo_meal_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.displayName"
    [elementName]="''edit:Item_details.Combo_meal_display_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''displayName''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''items''] ?? true"
        (expandedChange)="self.panelStateChange(''items'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.ITEMS.PANEL_TITLE'' : null"
        [title]="true ? null : ''Items he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''items''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          
        <div [class]="''row cr-row-padding-revert''">
            
        <div [class]="''col-lg-12 cr-col-content-align-right cr-col-no-padding d-flex''">
            <cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_basket''"
    (buttonClickEvent)="self.onSelectFromBasket()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_POST | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="''secondary-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_BASKET''"
    [classArray]=''["mr-2"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
></cr-button-control><cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_catalog''"
    (buttonClickEvent)="onSelectFromCatalog()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_GET | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="''secondary-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_CATALOG''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
></cr-button-control>
        </div>
        </div><div class="cr-grid-relative-wrapper">
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
            [columnSettings]="self.columnSettings"
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
            [class]=''undefined''
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
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''rules''] ?? true"
        (expandedChange)="self.panelStateChange(''rules'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.RULES.PANEL_TITLE'' : null"
        [title]="true ? null : ''Category rules he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''rules''"
        [containFields]=''["selectionMin","selectionMax"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.description"
    [elementName]="''edit:Item_details.Combo_meal_description''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.DESCRIPTION''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-6''><cr-image-single-picker
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
    [isDisabled]="false || self.isDeleted"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IMAGE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-image-single-picker>
</div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-4''><cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isAllowOnlyOneSelection"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_allow_one_selection''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IS_ALLOW_ONE_SELECTION''"
    [isDisabled]="self.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_minimum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMin"
    [validator]="self.validator"
    [validationField]="''selectionMin''"
    [isDisabled]="false || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MINIMUM''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="1" 
    [max]="1000"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_maximum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMax"
    [validator]="self.validator"
    [validationField]="''selectionMax''"
    [isDisabled]="false || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MAXIMUM''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="1" 
    [max]="1000"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div></div><div class="row undefined"><div class=''col-md-4''><cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isMoveToNextAfterLimit"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_move_to_next_after_limit''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IS_MOVE_TO_NEXT_AFTER_LIMIT''"
    [isDisabled]="self.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template></ng-container>', '2022-11-29 09:51:17.7700000 +00:00', 7, N'N', 'caf7618b-115c-4661-9369-83741971f306', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2252f05d-aa6c-ed11-835f-02f176033ddb', '945629e2-a86c-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.TITLE''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNew ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
        <ng-template [ngIf]="comboMealCategory">
            
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.code"
    [elementName]="''edit:Item_details.Combo_meal_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''code''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.name"
    (dataValueChange)="self.changeTitle()"
    [elementName]="''edit:Item_details.Combo_meal_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.displayName"
    [elementName]="''edit:Item_details.Combo_meal_display_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [validator]="self.validator"
    [validationField]="''displayName''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''items''] ?? true"
        (expandedChange)="self.panelStateChange(''items'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.ITEMS.PANEL_TITLE'' : null"
        [title]="true ? null : ''Items''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''items''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          
        <div [class]="''row cr-row-padding-revert''">
            
        <div [class]="''col-lg-12 cr-col-content-align-right cr-col-no-padding d-flex''">
            <cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_basket''"
    (buttonClickEvent)="self.onSelectFromBasket()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_POST | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="''secondary-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_BASKET''"
    [classArray]=''["mr-2"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
></cr-button-control><cr-button-control
    [elementName]="''button:Item_details.Combo_meal_select_by_catalog''"
    (buttonClickEvent)="onSelectFromCatalog()"
    [permissionSettings]="{
        isAccessEdit: (self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)) && (self.EndpointName.item__combo_item_modifier_GET | endpointAccessGrantedPipe)
    }"
    [disabled]="self.isDeleted || self.cache.item.isEdit"
    [buttonTemplateType]="''secondary-action-button''"
    [text]="''''"
    [textTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.ITEMS.SELECT_FROM_CATALOG''"
    [classArray]=''""''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
></cr-button-control>
        </div>
        </div><div class="cr-grid-relative-wrapper">
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
            [columnSettings]="self.columnSettings"
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
            [class]=''undefined''
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
</div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''rules''] ?? true"
        (expandedChange)="self.panelStateChange(''rules'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.RULES.PANEL_TITLE'' : null"
        [title]="true ? null : ''Category rules''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''rules''"
        [containFields]=''["selectionMin","selectionMax"]''
      >
        <ng-template crPanelContent>
          <div class="row cr-bottom-row-border"><div class=''col-md-12''><cr-control-edit
    [(dataValue)]="self.comboMealCategory.description"
    [elementName]="''edit:Item_details.Combo_meal_description''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.DESCRIPTION''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="self.isDeleted || false"
></cr-control-edit></div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-6''><cr-image-single-picker
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
    [isDisabled]="false || self.isDeleted"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IMAGE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-image-single-picker>
</div><div class=''col-md-6''></div></div><div class="row cr-bottom-row-border"><div class=''col-md-4''><cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isAllowOnlyOneSelection"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_allow_one_selection''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IS_ALLOW_ONE_SELECTION''"
    [isDisabled]="self.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_minimum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMin"
    [validator]="self.validator"
    [validationField]="''selectionMin''"
    [isDisabled]="false || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MINIMUM''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="1" 
    [max]="1000"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div><div class=''col-md-4''><cr-numeric-control
    [elementName]="''numeric:Item_details.Selection_maximum''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.comboMealCategory.selectionMax"
    [validator]="self.validator"
    [validationField]="''selectionMax''"
    [isDisabled]="false || self.isDeleted || self.comboMealCategory.isAllowOnlyOneSelection"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.SELECTION_MAXIMUM''" 
    [customClass]=''""''
    [format]="''n0''" 
    [decimals]="null" 
    [min]="1" 
    [max]="1000"
    [autoCorrectMinMax]="true"
></cr-numeric-control></div></div><div class="row undefined"><div class=''col-md-4''><cr-checkbox-control
    [(dataValue)]="self.comboMealCategory.isMoveToNextAfterLimit"
    (dataValueChange)="self.onAllowOnlyOneSelectionChange()"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? (self.EndpointName.item_combo_meal_category_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_combo_meal_category_id_PUT | endpointAccessGrantedPipe)
    }"
    [elementName]="''checkbox:Item_details.Is_move_to_next_after_limit''"
    [dataLabel]="''''"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.RULES.IS_MOVE_TO_NEXT_AFTER_LIMIT''"
    [isDisabled]="self.isDeleted || false"
    [class]=''""''
></cr-checkbox-control></div><div class=''col-md-8''></div></div>
        </ng-template>
      </cr-panel>
        </ng-template></ng-container>', '2022-11-29 09:51:26.6866667 +00:00', 7, N'N', 'a7096f60-0a06-4897-be06-a6dbfabc1eb1', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('030cdae1-eb6c-ed11-835f-02f176033ddb', '720e3302-e96c-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.TITLE''"
    [title]="''''"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.TITLE'' : null"
        [title]="true ? null : ''Selection criteria he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_code''"
    [(dataValue)]="self.cache.filter.code"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_short_display_name''"
    [(dataValue)]="self.cache.filter.shortDisplayName"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.SHORT_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_barcode''"
    [(dataValue)]="self.cache.filter.barcode"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.BARCODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_model_code''"
    [(dataValue)]="self.cache.filter.modelCode"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.MODEL_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-button-control 
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
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.TITLE'' : null"
        [title]="true ? null : ''Items he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Item_details.Combo_meal_select_from_catalog_items_total''"
    [dataValue]="self.cache.selectedItems?.length"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.TOTAL''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-10''></div></div><div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_details.Combo_meal_select_from_catalog_grid''"
        [dataSource]="self.dataSource"
        [columnSettings]="self.columnSettings"
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
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:25.9533333 +00:00', 3, N'N', 'a1d79174-e5a7-445c-af17-34b5be1a7c6c', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('040cdae1-eb6c-ed11-835f-02f176033ddb', '720e3302-e96c-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.TITLE''"
    [title]="''''"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.TITLE'' : null"
        [title]="true ? null : ''Selection criteria''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_code''"
    [(dataValue)]="self.cache.filter.code"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_short_display_name''"
    [(dataValue)]="self.cache.filter.shortDisplayName"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.SHORT_DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_barcode''"
    [(dataValue)]="self.cache.filter.barcode"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.BARCODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-2''><cr-control-edit
    [elementName]="''edit:Item_details.Combo_meal_select_from_catalog_filter_model_code''"
    [(dataValue)]="self.cache.filter.modelCode"
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.FILTER.MODEL_CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-4''><cr-button-control 
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
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.TITLE'' : null"
        [title]="true ? null : ''Items''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Item_details.Combo_meal_select_from_catalog_items_total''"
    [dataValue]="self.cache.selectedItems?.length"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.TOTAL''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-10''></div></div><div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_details.Combo_meal_select_from_catalog_grid''"
        [dataSource]="self.dataSource"
        [columnSettings]="self.columnSettings"
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
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:27.3966667 +00:00', 3, N'N', 'decadc0f-43a9-46b2-8a3c-be3afb557f8b', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('39243568-ed6c-ed11-835f-02f176033ddb', '9804e012-e96c-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.TITLE''"
    [title]="''''"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.FILTER.TITLE'' : null"
        [title]="true ? null : ''Basket he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
    (addBasket)="self.addPopulationBasket()"
    (deleteBasket)="self.deleteBasketPopulation()"
    (edit)="self.onEditPopulation()"
    [cacheName]="''self.comboMealItemPopulationViewState''"
    [elementName]="''basket-population:Item_details.Combo_meal_select_from_basket_population''"
    [isShowAdd]="true"
    [isShowDelete]="true"
    [isShowEdit]="true"
    [populations]="self.cache.filter"
    [class]=''""''
></cr-basket-population-view><div class="row "><div class=''col-md-12''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
></cr-button-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.TITLE'' : null"
        [title]="true ? null : ''Items he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Item_details.Combo_meal_select_from_basket_items_total''"
    [dataValue]="self.cache.selectedItems?.length"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.TOTAL''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-10''></div></div><div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_details.Combo_meal_select_from_basket_grid''"
        [dataSource]="self.dataSource"
        [columnSettings]="self.columnSettings"
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
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:26.8300000 +00:00', 4, N'N', '4fc0007a-8612-4612-ac99-a61bc28422ba', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('3a243568-ed6c-ed11-835f-02f176033ddb', '9804e012-e96c-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleTranslateKey]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.TITLE''"
    [title]="''''"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.FILTER.TITLE'' : null"
        [title]="true ? null : ''Basket''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
    (addBasket)="self.addPopulationBasket()"
    (deleteBasket)="self.deleteBasketPopulation()"
    (edit)="self.onEditPopulation()"
    [cacheName]="''self.comboMealItemPopulationViewState''"
    [elementName]="''basket-population:Item_details.Combo_meal_select_from_basket_population''"
    [isShowAdd]="true"
    [isShowDelete]="true"
    [isShowEdit]="true"
    [populations]="self.cache.filter"
    [class]=''""''
></cr-basket-population-view><div class="row "><div class=''col-md-12''><cr-button-control 
    [buttonTemplateType]="''underlined-action-button''"
    [text]="''''"
    [textTranslateKey]="''COMMON.SEARCH''"
    [classArray]=''["d-block","ml-auto"]''
    [width]="''''"
    [height]="''''"
    [icon]="''undefined''"
    (buttonClickEvent)="self.changeFilter()"
></cr-button-control></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.TITLE'' : null"
        [title]="true ? null : ''Items''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-2''><cr-numeric-control
    [elementName]="''numeric:Item_details.Combo_meal_select_from_basket_items_total''"
    [dataValue]="self.cache.selectedItems?.length"
    [isDisabled]="true"
    [dataLabel]="''''" 
    [translateKeys]="''ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.TOTAL''" 
    [customClass]=''""''
    [format]="''#''" 
    [decimals]="null" 
    [min]="null" 
    [max]="null"
    [autoCorrectMinMax]="false"
></cr-numeric-control></div><div class=''col-md-10''></div></div><div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_details.Combo_meal_select_from_basket_grid''"
        [dataSource]="self.dataSource"
        [columnSettings]="self.columnSettings"
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
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:27.6366667 +00:00', 4, N'N', 'b72bcb23-381b-4402-acb5-e03d3ba92c04', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('981dc0da-966d-ed11-835f-02f176033ddb', '5c4deb84-f36c-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_POPULATION''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.basketValidator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Item population basket''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:14.9600000 +00:00', 2, N'N', 'e9cd1733-8875-4e1d-a004-371aa3754533', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('991dc0da-966d-ed11-835f-02f176033ddb', '5c4deb84-f36c-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_POPULATION''"
    [title]="''''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleHeaderButtonClick($event)"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''well''"
        [customClass]="''''"
      >
        <ng-template crPanelContent>
          <div class="row undefined"><div class=''col-md-4''><cr-control-edit
    [(dataValue)]="self.cache.basket.name"
    (dataValueChange)="self.isDisableAutoChangeName = true"
    [validator]="self.basketValidator"
    [validationField]="''name''"
    [elementName]="''edit:Basket_population_name''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false || !self.isBasketNameEnabled"
></cr-control-edit></div><div class=''col-md-2''><cr-control-dropdown
    [(dataValue)]="self.cache.basket.exclude"
    (dataValueChange)="self.onChangeType($event)"
    [dataDisplayField]="''name''"
    [dataValueField]="''status''"
    [dataSource]="self.basketTypes"
    [elementName]="''smart-dropdown:Basket_population_type''"
    [translateKeys]="''COMMON.BASKET.BASKET_EDIT.BASKET_TYPE''"
    [dataLabel]="''''"
    [class]=''""''
></cr-control-dropdown></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''panel''"
        [expanded]="self.panelsViewState?.[''undefined''] ?? true"
        (expandedChange)="self.panelStateChange(''undefined'', $event)"
        [titleTranslateKey]="true ? ''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_ITEM_CONTENT_POPULATION'' : null"
        [title]="true ? null : ''Item population basket''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''undefined''"
        [containFields]=''["populationBasketContentList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-basket-population-edit-list
        [dataSource]="self.cache.basket.populationBasketContentList"
        [typeDropdownFn]="self.typeDropdownFn"
        [cacheName]="self.cacheName + ''EditList''"
        [isShowProperty]="self.isShowProperty"
        [propertyDropdownFn]="self.propertyDropdownFn"
        [valueDropdownFn]="self.valueDropdownFn"
        (remove)="self.onRemove($event)"
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-11-29 09:51:15.7166667 +00:00', 2, N'N', '1a1f9912-f6f4-4477-85d0-721cf40f4f23', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-2''><cr-dropdown-smart-control
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
></cr-combobox-smart-control></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit 
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
      </cr-panel></ng-container>', '2022-11-29 09:51:14.5500000 +00:00', 75, N'N', 'b2ad102b-6638-41fd-9d5e-0bdd59a86890', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-2''><cr-dropdown-smart-control
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
></cr-combobox-smart-control></div></div><div class="row undefined"><div class=''col-md-2''><cr-control-edit 
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
      </cr-panel></ng-container>', '2022-11-29 09:51:14.8733333 +00:00', 75, N'N', '44298e77-a0f0-4f9c-ac47-58a8f97544df', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('02bc7c81-5c51-ed11-8e5d-4ccc6a2bb6d6', '1000aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container></ng-container>', '2022-11-29 09:51:14.4100000 +00:00', 28, N'N', '5528d268-c042-4a3d-a382-8157d2b2c690', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('03bc7c81-5c51-ed11-8e5d-4ccc6a2bb6d6', '1000aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container></ng-container>', '2022-11-29 09:51:14.4100000 +00:00', 28, N'N', 'd4a1b139-5df1-46cb-85bf-0c4ebed11a60', 1, NULL)

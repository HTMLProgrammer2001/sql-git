INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('084480d1-b97f-ed11-835f-02f176033ddb', '6e29cd53-b87f-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''TAX_GROUP.DETAILS.PANEL.TITLE_DEFINITIONS''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''General he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["name"]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-control-edit
    [(dataValue)]="self.taxGroupLocation.name"
    [elementName]="''edit:TaxGroup_details.Name''"
    [validationField]="''name''"
    [validator]="self.validator"
    [permissionSettings]="{
      isAccessEdit: self.isNewTaxGroup ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) :
        (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''TAX_GROUP.DETAILS.GRID.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''values''] ?? true"
        (expandedChange)="self.panelStateChange(''values'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TAX_DEFINITIONS_VALUES'' : null"
        [title]="true ? null : ''Values he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''values''"
        [containFields]=''["taxGroupDefinitionList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"taxPercent","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.TAX_PERCENT","hidden":false,"sortOrder":1},{"field":"deductionPercent","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.DEDUCTION_PERCENT","hidden":false,"sortOrder":2},{"field":"fromDate","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.DATE_FROM","hidden":false,"sortOrder":3}]''
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
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''locations''] ?? true"
        (expandedChange)="self.panelStateChange(''locations'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TAX_DEFINITIONS_LOCATIONS'' : null"
        [title]="true ? null : ''Locations he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''locations''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
></cr-basket-population-view>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 11:58:31.5833333 +00:00', 4, N'N', 'd8566c5a-b6c8-467d-830f-af62d90d756c', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('094480d1-b97f-ed11-835f-02f176033ddb', '6e29cd53-b87f-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''TAX_GROUP.DETAILS.PANEL.TITLE_DEFINITIONS''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["name"]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-control-edit
    [(dataValue)]="self.taxGroupLocation.name"
    [elementName]="''edit:TaxGroup_details.Name''"
    [validationField]="''name''"
    [validator]="self.validator"
    [permissionSettings]="{
      isAccessEdit: self.isNewTaxGroup ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) :
        (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''TAX_GROUP.DETAILS.GRID.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''values''] ?? true"
        (expandedChange)="self.panelStateChange(''values'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TAX_DEFINITIONS_VALUES'' : null"
        [title]="true ? null : ''Values''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''values''"
        [containFields]=''["taxGroupDefinitionList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"taxPercent","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.TAX_PERCENT","hidden":false,"sortOrder":1},{"field":"deductionPercent","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.DEDUCTION_PERCENT","hidden":false,"sortOrder":2},{"field":"fromDate","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.DATE_FROM","hidden":false,"sortOrder":3}]''
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
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''locations''] ?? true"
        (expandedChange)="self.panelStateChange(''locations'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TAX_DEFINITIONS_LOCATIONS'' : null"
        [title]="true ? null : ''Locations''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''locations''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
></cr-basket-population-view>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 11:58:31.5833333 +00:00', 4, N'N', '1c701984-0eac-49af-90ae-8f789825a87d', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f633dce2-b97f-ed11-835f-02f176033ddb', '646c425d-b87f-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''TAX_GROUP.DETAILS.PANEL.TITLE_DEFINITIONS''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''General he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["name"]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-control-edit
    [(dataValue)]="self.taxGroupLocation.name"
    [elementName]="''edit:TaxGroup_details.Name''"
    [validationField]="''name''"
    [validator]="self.validator"
    [permissionSettings]="{
      isAccessEdit: self.isNewTaxGroup ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) :
        (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''TAX_GROUP.DETAILS.GRID.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''values''] ?? true"
        (expandedChange)="self.panelStateChange(''values'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TAX_DEFINITIONS_VALUES'' : null"
        [title]="true ? null : ''Values he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''values''"
        [containFields]=''["taxGroupDefinitionList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"taxPercent","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.TAX_PERCENT","hidden":false,"sortOrder":1},{"field":"deductionPercent","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.DEDUCTION_PERCENT","hidden":false,"sortOrder":2},{"field":"fromDate","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.DATE_FROM","hidden":false,"sortOrder":3}]''
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
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''locations''] ?? true"
        (expandedChange)="self.panelStateChange(''locations'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TAX_DEFINITIONS_LOCATIONS'' : null"
        [title]="true ? null : ''Locations he''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''locations''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
></cr-basket-population-view>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 11:58:53.1700000 +00:00', 4, N'N', '2aaef766-9f8a-4b86-a359-1d78201ab342', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f733dce2-b97f-ed11-835f-02f176033ddb', '646c425d-b87f-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''TAX_GROUP.DETAILS.PANEL.TITLE_DEFINITIONS''"
    [title]="''''"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''general''] ?? true"
        (expandedChange)="self.panelStateChange(''general'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.GENERAL'' : null"
        [title]="true ? null : ''General''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''general''"
        [containFields]=''["name"]''
      >
        <ng-template crPanelContent>
          <div class="row "><div class=''col-md-12''><cr-control-edit
    [(dataValue)]="self.taxGroupLocation.name"
    [elementName]="''edit:TaxGroup_details.Name''"
    [validationField]="''name''"
    [validator]="self.validator"
    [permissionSettings]="{
      isAccessEdit: self.isNewTaxGroup ? (self.EndpointName.tax_group_POST | endpointAccessGrantedPipe) :
        (self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="''TAX_GROUP.DETAILS.GRID.NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
></cr-control-edit></div><div class=''col-md-6''></div></div>
        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''values''] ?? true"
        (expandedChange)="self.panelStateChange(''values'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TAX_DEFINITIONS_VALUES'' : null"
        [title]="true ? null : ''Values''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''values''"
        [containFields]=''["taxGroupDefinitionList"]''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"taxPercent","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.TAX_PERCENT","hidden":false,"sortOrder":1},{"field":"deductionPercent","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.DEDUCTION_PERCENT","hidden":false,"sortOrder":2},{"field":"fromDate","titleTranslateKey":"TAX_GROUP.DETAILS.GRID_VALUES.DATE_FROM","hidden":false,"sortOrder":3}]''
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
        [class]=''undefined''
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel>
      <cr-panel
        [panelTemplateType]="''collapsible-panel''"
        [expanded]="self.panelsViewState?.[''locations''] ?? true"
        (expandedChange)="self.panelStateChange(''locations'', $event)"
        [titleTranslateKey]="true ? ''TAX_GROUP.DETAILS.PANEL.TAX_DEFINITIONS_LOCATIONS'' : null"
        [title]="true ? null : ''Locations''"
        [customClass]="''''"
        [headerClass]="''''"
        [validator]="self.validator"
        [validatorGroupName]="''locations''"
        [containFields]=''[]''
      >
        <ng-template crPanelContent>
          <cr-basket-population-view
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
></cr-basket-population-view>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 11:58:53.1700000 +00:00', 4, N'N', 'a04c4abc-9677-440e-873a-da6ba90b96a3', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2b86515f-4580-ed11-835f-02f176033ddb', '19435038-b87f-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_LOCATION_POPULATION''"
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
      </cr-panel></ng-container>', '2022-12-20 12:15:25.1933333 +00:00', 2, N'N', 'a00ff096-f882-42ce-affa-0a4ace8d0803', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2c86515f-4580-ed11-835f-02f176033ddb', '19435038-b87f-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_LOCATION_POPULATION''"
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
      </cr-panel></ng-container>', '2022-12-20 12:15:25.1933333 +00:00', 2, N'N', 'ffa917cb-a8ca-462c-bd1c-d1dd5426159d', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2d86515f-4580-ed11-835f-02f176033ddb', '91c33f40-b87f-ed11-835f-02f176033ddb', 1, N'<ng-container><cr-title-header
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_LOCATION_POPULATION''"
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
      </cr-panel></ng-container>', '2022-12-20 12:15:59.8666667 +00:00', 2, N'N', '9fe3e04e-6324-4830-8e0e-d6c23489b503', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('2e86515f-4580-ed11-835f-02f176033ddb', '91c33f40-b87f-ed11-835f-02f176033ddb', 2, N'<ng-container><cr-title-header
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_LOCATION_POPULATION''"
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
      </cr-panel></ng-container>', '2022-12-20 12:15:59.8666667 +00:00', 2, N'N', '6350f96d-77f7-4c0e-b46a-c25721878c80', 1, NULL)
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
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('02bc7c81-5c51-ed11-8e5d-4ccc6a2bb6d6', '1000aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 1, N'<ng-container></ng-container>', '2022-12-08 11:16:08.3533333 +00:00', 31, N'N', 'de724d57-9f6f-41e2-929e-6384e6582f2d', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('03bc7c81-5c51-ed11-8e5d-4ccc6a2bb6d6', '1000aebd-4251-ed11-8e5d-4ccc6a2bb6d6', 2, N'<ng-container></ng-container>', '2022-12-08 11:16:08.3533333 +00:00', 31, N'N', 'e9a457b8-7f87-4d35-86d8-3f800f1392c4', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:50.4933333 +00:00', 11, N'N', 'd5b7200d-8bad-4579-9b0f-a61882a65d7b', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:50.4933333 +00:00', 11, N'N', 'c79a5ad7-a91b-4a5a-8e3c-e23b9ebe6df0', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:51.1800000 +00:00', 7, N'N', '516c8124-511d-4da0-9739-a48be68734fb', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:51.1800000 +00:00', 7, N'N', '2ba00c81-9f0b-46c6-af3f-df53bd47966e', 1, NULL)
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.GRID.MODIFIER_TEMPLATE_CODE","hidden":false,"sortOrder":1},{"field":"name","titleTranslateKey":"ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.GRID.MODIFIER_TEMPLATE_NAME","hidden":false,"sortOrder":2}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:51.8766667 +00:00', 15, N'N', 'b186ada2-3841-4096-9b34-867292b7453c', 1, NULL)
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.GRID.MODIFIER_TEMPLATE_CODE","hidden":false,"sortOrder":1},{"field":"name","titleTranslateKey":"ITEM.DETAILS.MODIFIER_TEMPLATE_LIST.GRID.MODIFIER_TEMPLATE_NAME","hidden":false,"sortOrder":2}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:51.8766667 +00:00', 15, N'N', '290af816-8cd3-409f-8933-ffd9b3e5f485', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
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
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_CODE","hidden":false,"sortOrder":1},{"field":"name","titleTranslateKey":"ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_NAME","hidden":false,"sortOrder":2},{"field":"displayName","titleTranslateKey":"ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_DISPLAY_NAME","hidden":false,"sortOrder":3}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:52.5833333 +00:00', 8, N'N', 'e5ad4297-9f1a-464a-803b-f8918fe7a1ad', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
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
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_CODE","hidden":false,"sortOrder":1},{"field":"name","titleTranslateKey":"ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_NAME","hidden":false,"sortOrder":2},{"field":"displayName","titleTranslateKey":"ITEM.DETAILS.MODIFIER_GROUP_LIST.GRID.MODIFIER_GROUP_DISPLAY_NAME","hidden":false,"sortOrder":3}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:52.5833333 +00:00', 8, N'N', 'e0f8a69c-e619-4333-a39d-72883291f92c', 1, NULL)
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
            [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.CODE","hidden":false,"sortOrder":1},{"field":"extraPriceValue","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.EXTRA_PRICE","hidden":false,"sortOrder":2},{"field":"isDefaultSelection","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.IS_DEFAULT","hidden":false,"sortOrder":3}]''
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
        </ng-template></ng-container>', '2022-12-20 09:04:53.3100000 +00:00', 12, N'N', '844487c8-c5f3-4553-9d96-0a4dcc76a98f', 1, NULL)
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
            [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.CODE","hidden":false,"sortOrder":1},{"field":"extraPriceValue","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.EXTRA_PRICE","hidden":false,"sortOrder":2},{"field":"isDefaultSelection","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.IS_DEFAULT","hidden":false,"sortOrder":3}]''
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
        </ng-template></ng-container>', '2022-12-20 09:04:53.3100000 +00:00', 12, N'N', '101b90fe-f26d-41b6-a9a4-7e6d671dfbcf', 1, NULL)
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
            [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.CODE","hidden":false,"sortOrder":1},{"field":"extraPriceValue","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.EXTRA_PRICE","hidden":false,"sortOrder":2},{"field":"isDefaultSelection","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.IS_DEFAULT","hidden":false,"sortOrder":3}]''
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
        </ng-template></ng-container>', '2022-12-20 09:04:54.0266667 +00:00', 5, N'N', 'bde190f6-a534-4e71-8ca9-4d1c28ab1ce3', 1, NULL)
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
            [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.CODE","hidden":false,"sortOrder":1},{"field":"extraPriceValue","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.EXTRA_PRICE","hidden":false,"sortOrder":2},{"field":"isDefaultSelection","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.ITEMS.GRID.IS_DEFAULT","hidden":false,"sortOrder":3}]''
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
        </ng-template></ng-container>', '2022-12-20 09:04:54.0266667 +00:00', 5, N'N', 'b04ebe12-1e09-4af1-bd53-f503ed6f60c6', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
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
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.CODE","hidden":false,"sortOrder":1},{"field":"name","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.NAME","hidden":false,"sortOrder":2},{"field":"barcode","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.BARCODE","hidden":false,"sortOrder":3},{"field":"model.name","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.MODEL","hidden":false,"sortOrder":4}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:54.7366667 +00:00', 8, N'N', '00a8ac9b-cf9d-4113-bfc3-f4333484f037', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-2''><cr-control-edit
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
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.CODE","hidden":false,"sortOrder":1},{"field":"name","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.NAME","hidden":false,"sortOrder":2},{"field":"barcode","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.BARCODE","hidden":false,"sortOrder":3},{"field":"model.name","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_CATALOG.GRID.MODEL","hidden":false,"sortOrder":4}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:54.7366667 +00:00', 8, N'N', '5f867540-0f91-485b-8fa1-3db3024ee938', 1, NULL)
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
></cr-basket-population-view><div class="row undefined"><div class=''col-md-12''><cr-button-control 
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
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.CODE","hidden":false,"sortOrder":1},{"field":"name","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.NAME","hidden":false,"sortOrder":2},{"field":"barcode","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.BARCODE","hidden":false,"sortOrder":3},{"field":"model.name","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.MODEL","hidden":false,"sortOrder":4}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:55.4500000 +00:00', 7, N'N', 'e3368c73-894f-4379-b824-bf67b513d526', 1, NULL)
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
></cr-basket-population-view><div class="row undefined"><div class=''col-md-12''><cr-button-control 
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
          <div class="row undefined"><div class=''col-md-2''><cr-numeric-control
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"code","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.CODE","hidden":false,"sortOrder":1},{"field":"name","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.NAME","hidden":false,"sortOrder":2},{"field":"barcode","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.BARCODE","hidden":false,"sortOrder":3},{"field":"model.name","titleTranslateKey":"ITEM.DETAILS.COMBO_MEAL.SELECT_FROM_BASKET.GRID.MODEL","hidden":false,"sortOrder":4}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:55.4500000 +00:00', 7, N'N', '6664c462-dcf6-4cdc-8d9f-1f6849ea70cd', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:56.1533333 +00:00', 5, N'N', 'c311e2d2-c920-4179-a3f0-53cb68874aeb', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:56.1533333 +00:00', 5, N'N', 'ad6ced64-6be1-4df1-a2ad-df6db3a0886c', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:56.8666667 +00:00', 4, N'N', 'a4512109-821f-4b70-bd3a-a3b642411a82', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:56.8666667 +00:00', 4, N'N', 'e0f9315c-011f-4c2c-8aa1-1090677462e5', 1, NULL)
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"name","titleTranslateKey":"USER.DETAILS.ROLE_MANAGER.GRID.NAME","hidden":false,"sortOrder":1}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:57.5933333 +00:00', 7, N'N', '26f5fd95-747e-4204-888c-78e404e64b38', 1, NULL)
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
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"name","titleTranslateKey":"USER.DETAILS.ROLE_MANAGER.GRID.NAME","hidden":false,"sortOrder":1}]''
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
      </cr-panel></ng-container>', '2022-12-20 09:04:57.5933333 +00:00', 7, N'N', '4c798be8-862e-4442-af72-06ae79c2b5b7', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:58.2866667 +00:00', 6, N'N', '476c37bc-d351-4aaa-9252-eacafed01bf4', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:58.2866667 +00:00', 6, N'N', '29e8419e-e11a-46df-b3a1-ce9f78803795', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:59.0400000 +00:00', 4, N'N', '269fd2d8-d30b-4fb5-9bca-088736998f6c', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:59.0400000 +00:00', 4, N'N', 'b248038e-21df-4ccd-bd4c-f6d9a8f61118', 1, NULL)
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
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-access-level-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:59.7166667 +00:00', 5, N'N', '4f74ee75-3ac4-477a-8acb-6a37a235bb48', 1, NULL)
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
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-access-level-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:59.7166667 +00:00', 5, N'N', '7a5e952d-9c50-4eaa-8d3f-13a0f2210452', 1, NULL)
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
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-access-level-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:05:00.3933333 +00:00', 4, N'N', '0f7386ee-7028-4da8-886a-e75c24e28b61', 1, NULL)
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
        (save)="self.onAdd($event)"
        [class]=''undefined''
    ></cr-access-level-basket-population-edit-list>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:05:00.3933333 +00:00', 4, N'N', '99d786b3-1cb4-40a1-b0f9-17d91fa8aa86', 1, NULL)
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
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Partner_details.Mailign_category_grid''"
        [dataCacheName]="''ManageMailingCategoryGrid''"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"name","titleTranslateKey":"PARTNER.DETAILS.GENERAL.DISPLAY_NAME","hidden":false,"sortOrder":1},{"field":"sendMail","titleTranslateKey":"PARTNER.DETAILS.GENERAL.EMAIL","hidden":false,"sortOrder":2},{"field":"sendSMS","titleTranslateKey":"PARTNER.DETAILS.GENERAL.SMS","hidden":false,"sortOrder":3}]''
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
        [class]="undefined"
    ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:46.2766667 +00:00', 83, N'N', '31525eab-06bb-49fa-9310-2549685206b7', 1, NULL)
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
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Partner_details.Mailign_category_grid''"
        [dataCacheName]="''ManageMailingCategoryGrid''"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"name","titleTranslateKey":"PARTNER.DETAILS.GENERAL.DISPLAY_NAME","hidden":false,"sortOrder":1},{"field":"sendMail","titleTranslateKey":"PARTNER.DETAILS.GENERAL.EMAIL","hidden":false,"sortOrder":2},{"field":"sendSMS","titleTranslateKey":"PARTNER.DETAILS.GENERAL.SMS","hidden":false,"sortOrder":3}]''
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
        [class]="undefined"
    ></cr-edit-grid-server-paging>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:46.2766667 +00:00', 83, N'N', '2b3a745d-32e8-4034-96d3-9c98bf8b44bb', 1, NULL)
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
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Partner_details.Manage_partner_group_grid''"
        [dataCacheName]="''ManagePartnerGroupGrid''"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"name","titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME","hidden":false,"sortOrder":1},{"field":"isActivated","titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED","hidden":false,"sortOrder":2},{"field":"activatedFrom","titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.FROM","hidden":false,"sortOrder":3},{"field":"activatedTo","titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.TO","hidden":false,"sortOrder":4}]''
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
        [class]="undefined"
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:46.9766667 +00:00', 79, N'N', 'a50eac55-d1b9-43f5-9ff1-318226ca31eb', 1, NULL)
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
          <div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Partner_details.Manage_partner_group_grid''"
        [dataCacheName]="''ManagePartnerGroupGrid''"
        [columnSettings]=''self.columnSettings | dynamicColumnSettings:[{"field":"name","titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME","hidden":false,"sortOrder":1},{"field":"isActivated","titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED","hidden":false,"sortOrder":2},{"field":"activatedFrom","titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.FROM","hidden":false,"sortOrder":3},{"field":"activatedTo","titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.TO","hidden":false,"sortOrder":4}]''
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
        [class]="undefined"
    ></cr-edit-grid-server-paging>
</div>

        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:46.9766667 +00:00', 79, N'N', 'f4216ccf-3f58-4609-a9db-c00e2b436d9c', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:47.6700000 +00:00', 79, N'N', '36fec9ca-353f-4f11-8eda-c13b42c50082', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:47.6700000 +00:00', 79, N'N', '731ca526-5774-4423-b304-6a03b278cd6b', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-6''><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-checkbox-control
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
</div></div><div class="row undefined"><div class=''col-md-6''><cr-control-datepicker
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
</div></div><div class="row undefined"><div class=''col-md-12''><cr-control-edit 
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
    [(selectedMailingCategory)]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:48.3900000 +00:00', 48, N'N', 'dd3731c6-697a-4b3d-80aa-7675683f38ab', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-6''><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-checkbox-control
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
</div></div><div class="row undefined"><div class=''col-md-6''><cr-control-datepicker
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
</div></div><div class="row undefined"><div class=''col-md-12''><cr-control-edit 
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
    [(selectedMailingCategory)]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:48.3900000 +00:00', 48, N'N', '847ec37e-a047-4d5d-832a-b72be243cd94', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:49.0833333 +00:00', 19, N'N', '23fc1b2b-c717-4244-a3ab-fd73a8dbecff', 1, NULL)
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
      </cr-panel></ng-container>', '2022-12-20 09:04:49.0833333 +00:00', 19, N'N', '5c4822f9-eae6-40c0-b418-e26b6485577a', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-6''><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-checkbox-control
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
</div></div><div class="row undefined"><div class=''col-md-6''><cr-control-datepicker
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
</div></div><div class="row undefined"><div class=''col-md-12''><cr-control-edit 
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
    [(selectedMailingCategory)]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:49.8000000 +00:00', 11, N'N', 'ab7e29d5-7cce-4a4b-a156-e4de3f9a494b', 1, NULL)
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
          <div class="row undefined"><div class=''col-md-6''><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row undefined"><div class=''col-md-4''><cr-checkbox-control
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
</div></div><div class="row undefined"><div class=''col-md-6''><cr-control-datepicker
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
</div></div><div class="row undefined"><div class=''col-md-12''><cr-control-edit 
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
    [(selectedMailingCategory)]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-12-20 09:04:49.8000000 +00:00', 11, N'N', 'fabdf9f5-7db8-40ef-8eab-c936d10b92c0', 1, NULL)

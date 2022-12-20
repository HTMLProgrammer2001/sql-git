INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('e704c8fb-b47f-ed11-835f-02f176033ddb', 'ddfe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9a53528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-definition', N'<cr-tax-group-definition
    [subTemplateId]="''{{subTemplateId}}''"
    [taxGroupLocation]="self.cache.editDefinitionLocation"
    [isNewTaxGroupDefinition]="false"
    [isNewTaxGroup]="self.isNew"
    (addLocationsEvent)="self.addBasketLocationsPopulation()"
    (editLocationsEvent)="self.onEditLocationsPopulation()"
    (closeEvent)="self.onCloseDefinitionLocationTab()"
    (updateEvent)="self.updateDefinitionLocation($event)"
></cr-tax-group-definition>
', '2022-12-20 12:26:04.5366667 +00:00', 4, N'N', '5d92ca92-e6ed-498d-a754-d7132b8a46ee', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('e804c8fb-b47f-ed11-835f-02f176033ddb', 'ddfe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '138435b1-957f-ed11-835f-02f176033ddb', N'create-definition', N'<cr-tax-group-definition
    [subTemplateId]="''{{subTemplateId}}''"
    [taxGroupLocation]="self.cache.editDefinitionLocation"
    [isNewTaxGroupDefinition]="true"
    [isNewTaxGroup]="self.isNew"
    (addLocationsEvent)="self.addBasketLocationsPopulation()"
    (editLocationsEvent)="self.onEditLocationsPopulation()"
    (closeEvent)="self.onCloseDefinitionLocationTab()"
    (createEvent)="self.createDefinitionLocation($event)"
></cr-tax-group-definition>
', '2022-12-20 12:26:04.5366667 +00:00', 4, N'N', '56db7ac6-dbd0-477c-898c-e0a879768087', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('e904c8fb-b47f-ed11-835f-02f176033ddb', 'ddfe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', 'd79de476-b47f-ed11-835f-02f176033ddb', N'manage-baskets-locations-population', N'<cr-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
    [basket]="self.cache.editDefinitionLocation.locationBasketSet.baskets[self.cache.editDefinitionLocation.locationBasketSet.selectedBasketIndex].populationDetails"
    [cacheName]="''taxGroupLocationsPopulationManage'' + self.cache.editedDefinitionLocationIndex"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.cache.editDefinitionLocation.locationBasketSet.lastExcludeNumber"
    [lastIncludeNumber]="self.cache.editDefinitionLocation.locationBasketSet.lastIncludeNumber"
    [propertyDropdownFn]="self.locationCriteriaPropertiesDropdownFn"
    [titleContentTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_LOCATION_CONTENT_POPULATION''"
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_LOCATION_POPULATION''"
    [typeDropdownFn]="self.locationCriteriaDropdownFn"
    [valueDropdownFn]="self.locationCriteriaValuesDropdownFn"
    (cancel)="self.onCancelLocationsPopulation()"
    (confirm)="self.onSaveLocationsPopulation($event)"
    [basketTypeFn$]="self.basketTypeFn"
></cr-basket-population-edit>
', '2022-12-20 12:26:04.5366667 +00:00', 4, N'N', '36aed7ba-768f-45ec-80bd-be5355d3607c', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('ea04c8fb-b47f-ed11-835f-02f176033ddb', 'ddfe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '80bb6482-b47f-ed11-835f-02f176033ddb', N'create-baskets-locations-population', N'<cr-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
    [cacheName]="''taxGroupLocationsPopulationCreate'' + self.cache.editedDefinitionLocationIndex"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.cache.editDefinitionLocation.locationBasketSet.lastExcludeNumber"
    [lastIncludeNumber]="self.cache.editDefinitionLocation.locationBasketSet.lastIncludeNumber"
    [propertyDropdownFn]="self.locationCriteriaPropertiesDropdownFn"
    [titleContentTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_LOCATION_CONTENT_POPULATION''"
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_LOCATION_POPULATION''"
    [typeDropdownFn]="self.locationCriteriaDropdownFn"
    [valueDropdownFn]="self.locationCriteriaValuesDropdownFn"
    (cancel)="self.onCancelLocationsPopulation()"
    (confirm)="self.onCreateLocationsPopulation($event)"
    [basketTypeFn$]="self.basketTypeFn"
></cr-basket-population-edit>
', '2022-12-20 12:26:04.5366667 +00:00', 4, N'N', 'dfb3c440-5e68-42fe-b486-ff932b87b8fd', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('031c7623-bb7f-ed11-835f-02f176033ddb', 'a6e647f0-917f-ed11-835f-02f176033ddb', '9a53528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-definition', N'<cr-tax-group-definition
    [subTemplateId]="''{{subTemplateId}}''"
    [taxGroupLocation]="self.cache.editDefinitionLocation"
    [isNewTaxGroupDefinition]="false"
    [isNewTaxGroup]="self.isNew"
    (addLocationsEvent)="self.addBasketLocationsPopulation()"
    (editLocationsEvent)="self.onEditLocationsPopulation()"
    (closeEvent)="self.onCloseDefinitionLocationTab()"
    (updateEvent)="self.updateDefinitionLocation($event)"
></cr-tax-group-definition>
', '2022-12-20 12:26:20.1366667 +00:00', 3, N'N', '1169d2d6-4e4c-4df8-9fb4-8be241d9474b', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('041c7623-bb7f-ed11-835f-02f176033ddb', 'a6e647f0-917f-ed11-835f-02f176033ddb', '138435b1-957f-ed11-835f-02f176033ddb', N'create-definition', N'<cr-tax-group-definition
    [subTemplateId]="''{{subTemplateId}}''"
    [taxGroupLocation]="self.cache.editDefinitionLocation"
    [isNewTaxGroupDefinition]="true"
    [isNewTaxGroup]="self.isNew"
    (addLocationsEvent)="self.addBasketLocationsPopulation()"
    (editLocationsEvent)="self.onEditLocationsPopulation()"
    (closeEvent)="self.onCloseDefinitionLocationTab()"
    (createEvent)="self.createDefinitionLocation($event)"
></cr-tax-group-definition>
', '2022-12-20 12:26:20.1366667 +00:00', 3, N'N', '0fc80cfb-41a5-48d4-8efe-2f31227e5319', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('051c7623-bb7f-ed11-835f-02f176033ddb', 'a6e647f0-917f-ed11-835f-02f176033ddb', 'd79de476-b47f-ed11-835f-02f176033ddb', N'manage-baskets-locations-population', N'<cr-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
    [basket]="self.cache.editDefinitionLocation.locationBasketSet.baskets[self.cache.editDefinitionLocation.locationBasketSet.selectedBasketIndex].populationDetails"
    [cacheName]="''taxGroupLocationsPopulationManage'' + self.cache.editedDefinitionLocationIndex"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.cache.editDefinitionLocation.locationBasketSet.lastExcludeNumber"
    [lastIncludeNumber]="self.cache.editDefinitionLocation.locationBasketSet.lastIncludeNumber"
    [propertyDropdownFn]="self.locationCriteriaPropertiesDropdownFn"
    [titleContentTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_LOCATION_CONTENT_POPULATION''"
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_MANAGE_LOCATION_POPULATION''"
    [typeDropdownFn]="self.locationCriteriaDropdownFn"
    [valueDropdownFn]="self.locationCriteriaValuesDropdownFn"
    (cancel)="self.onCancelLocationsPopulation()"
    (confirm)="self.onSaveLocationsPopulation($event)"
    [basketTypeFn$]="self.basketTypeFn"
></cr-basket-population-edit>
', '2022-12-20 12:26:20.1366667 +00:00', 3, N'N', '7037dfb2-d341-451d-9d89-c8494c5a9b09', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('061c7623-bb7f-ed11-835f-02f176033ddb', 'a6e647f0-917f-ed11-835f-02f176033ddb', '80bb6482-b47f-ed11-835f-02f176033ddb', N'create-baskets-locations-population', N'<cr-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
    [cacheName]="''taxGroupLocationsPopulationCreate'' + self.cache.editedDefinitionLocationIndex"
    [isBasketNameEnabled]="true"
    [isBasketNameRequired]="true"
    [lastExcludeNumber]="self.cache.editDefinitionLocation.locationBasketSet.lastExcludeNumber"
    [lastIncludeNumber]="self.cache.editDefinitionLocation.locationBasketSet.lastIncludeNumber"
    [propertyDropdownFn]="self.locationCriteriaPropertiesDropdownFn"
    [titleContentTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_LOCATION_CONTENT_POPULATION''"
    [titleTranslateKey]="''COMMON.BASKET.BASKET_EDIT.TITLE_CREATE_LOCATION_POPULATION''"
    [typeDropdownFn]="self.locationCriteriaDropdownFn"
    [valueDropdownFn]="self.locationCriteriaValuesDropdownFn"
    (cancel)="self.onCancelLocationsPopulation()"
    (confirm)="self.onCreateLocationsPopulation($event)"
    [basketTypeFn$]="self.basketTypeFn"
></cr-basket-population-edit>
', '2022-12-20 12:26:20.1366667 +00:00', 3, N'N', '8ae4792c-366f-4c3e-bbf6-09003fc77669', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a89593ef-1c6b-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', 'a55e29d8-1b6b-ed11-835f-02f176033ddb', N'image-content-create', N'<cr-image-basket-details
    [subTemplateId]="''{{subTemplateId}}''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="true"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessCreate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_POST | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (create)="self.onCreateImageBasketContent($event)"
></cr-image-basket-details>', '2022-11-29 09:50:17.4600000 +00:00', 17, N'N', 'e44640cd-6ca0-41d9-bd1d-f5967c92bfb4', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a99593ef-1c6b-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '461282e5-1b6b-ed11-835f-02f176033ddb', N'image-content-update', N'<cr-image-basket-details
    [subTemplateId]="''{{subTemplateId}}''"
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
></cr-image-basket-details>', '2022-11-29 09:50:17.4600000 +00:00', 17, N'N', '07681082-0039-4bba-a78a-661eebca3030', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('7dcd8d26-9a6c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '9a0f4c20-986c-ed11-835f-02f176033ddb', N'modifiers-template-list', N'<cr-item-item-modifier-template-list
    [subTemplateId]="''{{subTemplateId}}''"
    [selected]="self.cache.selectedModifierGroups"
    (onSelection)="self.onSelectModifierGroups($event)"
    (onUpdate)="self.onUpdateModifierGroups($event)"
></cr-item-item-modifier-template-list>', '2022-11-29 09:50:17.4600000 +00:00', 15, N'N', '33114b54-d5f9-4c38-9e66-5f0262aa6e49', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('7ecd8d26-9a6c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '2585e92c-986c-ed11-835f-02f176033ddb', N'modifiers-group-list', N'<cr-item-item-modifier-group-list
    [subTemplateId]="''{{subTemplateId}}''"
    [selected]="self.cache.selectedModifierGroups"
    (onSelection)="self.onSelectModifierGroups($event)"
    (onUpdate)="self.onUpdateModifierGroups($event)"
></cr-item-item-modifier-group-list>', '2022-11-29 09:50:17.4600000 +00:00', 15, N'N', '6628de30-0388-4846-bd3a-d77f7f6698b2', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('5718e2a6-a56c-ed11-835f-02f176033ddb', '5418e2a6-a56c-ed11-835f-02f176033ddb', 'a55e29d8-1b6b-ed11-835f-02f176033ddb', N'image-content-create', N'<cr-image-basket-details
    [subTemplateId]="''{{subTemplateId}}''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="true"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessCreate: !self.item.isDeleted && (self.EndpointName.item__file_storage_basket_content_POST | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (create)="self.onCreateImageBasketContent($event)"
></cr-image-basket-details>', '2022-11-29 09:50:51.9133333 +00:00', 2, N'N', '37cd3c89-98ae-4acf-93c9-aa40431489d3', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('5818e2a6-a56c-ed11-835f-02f176033ddb', '5418e2a6-a56c-ed11-835f-02f176033ddb', '461282e5-1b6b-ed11-835f-02f176033ddb', N'image-content-update', N'<cr-image-basket-details
    [subTemplateId]="''{{subTemplateId}}''"
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
></cr-image-basket-details>', '2022-11-29 09:50:51.9133333 +00:00', 2, N'N', '0a341845-6890-49f5-b173-a437fe42b481', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('96f805bb-a96c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '80ac53c4-a86c-ed11-835f-02f176033ddb', N'combo-meal-category-new', N'<cr-item-combo-meal-category-details
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="self.cache.isNewComboMealCategory"
    [comboMealCategoryId]="self.cache.selectedComboMealCategory"
    [itemId]="self.item.id"
    [isDeleted]="self.item.isDeleted"
    (closePopup)="self.onComboMealPopupClose($event)"
    (selectFromCatalog)="self.onComboMealItemSelectFromCatalog()"
    (selectFromBasket)="self.onComboMealItemSelectFromBasket()"
></cr-item-combo-meal-category-details>', '2022-11-29 09:50:17.4600000 +00:00', 13, N'N', 'd36043b7-7f05-433e-a1c3-548dcad5f699', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('97f805bb-a96c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '1cc95bd1-a86c-ed11-835f-02f176033ddb', N'combo-meal-category-details', N'<cr-item-combo-meal-category-details
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="self.cache.isNewComboMealCategory"
    [comboMealCategoryId]="self.cache.selectedComboMealCategory"
    [itemId]="self.item.id"
    [isDeleted]="self.item.isDeleted"
    (closePopup)="self.onComboMealPopupClose($event)"
    (selectFromCatalog)="self.onComboMealItemSelectFromCatalog()"
    (selectFromBasket)="self.onComboMealItemSelectFromBasket()"
></cr-item-combo-meal-category-details>', '2022-11-29 09:50:17.4600000 +00:00', 13, N'N', '4430c07e-2c0a-4473-b079-ca14d8a9523f', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('05ee30e0-e86c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', 'ffea1076-e86c-ed11-835f-02f176033ddb', N'combo-meal-category-item-select-from-catalog', N'<cr-item-combo-meal-category-select-from-catalog
    [subTemplateId]="''{{subTemplateId}}''"
    (closePopup)="self.onComboMealItemSelectFromCatalogPopupClose()"
    (confirm)="self.onComboMealItemSelectFromCatalogPopupClose()"
></cr-item-combo-meal-category-select-from-catalog>', '2022-11-29 09:50:17.4600000 +00:00', 11, N'N', '24dc3968-2e7f-4662-bc1f-e240199b6d74', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('06ee30e0-e86c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', 'ffe32c83-e86c-ed11-835f-02f176033ddb', N'combo-meal-category-item-select-from-basket', N'<cr-item-combo-meal-category-select-from-basket
    [subTemplateId]="''{{subTemplateId}}''"
    (closePopup)="self.onComboMealItemSelectFromBasketPopupClose()"
    (confirm)="self.onComboMealItemSelectFromBasketPopupClose()"
    (openItemBasket)="self.onOpenComboMealItemBasketDetails($event)"
></cr-item-combo-meal-category-select-from-basket>', '2022-11-29 09:50:17.4600000 +00:00', 11, N'N', '964b902d-5638-438a-a5fb-b8d1f1e7013f', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('64cd091e-f36c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', 'c46edb31-f16c-ed11-835f-02f176033ddb', N'manage-combo-meal-baskets-item', N'<cr-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
></cr-basket-population-edit>', '2022-11-29 09:50:17.4600000 +00:00', 10, N'N', '74e6b25e-7d75-4f21-88ca-47b615c12d81', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('db339d56-f36c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '07bdc640-f16c-ed11-835f-02f176033ddb', N'create-combo-meal-baskets-item', N'<cr-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
></cr-basket-population-edit>', '2022-11-29 09:50:17.4600000 +00:00', 9, N'N', 'ee306510-339a-42ec-80c2-1a0a8503ca14', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('ec7dfa3b-d26d-ed11-835f-02f176033ddb', '4a2007e0-d16d-ed11-835f-02f176033ddb', '5c42c912-d26d-ed11-835f-02f176033ddb', N'user-roles', N'<cr-user-details-role-manager
    [subTemplateId]="''{{subTemplateId}}''"
    [roles]="self.userDetail.roles"
    (changeSelectedRoles)="self.onChangeSelectedRoles($event)"
></cr-user-details-role-manager>
', '2022-11-26 21:35:24.5185130 +00:00', 1, N'N', '9ffbbe0c-0969-4458-8320-60e033c73bcc', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('be633488-d26d-ed11-835f-02f176033ddb', 'bb633488-d26d-ed11-835f-02f176033ddb', '5c42c912-d26d-ed11-835f-02f176033ddb', N'user-roles', N'<cr-user-details-role-manager
    [subTemplateId]="''{{subTemplateId}}''"
    [roles]="self.userDetail.roles"
    (changeSelectedRoles)="self.onChangeSelectedRoles($event)"
></cr-user-details-role-manager>', '2022-11-26 21:37:32.4829180 +00:00', 1, N'N', 'e96e6498-a499-4966-beab-2139068ca599', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('eebf4010-ef6f-ed11-835f-02f176033ddb', 'fbf85a49-cc6f-ed11-835f-02f176033ddb', '9b2b68f1-ed6f-ed11-835f-02f176033ddb', N'manage-baskets-seller-in-stores-population', N'<cr-seller-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
', '2022-11-29 14:21:49.1233333 +00:00', 2, N'N', '7205f942-99f3-4eb1-a0aa-1ee393b087bd', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('efbf4010-ef6f-ed11-835f-02f176033ddb', 'fbf85a49-cc6f-ed11-835f-02f176033ddb', 'cd497b14-ee6f-ed11-835f-02f176033ddb', N'create-baskets-seller-in-stores-population', N'<cr-seller-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
', '2022-11-29 14:21:49.1233333 +00:00', 2, N'N', 'bfea3406-fecb-457d-8386-74a30002c824', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f0bf4010-ef6f-ed11-835f-02f176033ddb', 'fbf85a49-cc6f-ed11-835f-02f176033ddb', 'f88dae2c-ee6f-ed11-835f-02f176033ddb', N'manage-access-level-population', N'<cr-access-level-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
></cr-access-level-basket-population-edit>', '2022-11-29 14:21:49.1233333 +00:00', 2, N'N', 'd13fce40-c249-44dc-a155-e616bdfa1af8', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('f1bf4010-ef6f-ed11-835f-02f176033ddb', 'fbf85a49-cc6f-ed11-835f-02f176033ddb', 'a50cbc3b-ee6f-ed11-835f-02f176033ddb', N'create-access-level-population', N'<cr-access-level-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
', '2022-11-29 14:21:49.1233333 +00:00', 2, N'N', '872ce43e-db09-47e1-9646-b57ac439021b', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('00e79f4d-ef6f-ed11-835f-02f176033ddb', '4da49d6c-cc6f-ed11-835f-02f176033ddb', '9b2b68f1-ed6f-ed11-835f-02f176033ddb', N'manage-baskets-seller-in-stores-population', N'<cr-seller-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
', '2022-11-29 14:22:25.1300000 +00:00', 2, N'N', '96c9f4a0-682c-42d1-87e7-f14501461c8b', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('01e79f4d-ef6f-ed11-835f-02f176033ddb', '4da49d6c-cc6f-ed11-835f-02f176033ddb', 'cd497b14-ee6f-ed11-835f-02f176033ddb', N'create-baskets-seller-in-stores-population', N'<cr-seller-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
', '2022-11-29 14:22:25.1300000 +00:00', 2, N'N', '7d87237f-a41b-4fce-aeeb-970a0b2078d4', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('02e79f4d-ef6f-ed11-835f-02f176033ddb', '4da49d6c-cc6f-ed11-835f-02f176033ddb', 'f88dae2c-ee6f-ed11-835f-02f176033ddb', N'manage-access-level-population', N'<cr-access-level-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
></cr-access-level-basket-population-edit>', '2022-11-29 14:22:25.1300000 +00:00', 2, N'N', '185842af-ecd6-4ace-ae3e-1e11024a5ef1', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('03e79f4d-ef6f-ed11-835f-02f176033ddb', '4da49d6c-cc6f-ed11-835f-02f176033ddb', 'a50cbc3b-ee6f-ed11-835f-02f176033ddb', N'create-access-level-population', N'<cr-access-level-basket-population-edit
    [subTemplateId]="''{{subTemplateId}}''"
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
', '2022-11-29 14:22:25.1300000 +00:00', 2, N'N', '982e2e3e-6384-4f1a-a1d2-22b9aebdad33', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a488a74e-5072-ed11-835f-02f176033ddb', '40208065-4f72-ed11-835f-02f176033ddb', 'a55e29d8-1b6b-ed11-835f-02f176033ddb', N'image-content-create', N'<cr-image-basket-details
    [validator]="self.itemImageBasketContentValidator"
    [isNew]="true"
    [image]="self.cache.selectedImageBasketContent"
    [permissionSettings]="{
        isAccessCreate: !self.treeCache.selectedTreeItemHierarchy?.isDeleted && (self.EndpointName.item_hierarchy__file_storage_basket_content_POST | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(self.popupTab.activeTabIndex)"
    (create)="self.onCreateImageBasketContent($event)"
></cr-image-basket-details>', '2022-12-02 15:59:12.3866667 +00:00', 3, N'N', '2c45bba9-479a-49bd-b17a-3e4c030119bb', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a588a74e-5072-ed11-835f-02f176033ddb', '40208065-4f72-ed11-835f-02f176033ddb', '461282e5-1b6b-ed11-835f-02f176033ddb', N'image-content-update', N'<cr-image-basket-details
    [validator]="self.itemImageBasketContentValidator"
    [isNew]="false"
    [image]="self.cache.selectedImageBasketContent"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item_hierarchy__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessDelete: !self.treeCache.selectedTreeItemHierarchy?.isDeleted && (self.EndpointName.item_hierarchy__file_storage_basket_content_id_DELETE | endpointAccessGrantedPipe),
        isAccessUpdate: !self.treeCache.selectedTreeItemHierarchy?.isDeleted && (self.EndpointName.item_hierarchy__file_storage_basket_content_id_PUT | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(self.popupTab.activeTabIndex)"
    (update)="self.onUpdateImageBasketContent($event)"
    (delete)="self.onDeleteImageBasketContentPopUp($event)"
    (refresh)="self.onRefreshImageBasketContent()"
></cr-image-basket-details>', '2022-12-02 15:59:12.3866667 +00:00', 3, N'N', 'f4ac81cc-5e5e-48cd-9a83-1deddc3fcab8', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('95f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-partner', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
></cr-partner-mailing-category-manage-dynamic>
', '2022-12-07 15:22:26.0000000 +00:00', 18, N'N', '6603f7ca-36e1-4b5e-b57a-ad57eeeede64', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('96f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9553528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups', N'<cr-partner-group-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', '2022-12-07 15:22:26.0000000 +00:00', 18, N'N', 'f2fa64a1-d5aa-4d2a-b506-978fcaa29d20', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('97f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9653528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-create', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
', '2022-12-07 15:22:26.0000000 +00:00', 18, N'N', '755d6984-fbcb-4c52-aca3-e0e9be6c45df', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('69e804f4-405c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-contact-person', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
></cr-partner-mailing-category-manage-dynamic>
', '2022-12-07 15:22:26.0000000 +00:00', 13, N'N', '94275a0f-1f5a-4b21-8169-5303ba4d96ea', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('5237fc2e-585c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '787f7aa3-535c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-addresses-update', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>', '2022-12-07 15:22:26.0000000 +00:00', 12, N'N', '87cbce2d-1ce0-44f8-9024-d6d789bf8181', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('c66aeeb7-5c5c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', 'e0c1dc2a-5b5c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-contact-persons-update', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>', '2022-12-07 15:22:26.0000000 +00:00', 11, N'N', '408f031f-fefa-4369-9cab-50842a4b14a1', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('703404c6-5d5c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9953528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-create', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
', '2022-12-07 15:22:26.0000000 +00:00', 9, N'N', 'ff2b78d6-cbba-4ba7-bd07-67bf0e52fca3', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1b577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-partner', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
></cr-partner-mailing-category-manage-dynamic>
', '2022-12-07 15:22:54.4600000 +00:00', 4, N'N', 'c8d08c5d-c0dd-4256-a148-037b07cfed2c', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1c577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9553528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups', N'<cr-partner-group-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', '2022-12-07 15:22:54.4600000 +00:00', 4, N'N', '11b60a33-de27-4c41-a77e-e5b05c9135ad', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1d577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9653528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-create', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
', '2022-12-07 15:22:54.4600000 +00:00', 4, N'N', '5600bd10-3d9c-4e6c-8e41-db8a9f766e44', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1e577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-contact-person', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
></cr-partner-mailing-category-manage-dynamic>
', '2022-12-07 15:22:54.4600000 +00:00', 4, N'N', 'c057eac2-3350-4da3-bc49-281c3d3e0340', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1f577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '787f7aa3-535c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-addresses-update', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>', '2022-12-07 15:22:54.4600000 +00:00', 4, N'N', '5965838b-0470-4d6b-9cb6-6d63718e0c68', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('20577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', 'e0c1dc2a-5b5c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-contact-persons-update', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>', '2022-12-07 15:22:54.4600000 +00:00', 4, N'N', '9c49492e-58d0-4a67-aa00-8a097cfc878b', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('21577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9953528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-create', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
', '2022-12-07 15:22:54.4600000 +00:00', 4, N'N', '5e22da27-c08c-40e3-937f-0d895999da2a', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('18f6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '15f6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-partner', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-04 19:17:17.5554197 +02:00', 1, N'N', 'f63df187-5e4a-4693-a9b1-f546a81989f1', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('19f6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '15f6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '9553528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups', N'<cr-partner-group-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', '2022-11-04 19:17:17.5554197 +02:00', 1, N'N', '3624cc43-d44a-48fe-a9c0-13940418e2c6', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1af6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '15f6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '9653528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-create', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
', '2022-11-04 19:17:17.5554197 +02:00', 1, N'N', 'b30a49b5-90a2-430e-9984-b6dc1cdc6383', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1bf6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '15f6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-contact-person', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-04 19:17:17.5554197 +02:00', 1, N'N', 'bf66e131-4c88-4c82-ad6a-5e4f2954b3b8', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1cf6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '15f6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '787f7aa3-535c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-addresses-update', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>', '2022-11-04 19:17:17.5554197 +02:00', 1, N'N', 'b6fff6d7-ef03-42c7-ac97-52c1ef18df10', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1df6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '15f6f087-645c-ed11-8e5e-4ccc6a2bb6d6', 'e0c1dc2a-5b5c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-contact-persons-update', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>', '2022-11-04 19:17:17.5554197 +02:00', 1, N'N', 'f968ae9a-347d-4633-b0df-2f1af3c29bad', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1ef6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '15f6f087-645c-ed11-8e5e-4ccc6a2bb6d6', '9953528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-create', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
', '2022-11-04 19:17:17.5554197 +02:00', 1, N'N', '8dc73bc7-9af9-403a-814b-82e7922c219d', 1, NULL)

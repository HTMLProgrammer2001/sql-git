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
></cr-image-basket-details>', '2022-11-26 16:43:12.9400000 +00:00', 16, N'N', '7e7323a0-6f2a-4ee6-8a44-b8b32650ba6b', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('a99593ef-1c6b-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '461282e5-1b6b-ed11-835f-02f176033ddb', N'image-content-update', N'<cr-image-basket-details
    [subTemplateId]="''{{subTemplateId}}''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="false"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessDelete: !self.item.isDeleted && (EndpointName.item__file_storage_basket_content_id_DELETE | endpointAccessGrantedPipe),
        isAccessUpdate: !self.item.isDeleted && (EndpointName.item__file_storage_basket_content_id_PUT | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (update)="self.onUpdateImageBasketContent($event)"
    (delete)="self.onDeleteImageBasketContentPopUp($event)"
    (refresh)="self.onRefreshImageBasketContent()"
></cr-image-basket-details>', '2022-11-26 16:43:12.9400000 +00:00', 16, N'N', '3299ceec-2b3a-4d88-af4b-b0af223bb37e', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('7dcd8d26-9a6c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '9a0f4c20-986c-ed11-835f-02f176033ddb', N'modifiers-template-list', N'<cr-item-item-modifier-template-list
    [subTemplateId]="''{{subTemplateId}}''"
    [selected]="self.cache.selectedModifierGroups"
    (onSelection)="self.onSelectModifierGroups($event)"
    (onUpdate)="self.onUpdateModifierGroups($event)"
></cr-item-item-modifier-template-list>', '2022-11-26 16:43:12.9400000 +00:00', 14, N'N', 'fa50169f-6ecf-4e5b-8660-f9f0217f7256', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('7ecd8d26-9a6c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '2585e92c-986c-ed11-835f-02f176033ddb', N'modifiers-group-list', N'<cr-item-item-modifier-group-list
    [subTemplateId]="''{{subTemplateId}}''"
    [selected]="self.cache.selectedModifierGroups"
    (onSelection)="self.onSelectModifierGroups($event)"
    (onUpdate)="self.onUpdateModifierGroups($event)"
></cr-item-item-modifier-group-list>', '2022-11-26 16:43:12.9400000 +00:00', 14, N'N', 'a324a7d6-6391-47c6-9add-299eee584296', 1, NULL)
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
></cr-image-basket-details>', '2022-11-25 09:43:45.8436147 +00:00', 1, N'N', '0e0de1ab-0ead-4f2d-8839-f497408dca3f', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('5818e2a6-a56c-ed11-835f-02f176033ddb', '5418e2a6-a56c-ed11-835f-02f176033ddb', '461282e5-1b6b-ed11-835f-02f176033ddb', N'image-content-update', N'<cr-image-basket-details
    [subTemplateId]="''{{subTemplateId}}''"
    [image]="self.cache.selectedImageBasketContent"
    [isNew]="false"
    [validator]="self.itemImageBasketContentValidator"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__file_storage_basket_content_GET | endpointAccessGrantedPipe),
        isAccessDelete: !self.item.isDeleted && (EndpointName.item__file_storage_basket_content_id_DELETE | endpointAccessGrantedPipe),
        isAccessUpdate: !self.item.isDeleted && (EndpointName.item__file_storage_basket_content_id_PUT | endpointAccessGrantedPipe)
    }"
    (closePopup)="self.removePopupTab(popupTab.activeTabIndex)"
    (update)="self.onUpdateImageBasketContent($event)"
    (delete)="self.onDeleteImageBasketContentPopUp($event)"
    (refresh)="self.onRefreshImageBasketContent()"
></cr-image-basket-details>', '2022-11-25 09:43:45.8436147 +00:00', 1, N'N', '63fe5d35-b6de-404a-b754-95ebae965d69', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('96f805bb-a96c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '80ac53c4-a86c-ed11-835f-02f176033ddb', N'combo-meal-category-new', N'<cr-item-combo-meal-category-details
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="self.cache.isNewComboMealCategory"
    [comboMealCategoryId]="self.cache.selectedComboMealCategory"
    [itemId]="self.item.id"
    [isDeleted]="self.item.isDeleted"
    (closePopup)="self.onComboMealPopupClose($event)"
    (selectFromCatalog)="self.onComboMealItemSelectFromCatalog()"
    (selectFromBasket)="self.onComboMealItemSelectFromBasket()"
></cr-item-combo-meal-category-details>', '2022-11-26 16:43:12.9400000 +00:00', 12, N'N', '1c5f2701-9f4f-4178-b6b6-cd01e1678aa1', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('97f805bb-a96c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', '1cc95bd1-a86c-ed11-835f-02f176033ddb', N'combo-meal-category-details', N'<cr-item-combo-meal-category-details
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="self.cache.isNewComboMealCategory"
    [comboMealCategoryId]="self.cache.selectedComboMealCategory"
    [itemId]="self.item.id"
    [isDeleted]="self.item.isDeleted"
    (closePopup)="self.onComboMealPopupClose($event)"
    (selectFromCatalog)="self.onComboMealItemSelectFromCatalog()"
    (selectFromBasket)="self.onComboMealItemSelectFromBasket()"
></cr-item-combo-meal-category-details>', '2022-11-26 16:43:12.9400000 +00:00', 12, N'N', 'f297691b-bee8-4664-9787-948eb4affcef', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('05ee30e0-e86c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', 'ffea1076-e86c-ed11-835f-02f176033ddb', N'combo-meal-category-item-select-from-catalog', N'<cr-item-combo-meal-category-select-from-catalog
    [subTemplateId]="''{{subTemplateId}}''"
    (closePopup)="self.onComboMealItemSelectFromCatalogPopupClose()"
    (confirm)="self.onComboMealItemSelectFromCatalogPopupClose()"
></cr-item-combo-meal-category-select-from-catalog>', '2022-11-26 16:43:12.9400000 +00:00', 10, N'N', '3ce7f04e-666d-4eea-b16a-f4ae37245314', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('06ee30e0-e86c-ed11-835f-02f176033ddb', 'b211b499-f964-ed11-8e60-4ccc6a2bb6d6', 'ffe32c83-e86c-ed11-835f-02f176033ddb', N'combo-meal-category-item-select-from-basket', N'<cr-item-combo-meal-category-select-from-basket
    [subTemplateId]="''{{subTemplateId}}''"
    (closePopup)="self.onComboMealItemSelectFromBasketPopupClose()"
    (confirm)="self.onComboMealItemSelectFromBasketPopupClose()"
    (openItemBasket)="self.onOpenComboMealItemBasketDetails($event)"
></cr-item-combo-meal-category-select-from-basket>', '2022-11-26 16:43:12.9400000 +00:00', 10, N'N', 'adc88e6f-b2ef-4516-bacc-e3d62fc15908', 1, NULL)
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
></cr-basket-population-edit>', '2022-11-26 16:43:12.9400000 +00:00', 9, N'N', 'a0c7ef52-9e90-44e1-94e7-b9a53dc25163', 1, NULL)
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
></cr-basket-population-edit>', '2022-11-26 16:43:12.9400000 +00:00', 8, N'N', 'adaa448e-adf9-4b6f-9bdc-4e6bfdc39410', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('95f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-partner', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-15 15:43:28.3700000 +00:00', 17, N'N', '3253c1b8-ae59-4117-bf15-fca8c0766c95', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('96f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9553528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups', N'<cr-partner-group-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', '2022-11-15 15:43:28.3700000 +00:00', 17, N'N', '52920435-25e0-4c68-abe9-563a63b0fb03', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('97f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9653528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-create', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
', '2022-11-15 15:43:28.3700000 +00:00', 17, N'N', '5c048e0e-263d-4537-bad7-36782de52d16', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('69e804f4-405c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-contact-person', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-15 15:43:28.3700000 +00:00', 12, N'N', '4d844e1b-3e7b-470d-8e6d-232e437b6a14', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('5237fc2e-585c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '787f7aa3-535c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-addresses-update', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>', '2022-11-15 15:43:28.3700000 +00:00', 11, N'N', '60c98789-4370-4ec3-862a-ee2a6ba0304e', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('c66aeeb7-5c5c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', 'e0c1dc2a-5b5c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-contact-persons-update', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>', '2022-11-15 15:43:28.3700000 +00:00', 10, N'N', '70c06b66-3d4d-427d-b63e-bb731c142907', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('703404c6-5d5c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9953528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-create', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
', '2022-11-15 15:43:28.3700000 +00:00', 8, N'N', 'a730e874-3487-4001-b4fe-dc5c778cb40a', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1b577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-partner', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-15 15:43:42.3866667 +00:00', 3, N'N', '2f3f95d2-2739-41ac-bc86-e14ec3bd3e91', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1c577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9553528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups', N'<cr-partner-group-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', '2022-11-15 15:43:42.3866667 +00:00', 3, N'N', '4eda749e-51f3-4d49-af1f-66a847c92473', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1d577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9653528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-create', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
', '2022-11-15 15:43:42.3866667 +00:00', 3, N'N', '9564a416-7504-4350-8e47-97d997c3d054', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1e577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-contact-person', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-15 15:43:42.3866667 +00:00', 3, N'N', 'ede41bea-558f-4259-ace2-f518cfba20d1', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1f577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '787f7aa3-535c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-addresses-update', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>', '2022-11-15 15:43:42.3866667 +00:00', 3, N'N', '81f8f069-dd91-451a-9529-9dff8bce4f89', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('20577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', 'e0c1dc2a-5b5c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-contact-persons-update', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>', '2022-11-15 15:43:42.3866667 +00:00', 3, N'N', '1b3fd477-2f0e-4750-99af-a14ab46e50b3', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('21577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9953528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-create', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
', '2022-11-15 15:43:42.3866667 +00:00', 3, N'N', 'd48f286a-c549-4e29-b0f6-34a40976b1bb', 1, NULL)
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

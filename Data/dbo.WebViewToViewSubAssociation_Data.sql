INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('61c66446-4351-ed11-8e5d-4ccc6a2bb6d6', 'ddfe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9a53528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'tax-group-definition', N'<cr-tax-group-definition
    [taxGroupLocation]="self.getTaxGroupLocation()"
    [basketSet]="self.basketSetNotModified"
    (addLocationsEvent)="self.addBasketLocationsPopulation()"
    (editLocationsEvent)="self.onEditLocationsPopulation()"
    (closeEvent)="self.popupTab.close()"
    (updateEvent)="self.updateDefinition($event)"
></cr-tax-group-definition>', '2022-10-06 11:34:56.1304670 +03:00', 1, N'N', '1a0f881d-ed8a-46d4-b2b9-348c135caea3', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('95f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category', N'<cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''partner''"
    [subTemplateId]="''{{subTemplateId}}''"
    [entityId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

<cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''contact-person''"
    [subTemplateId]="''{{subTemplateId}}''"
    [entityId]="self.partnerDetailsContactPerson.id"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-10-31 00:29:52.2530835 +02:00', 1, N'N', 'e5b479b0-6bf2-48eb-9a03-eeb41c93506f', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('96f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9553528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups', N'<cr-partner-group-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', '2022-10-31 00:29:52.2530835 +02:00', 1, N'N', '691ba187-880b-426e-98c0-1a11c9804a42', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('97f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9653528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses', N'<cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>

<cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="''{{subTemplateId}}''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
', '2022-10-31 00:29:52.2530835 +02:00', 1, N'N', '5d0bd827-52c4-46a3-b965-8bead2eba724', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('98f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9953528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-list', N'<cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>

<cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>', '2022-10-31 00:29:52.2530835 +02:00', 1, N'N', '825b5247-eb4f-4bd3-bba5-34d58683e2b2', 1, NULL)

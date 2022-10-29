INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code], [CreateDate]) VALUES ('9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'Manage mailing categories', '2022-10-21 19:28:06.2066667 +00:00', 9, N'N', 'd29b53d6-5296-4b75-8d2b-c1216b9c57ee', 1, NULL, N'<cr-partner-mailing-category-manage-dynamic
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
', N'manage-mailing-category', '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code], [CreateDate]) VALUES ('9553528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'Manage partner group', '2022-10-21 19:28:16.4566667 +00:00', 5, N'N', 'caf51637-477b-4c92-b87a-fc5f2abf1ebc', 1, NULL, N'<cr-partner-group-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', N'manage-partner-groups', '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code], [CreateDate]) VALUES ('9653528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'Manage partner addresses', '2022-10-21 19:28:30.9966667 +00:00', 6, N'N', 'c2a53895-3ebe-422d-ad6a-71d440c6244b', 1, NULL, N'<cr-addresses-details-dynamic
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
', N'manage-partner-addresses', '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code], [CreateDate]) VALUES ('9753528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'Create partner addresses', '2022-07-15 18:30:08.0566667 +00:00', 2, N'Y', '72a20b70-7366-4f91-9da6-ba776183c556', 1, NULL, N'<cr-addresses-details-dynamic
    [subTemplateId]="{{subTemplateId}}"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>', N'create-partner-addresses', '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code], [CreateDate]) VALUES ('9853528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'Manage partner contact person', '2022-07-15 18:54:23.1500000 +00:00', 3, N'Y', '78c219a1-8bc4-4214-a152-14cb6eac1990', 1, NULL, N'<cr-partner-contact-persons-details
    [subTemplateId]="{{subTemplateId}}"
    [isNew]="false"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>', N'manage-partner-contact-persons', '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code], [CreateDate]) VALUES ('9953528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'Manage partner contact persons list', '2022-10-21 19:28:47.0700000 +00:00', 4, N'N', 'dbfcc636-1ed0-4d49-a856-713562a2ca4b', 1, NULL, N'<cr-partner-contact-persons-details
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
></cr-partner-contact-persons-details>', N'manage-partner-contact-persons-list', '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code], [CreateDate]) VALUES ('9a53528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'Tax group definition', '2022-10-06 11:26:40.9663417 +03:00', 1, N'N', '20b7dea5-e747-40fe-8688-de2139e9c950', 1, NULL, N'<cr-tax-group-definition
    [taxGroupLocation]="self.getTaxGroupLocation()"
    [basketSet]="self.basketSetNotModified"
    (addLocationsEvent)="self.addBasketLocationsPopulation()"
    (editLocationsEvent)="self.onEditLocationsPopulation()"
    (closeEvent)="self.popupTab.close()"
    (updateEvent)="self.updateDefinition($event)"
></cr-tax-group-definition>', N'tax-group-definition', '2022-10-06 11:26:40.9663417 +03:00')

SET IDENTITY_INSERT [dbo].[WebViewSub] ON
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code]) VALUES (1, N'Manage mailing categories', '2022-08-04 16:42:16.9600000 +00:00', 8, N'N', 'd875b722-ebd2-465a-8e11-67f79411618a', 1, NULL, N'<cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''partner''"
    [subTemplateId]="{{subTemplateId}}"
    [entityId]="self.partnerDetails.id"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>

<cr-partner-mailing-category-manage-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''contact-person''"
    [subTemplateId]="{{subTemplateId}}"
    [entityId]="self.partnerDetailsContactPerson.id"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', N'manage-mailing-category')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code]) VALUES (2, N'Manage partner group', '2022-07-15 17:52:50.8466667 +00:00', 4, N'N', 'deae29d9-a777-4f57-9eb6-83ebf1578a42', 1, NULL, N'<cr-partner-group-manage-dynamic
    [subTemplateId]="{{subTemplateId}}"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', N'manage-partner-groups')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code]) VALUES (3, N'Manage partner addresses', '2022-07-15 18:27:49.0133333 +00:00', 5, N'N', 'c1af0a03-9e83-49b4-ab9d-d3e39b3f692f', 1, NULL, N'<cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="{{subTemplateId}}"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>

<cr-addresses-details-dynamic
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="{{subTemplateId}}"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
', N'manage-partner-addresses')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code]) VALUES (4, N'Create partner addresses', '2022-07-15 18:30:08.0566667 +00:00', 2, N'Y', '72a20b70-7366-4f91-9da6-ba776183c556', 1, NULL, N'<cr-addresses-details-dynamic
    [subTemplateId]="{{subTemplateId}}"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>', N'create-partner-addresses')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code]) VALUES (10004, N'Manage partner contact person', '2022-07-15 18:54:23.1500000 +00:00', 3, N'Y', '78c219a1-8bc4-4214-a152-14cb6eac1990', 1, NULL, N'<cr-partner-contact-persons-details
    [subTemplateId]="{{subTemplateId}}"
    [isNew]="false"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>', N'manage-partner-contact-persons')
INSERT INTO [dbo].[WebViewSub] ([ID], [Name], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [ComponentHtml], [Code]) VALUES (10005, N'Manage partner contact persons list', '2022-07-15 18:59:08.2200000 +00:00', 3, N'N', '6ac5d4b7-5294-4849-b4f6-877123e7f40d', 1, NULL, N'<cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''edit''"
    [subTemplateId]="{{subTemplateId}}"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>

<cr-partner-contact-persons-details
    *ngIf="self.popupTab.tabs[self.popupTab.activeTabIndex].details === ''create''"
    [subTemplateId]="{{subTemplateId}}"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>', N'manage-partner-contact-persons-list')
SET IDENTITY_INSERT [dbo].[WebViewSub] OFF

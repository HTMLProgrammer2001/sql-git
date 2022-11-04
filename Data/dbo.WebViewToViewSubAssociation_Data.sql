INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('69e804f4-405c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-contact-person', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-04 18:58:50.3200000 +00:00', 11, N'N', '239ff46e-d1bc-4b21-95f9-73350b340246', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('5237fc2e-585c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '787f7aa3-535c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-addresses-update', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>', '2022-11-04 18:58:50.3200000 +00:00', 10, N'N', '1ecbcd9c-90f9-4256-8fa2-2064551d4dea', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('c66aeeb7-5c5c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', 'e0c1dc2a-5b5c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-contact-persons-update', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>', '2022-11-04 18:58:50.3200000 +00:00', 9, N'N', '02af24bb-9504-4ac6-af5f-19045f2978d4', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('703404c6-5d5c-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9953528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-create', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
', '2022-11-04 18:58:50.3200000 +00:00', 7, N'N', 'e12fb3fa-f5fc-426e-8d0f-15bd896ce335', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('95f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-partner', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-04 18:58:50.3200000 +00:00', 16, N'N', '06ec3721-7bed-49a1-a079-4e3642d6c42c', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('96f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9553528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups', N'<cr-partner-group-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', '2022-11-04 18:58:50.3200000 +00:00', 16, N'N', 'f4357a91-9d95-4b61-8bfc-a544eaae3d84', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('97f78b5e-a258-ed11-8e5e-4ccc6a2bb6d6', 'd9fe3a70-4251-ed11-8e5d-4ccc6a2bb6d6', '9653528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-create', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
', '2022-11-04 18:58:50.3200000 +00:00', 16, N'N', '5166cc26-c772-43e0-ad54-ab33b659d6e0', 1, NULL)

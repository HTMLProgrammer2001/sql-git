INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1b577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-partner', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [(selectedMailingCategory)]="self.partnerDetails.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-04 19:09:23.8766667 +00:00', 2, N'N', '5a5faad9-7524-443d-a6f4-1f9359c1e1ae', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1c577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9553528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-groups', N'<cr-partner-group-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [partnerId]="self.partnerDetails.id"
    [partnerTypeId]="self.partnerDetails.partnerTypeId"
    [(selectedGroups)]="self.partnerDetails.partnerGroups"
    (cancelClickEvent)="self.onClosePartnerGroup()"
    (confirmClickEvent)="self.onClosePartnerGroup()"
></cr-partner-group-manage-dynamic>', '2022-11-04 19:09:23.8766667 +00:00', 2, N'N', '0402404c-cd4a-4c04-aa48-6725b9db452d', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1d577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9653528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-addresses-create', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    [isNew]="true"
    [itemAddress]="self.partnerDetailsAddress"
    (newAddress)="self.onConfirmPartnerAddresses($event, true)"
></cr-addresses-details-dynamic>
', '2022-11-04 19:09:23.8766667 +00:00', 2, N'N', 'da423be2-d285-491d-9c7b-c59063c46377', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1e577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9453528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-mailing-category-contact-person', N'<cr-partner-mailing-category-manage-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    (selectedMailingCategoryChange)="self.partnerDetailsContactPerson.mailingCategories = $event"
    [(selectedMailingCategory)]="self.partnerDetailsContactPerson.mailingCategories"
    (cancelClickEvent)="self.onCloseMailingCategory()"
    (confirmClickEvent)="self.onCloseMailingCategory()"
    [isNew]="!self.isNew"
></cr-partner-mailing-category-manage-dynamic>
', '2022-11-04 19:09:23.8766667 +00:00', 2, N'N', '33aaac3a-184a-47e4-af41-2f5e45539d50', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('1f577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '787f7aa3-535c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-addresses-update', N'<cr-addresses-details-dynamic
    [subTemplateId]="''{{subTemplateId}}''"
    [isNew]="false"
    (closeClickEvent)="self.onClosePartnerAddresses()"
    (confirmAddress)="self.onConfirmPartnerAddresses($event)"
    [itemAddress]="self.partnerDetailsAddress"
></cr-addresses-details-dynamic>', '2022-11-04 19:09:23.8766667 +00:00', 2, N'N', 'e224d32e-bb8f-49fa-8933-ff4a12bbf6fe', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('20577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', 'e0c1dc2a-5b5c-ed11-8e5e-4ccc6a2bb6d6', N'manage-partner-contact-persons-update', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    (confirmContactPerson)="self.onConfirmPartnerContactPersons($event)"
    [itemContactPerson]="self.partnerDetailsContactPerson"
></cr-partner-contact-persons-details>', '2022-11-04 19:09:23.8766667 +00:00', 2, N'N', '75e1e9e5-f520-4336-ad73-2f6e9e2dcfb9', 1, NULL)
INSERT INTO [dbo].[WebViewToViewSubAssociation] ([ID], [WebViewID], [WebViewSubID], [HtmlCode], [Html], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES ('21577058-635c-ed11-8e5e-4ccc6a2bb6d6', '18577058-635c-ed11-8e5e-4ccc6a2bb6d6', '9953528c-4a51-ed11-8e5d-4ccc6a2bb6d6', N'manage-partner-contact-persons-create', N'<cr-partner-contact-persons-details
    [subTemplateId]="''{{subTemplateId}}''"
    (openMailingCategory)="self.onEditContactPersonMailingCategory()"
    (closeClickEvent)="self.onClosePartnerContactPersons()"
    [isNew]="true"
    [itemContactPerson]="self.partnerDetailsContactPerson"
    (newContactPerson)="self.onConfirmPartnerContactPersons($event, true)"
></cr-partner-contact-persons-details>
', '2022-11-04 19:09:23.8766667 +00:00', 2, N'N', '4c3abb56-3934-47cf-b9d7-7fc2c7c404b3', 1, NULL)
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

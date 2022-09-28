SET IDENTITY_INSERT [dbo].[WebViewSubTemplate] ON
INSERT INTO [dbo].[WebViewSubTemplate] ([ID], [WebViewSubID], [Name], [TemplateJsonFragment], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (1, 1, N'Manage mailing category sub template', N'{"components":[{"customOptions":{"settings":{"is":"manage-mailing-category-title-header","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.GENERAL.MANAGE_MAILING_CATEGORIES","elements":[{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CONFIRM","template":"custom"},{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CANCEL","template":"custom"}],"text":{"1":"ניהול דרכי התקשרות","2":"Manage mailing category"}}},"input":true,"key":"titleHeaderFormElement","tableView":false,"label":"","type":"title-header-form-element","placeholder":"","prefix":"","customClass":"","suffix":"","multiple":false,"defaultValue":null,"protected":false,"unique":false,"persistent":true,"hidden":false,"clearOnHide":true,"refreshOn":"","redrawOn":"","modalEdit":false,"dataGridLabel":false,"labelPosition":"top","description":"","errorLabel":"","tooltip":"","hideLabel":false,"tabindex":"","disabled":false,"autofocus":false,"dbIndex":false,"customDefaultValue":"","calculateValue":"","calculateServer":false,"widget":{"type":"input"},"attributes":{},"validateOn":"change","validate":{"required":false,"custom":"","customPrivate":false,"strictDateValidation":false,"multiple":false,"unique":false},"conditional":{"show":null,"when":null,"eq":""},"overlay":{"style":"","left":"","top":"","width":"","height":""},"allowCalculateOverride":false,"encrypted":false,"showCharCount":false,"showWordCount":false,"properties":{},"allowMultipleMasks":false,"addons":[],"id":"et681am"},{"customOptions":{"settings":{"text":{"1":"ניהול דרכי ","2":"Partner mailing category management"},"isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.GENERAL.PARTNER_MANAGE_MAILING_CATEGORIES","collapsible":false,"defaultCollapseState":false}},"input":true,"key":"panelFormElement","tableView":false,"label":"","type":"panel-form-element","components":[{"customOptions":{"settings":{"is":"manage-mailing-category-grid","columns":[{"titleTranslateKey":"PARTNER.DETAILS.GENERAL.DISPLAY_NAME","field":"displayName","type":"text"},{"titleTranslateKey":"PARTNER.DETAILS.GENERAL.EMAIL","field":"email","type":"boolean","allowInCellEditing":true,"width":"120px"},{"titleTranslateKey":"PARTNER.DETAILS.GENERAL.SMS","field":"sms","type":"boolean","allowInCellEditing":true,"width":"120px"}],"dataSource":{"responseList":[{"id":1,"displayName":"Display name","email":true,"sms":true}],"page":1,"size":5,"totalElements":1},"allowMultiSelect":true,"uniqueField":"id"}},"input":true,"key":"gridFormElement","tableView":false,"label":"","type":"grid-form-element","placeholder":"","prefix":"","customClass":"","suffix":"","multiple":false,"defaultValue":null,"protected":false,"unique":false,"persistent":true,"hidden":false,"clearOnHide":true,"refreshOn":"","redrawOn":"","modalEdit":false,"dataGridLabel":false,"labelPosition":"top","description":"","errorLabel":"","tooltip":"","hideLabel":false,"tabindex":"","disabled":false,"autofocus":false,"dbIndex":false,"customDefaultValue":"","calculateValue":"","calculateServer":false,"widget":{"type":"input"},"attributes":{},"validateOn":"change","validate":{"required":false,"custom":"","customPrivate":false,"strictDateValidation":false,"multiple":false,"unique":false},"conditional":{"show":null,"when":null,"eq":""},"overlay":{"style":"","left":"","top":"","width":"","height":""},"allowCalculateOverride":false,"encrypted":false,"showCharCount":false,"showWordCount":false,"properties":{},"allowMultipleMasks":false,"addons":[],"id":"ehgeu0z"}],"placeholder":"","prefix":"","customClass":"","suffix":"","multiple":false,"defaultValue":null,"protected":false,"unique":false,"persistent":true,"hidden":false,"clearOnHide":true,"refreshOn":"","redrawOn":"","modalEdit":false,"dataGridLabel":false,"labelPosition":"top","description":"","errorLabel":"","tooltip":"","hideLabel":false,"tabindex":"","disabled":false,"autofocus":false,"dbIndex":false,"customDefaultValue":"","calculateValue":"","calculateServer":false,"widget":null,"attributes":{},"validateOn":"change","validate":{"required":false,"custom":"","customPrivate":false,"strictDateValidation":false,"multiple":false,"unique":false},"conditional":{"show":null,"when":null,"eq":""},"overlay":{"style":"","left":"","top":"","width":"","height":""},"allowCalculateOverride":false,"encrypted":false,"showCharCount":false,"showWordCount":false,"properties":{},"allowMultipleMasks":false,"addons":[],"tree":false,"lazyLoad":false,"id":"econkbd"}]}', '2022-08-04 15:19:53.1366667 +00:00', 14, N'N', '280869be-6d8f-4e9a-aaa0-ffa7fe1f1eee', 1, NULL, '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSubTemplate] ([ID], [WebViewSubID], [Name], [TemplateJsonFragment], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (2, 2, N'Manage partner group sub template', N'{"components":[{"customOptions":{"settings":{"is":"manage-partner-group-title-header","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.MANAGE_GROUP.TITLE","elements":[{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CONFIRM","template":"custom"},{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CANCEL","template":"custom"}],"text":{"1":"ניהול קבוצות","2":"Manage groups"}}},"input":true,"key":"titleHeaderFormElement","tableView":false,"label":"","type":"title-header-form-element"},{"customOptions":{"settings":{"text":{"1":"ניהול קבוצת פרטנר","2":"Partner group management"},"isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.MANAGE_GROUP.PANEL_TITLE"}},"input":true,"key":"panelFormElement","tableView":false,"label":"","type":"panel-form-element","components":[{"customOptions":{"settings":{"is":"manage-partner-groups-grid","columns":[{"titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME","field":"displayName","type":"text"},{"titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED","field":"activated","type":"boolean","allowInCellEditing":true,"width":"120px"},{"titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.FROM","field":"from","type":"date","allowInCellEditing":true,"width":"180px"},{"titleTranslateKey":"PARTNER.DETAILS.MANAGE_GROUP.TO","field":"to","type":"date","allowInCellEditing":true,"width":"180px"}],"dataSource":{"responseList":[{"id":1,"displayName":"Display name","activated":true,"from":"1991-06-01T00:00:00.000Z","to":"1991-07-01T00:00:00.000Z"}],"page":1,"size":5,"totalElements":1},"allowMultiSelect":true,"uniqueField":"id"}},"input":true,"key":"gridFormElement","tableView":false,"label":"","type":"grid-form-element"}]}]}', '2022-03-07 16:20:39.3800000 +00:00', 4, N'N', '53b317fb-7568-4055-b114-8b24aabd03af', 1, NULL, '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSubTemplate] ([ID], [WebViewSubID], [Name], [TemplateJsonFragment], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (3, 3, N'Manage partner addresses sub template', N'{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-title-header","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.DETAILS_TITLE","elements":[{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CONFIRM","template":"custom"},{"appearance":"icon-button","iconSvg":"icon-close","template":"custom"}],"text":{"1":"פרטי כתובת","2":"Address details"}}},"input":true,"key":"titleHeaderFormElement","tableView":false,"label":"","type":"title-header-form-element"},{"input":true,"key":"wellFormElement","tableView":false,"label":"","type":"well-form-element","components":[{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-addresses-type","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE","text":{"1":"סוג כתובת","2":"Address type"}}},"input":true,"key":"smartDropdownFormElement","tableView":false,"label":"","type":"smart-dropdown-form-element"}],"width":2,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-country","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.COUNTRY","text":{"1":"ארץ","2":"Country"}}},"input":true,"key":"smartComboboxFormElement","tableView":false,"label":"","type":"smart-combobox-form-element"}],"width":2,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-state","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.STATE"}},"input":true,"key":"smartComboboxFormElement1","tableView":false,"label":"","type":"smart-combobox-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-county","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.COUNTY"}},"input":true,"key":"smartComboboxFormElement2","tableView":false,"label":"","type":"smart-combobox-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-city","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.CITY","text":{"1":"עיר","2":"City"}}},"input":true,"key":"smartComboboxFormElement3","tableView":false,"label":"","type":"smart-combobox-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2}],"key":"columns","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-zip","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.ZIP","text":{"1":"מיקוד","2":"Zip"}}},"input":true,"key":"editTextFormElement","tableView":false,"label":"","type":"edit-text-form-element"}],"width":2,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-street","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.STREET","text":{"1":"רחוב","2":"Street"}}},"input":true,"key":"smartComboboxFormElement4","tableView":false,"label":"","type":"smart-combobox-form-element"}],"width":2,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-block","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.BLOCK","text":{"1":"בניין","2":"Block"}}},"input":true,"key":"editTextFormElement1","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-street-no","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.STREET_NUMBER","text":{"1":"מספר ברחוב","2":"Street no."}}},"input":true,"key":"editTextFormElement2","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-apartment","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.APARTMENT","text":{"1":"דירה","2":"Apartment"}}},"input":true,"key":"editTextFormElement3","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2}],"key":"columns1","type":"columns","input":false,"tableView":false}]}]}', '2022-03-10 11:17:25.4733333 +00:00', 15, N'N', 'ffb81496-7d2b-42c4-a126-49e532013c06', 1, NULL, '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSubTemplate] ([ID], [WebViewSubID], [Name], [TemplateJsonFragment], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (4, 4, N'Create partner addresses sub template', N'{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-title-header","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.DETAILS_TITLE","elements":[{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CREATE","template":"custom"},{"appearance":"icon-button","iconSvg":"icon-close","template":"custom"}],"text":{"1":"פרטי כתובת","2":"Address details"}}},"input":true,"key":"titleHeaderFormElement","tableView":false,"label":"","type":"title-header-form-element"},{"input":true,"key":"wellFormElement","tableView":false,"label":"","type":"well-form-element","components":[{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"create-addresses-type","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE","text":{"1":"סוג כתובת","2":"Address type"}}},"input":true,"key":"smartDropdownFormElement","tableView":false,"label":"","type":"smart-dropdown-form-element"}],"width":2,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-country","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.COUNTRY","text":{"1":"ארץ","2":"Country"}}},"input":true,"key":"smartComboboxFormElement1","tableView":false,"label":"","type":"smart-combobox-form-element"}],"width":2,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-state","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.STATE","text":{"1":"מדינה","2":"State"}}},"input":true,"key":"smartComboboxFormElement","tableView":false,"label":"","type":"smart-combobox-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-county","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.COUNTY","text":{"1":"מחוז","2":"County"}}},"input":true,"key":"smartComboboxFormElement2","tableView":false,"label":"","type":"smart-combobox-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-city","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.CITY","text":{"1":"עיר","2":"City"}}},"input":true,"key":"smartComboboxFormElement3","tableView":false,"label":"","type":"smart-combobox-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2}],"key":"columns","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-zip","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.ZIP","text":{"1":"מיקוד","2":"Zip"}}},"input":true,"key":"editTextFormElement","tableView":false,"label":"","type":"edit-text-form-element"}],"width":2,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-street","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.STREET","text":{"1":"רחוב","2":"Street"}}},"input":true,"key":"smartComboboxFormElement4","tableView":false,"label":"","type":"smart-combobox-form-element"}],"width":2,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-block","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.BLOCK","text":{"1":"בניין","2":"Block"}}},"input":true,"key":"editTextFormElement1","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-street-no","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.STREET_NUMBER","text":{"1":"מספר ברחוב","2":"Street no."}}},"input":true,"key":"editTextFormElement2","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2},{"components":[{"customOptions":{"settings":{"is":"create-partner-addresses-apartment","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.APARTMENT"}},"input":true,"key":"editTextFormElement3","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":2,"offset":0,"push":0,"pull":0,"currentWidth":2}],"key":"columns1","type":"columns","input":false,"tableView":false}]}]}', '2022-07-15 18:29:53.7600000 +00:00', 5, N'Y', 'c23610df-af94-4e3c-a2fb-420430e49c51', 1, NULL, '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSubTemplate] ([ID], [WebViewSubID], [Name], [TemplateJsonFragment], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (10004, 1, N'test', N'{"components":[{"customOptions":{"settings":{"is":"manage-mailing-category-title-header","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.GENERAL.MANAGE_MAILING_CATEGORIES","elements":[{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CONFIRM","template":"custom"},{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CANCEL","template":"custom"}],"text":{"1":"ניהול דרכי התקשרות","2":"Manage mailing category"}}},"input":true,"key":"titleHeaderFormElement","tableView":false,"label":"","type":"title-header-form-element","placeholder":"","prefix":"","customClass":"","suffix":"","multiple":false,"defaultValue":null,"protected":false,"unique":false,"persistent":true,"hidden":false,"clearOnHide":true,"refreshOn":"","redrawOn":"","modalEdit":false,"dataGridLabel":false,"labelPosition":"top","description":"","errorLabel":"","tooltip":"","hideLabel":false,"tabindex":"","disabled":false,"autofocus":false,"dbIndex":false,"customDefaultValue":"","calculateValue":"","calculateServer":false,"widget":{"type":"input"},"attributes":{},"validateOn":"change","validate":{"required":false,"custom":"","customPrivate":false,"strictDateValidation":false,"multiple":false,"unique":false},"conditional":{"show":null,"when":null,"eq":""},"overlay":{"style":"","left":"","top":"","width":"","height":""},"allowCalculateOverride":false,"encrypted":false,"showCharCount":false,"showWordCount":false,"properties":{},"allowMultipleMasks":false,"addons":[],"id":"et681am"},{"customOptions":{"settings":{"text":{"1":"ניהול דרכי ","2":"Partner mailing category management"},"isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.GENERAL.PARTNER_MANAGE_MAILING_CATEGORIES","collapsible":false,"defaultCollapseState":false}},"input":true,"key":"panelFormElement","tableView":false,"label":"","type":"panel-form-element","components":[{"customOptions":{"settings":{"is":"manage-mailing-category-grid","columns":[{"titleTranslateKey":"PARTNER.DETAILS.GENERAL.DISPLAY_NAME","field":"displayName","type":"text"},{"titleTranslateKey":"PARTNER.DETAILS.GENERAL.EMAIL","field":"email","type":"boolean","allowInCellEditing":true,"width":"120px"},{"titleTranslateKey":"PARTNER.DETAILS.GENERAL.SMS","field":"sms","type":"boolean","allowInCellEditing":true,"width":"120px"}],"dataSource":{"responseList":[{"id":1,"displayName":"Display name","email":true,"sms":true}],"page":1,"size":5,"totalElements":1},"allowMultiSelect":true,"uniqueField":"id"}},"input":true,"key":"gridFormElement","tableView":false,"label":"","type":"grid-form-element","placeholder":"","prefix":"","customClass":"","suffix":"","multiple":false,"defaultValue":null,"protected":false,"unique":false,"persistent":true,"hidden":false,"clearOnHide":true,"refreshOn":"","redrawOn":"","modalEdit":false,"dataGridLabel":false,"labelPosition":"top","description":"","errorLabel":"","tooltip":"","hideLabel":false,"tabindex":"","disabled":false,"autofocus":false,"dbIndex":false,"customDefaultValue":"","calculateValue":"","calculateServer":false,"widget":{"type":"input"},"attributes":{},"validateOn":"change","validate":{"required":false,"custom":"","customPrivate":false,"strictDateValidation":false,"multiple":false,"unique":false},"conditional":{"show":null,"when":null,"eq":""},"overlay":{"style":"","left":"","top":"","width":"","height":""},"allowCalculateOverride":false,"encrypted":false,"showCharCount":false,"showWordCount":false,"properties":{},"allowMultipleMasks":false,"addons":[],"id":"ehgeu0z"}],"placeholder":"","prefix":"","customClass":"","suffix":"","multiple":false,"defaultValue":null,"protected":false,"unique":false,"persistent":true,"hidden":false,"clearOnHide":true,"refreshOn":"","redrawOn":"","modalEdit":false,"dataGridLabel":false,"labelPosition":"top","description":"","errorLabel":"","tooltip":"","hideLabel":false,"tabindex":"","disabled":false,"autofocus":false,"dbIndex":false,"customDefaultValue":"","calculateValue":"","calculateServer":false,"widget":null,"attributes":{},"validateOn":"change","validate":{"required":false,"custom":"","customPrivate":false,"strictDateValidation":false,"multiple":false,"unique":false},"conditional":{"show":null,"when":null,"eq":""},"overlay":{"style":"","left":"","top":"","width":"","height":""},"allowCalculateOverride":false,"encrypted":false,"showCharCount":false,"showWordCount":false,"properties":{},"allowMultipleMasks":false,"addons":[],"tree":false,"lazyLoad":false,"id":"econkbd"}]}', '2022-03-17 20:51:19.2400000 +00:00', 2, N'Y', 'ad4d42da-7e76-49de-b24c-21c48e8da38b', 1, NULL, '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSubTemplate] ([ID], [WebViewSubID], [Name], [TemplateJsonFragment], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (10005, 10005, N'Manage partner contact persons sub template', N'{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-persons-title-header","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.DETAILS_TITLE","elements":[{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CREATE","template":"custom"},{"appearance":"icon-button","iconSvg":"icon-close","template":"custom"}],"text":{"1":"Contact person details he","2":"Contact person details"}}},"input":true,"key":"titleHeaderFormElement","tableView":false,"label":"","type":"title-header-form-element"},{"input":true,"key":"wellFormElement","tableView":false,"label":"","type":"well-form-element","components":[{"label":"Columns","columns":[{"components":[{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-code","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.CODE","text":{"1":"Code he","2":"Code "}}},"input":true,"key":"editTextFormElement","tableView":false,"label":"","type":"edit-text-form-element"}],"width":4,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":4},{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-first-name","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME","text":{"1":"First name he","2":"First  name"}}},"input":true,"key":"editTextFormElement1","tableView":false,"label":"","type":"edit-text-form-element"}],"width":4,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":4},{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-last-name","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME","text":{"1":"Last name he","2":"Last name"}}},"input":true,"key":"editTextFormElement2","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":4,"offset":0,"push":0,"pull":0,"currentWidth":4}],"key":"columns1","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-display-name","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME","text":{"1":"Display name he","2":"Display name"}}},"input":true,"key":"editTextFormElement3","tableView":false,"label":"","type":"edit-text-form-element"}],"width":4,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":4},{"components":[{"customOptions":{"settings":{"is":"manage-contact-person-type","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.CONTACT_PERSON_TYPE","text":{"1":"Contact person type he","2":"Contact person type"}}},"input":true,"key":"smartDropdownFormElement","tableView":false,"label":"","type":"smart-dropdown-form-element"}],"width":4,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":4},{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-email","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.EMAIL","text":{"1":"Email he","2":"Email"}}},"input":true,"key":"editTextFormElement4","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":4,"offset":0,"push":0,"pull":0,"currentWidth":4}],"key":"columns2","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-cellural","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.CELLULAR","text":{"1":"Cellular he","2":"Cellular"}}},"input":true,"key":"editTextFormElement5","tableView":false,"label":"","type":"edit-text-form-element"}],"width":4,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":4},{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-birthday","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.BIRTHDAY","text":{"1":"Birthday he","2":"Birthday "}}},"input":true,"key":"datePickerFormElement","tableView":false,"label":"","type":"date-picker-form-element"}],"width":4,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":4},{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-passport","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.PASSPORT","text":{"1":"Passport he","2":"Passport"}}},"input":true,"key":"editTextFormElement6","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":4,"offset":0,"push":0,"pull":0,"currentWidth":4}],"key":"columns3","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-fax","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.FAX","text":{"1":"Fax he","2":"Fax"}}},"input":true,"key":"editTextFormElement7","tableView":false,"label":"","type":"edit-text-form-element"}],"width":4,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":4},{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-phone1","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_1","text":{"1":"Phone 1 he","2":"Phone 1"}}},"input":true,"key":"editTextFormElement8","tableView":false,"label":"","type":"edit-text-form-element"}],"width":4,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":4},{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-phone2","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.PHONE_NUMBER_2","text":{"1":"Phone 2 he","2":"Phone 2"}}},"input":true,"key":"editTextFormElement9","tableView":false,"label":"","type":"edit-text-form-element"}],"size":"md","width":4,"offset":0,"push":0,"pull":0,"currentWidth":4}],"key":"columns4","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-is-partner-club","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.PARTNER_CLUB","text":{"1":"Partner club he","2":"Partner club"}}},"input":true,"key":"checkboxFormElement","tableView":false,"label":"","type":"checkbox-form-element"}],"width":4,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":4},{"components":[{"customOptions":{"settings":{"is":"manage-contact-person-partner","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.PARTNER","text":{"1":"Partner he","2":"Partner "}}},"input":true,"key":"smartDropdownFormElement1","tableView":false,"label":"","type":"smart-dropdown-form-element"}],"width":8,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":8}],"key":"columns5","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-registration-date","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.REGISTRATION_DATE","text":{"1":"Registration date he","2":"Registration date"}}},"input":true,"key":"datePickerFormElement1","tableView":false,"label":"","type":"date-picker-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6},{"components":[{"customOptions":{"settings":{"is":"manage-contact-person-creation-store","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.CREATION_STORE","text":{"1":"Creation store he","2":"Creation store"}}},"input":true,"key":"smartDropdownFormElement2","tableView":false,"label":"","type":"smart-dropdown-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6}],"key":"columns6","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-remark","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.CONTACT_PERSON.REMARK","text":{"1":"Remark he","2":"Remark"}}},"input":true,"key":"editTextFormElement10","tableView":false,"label":"","type":"edit-text-form-element"}],"width":12,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":12},{"components":[],"width":0,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":0}],"key":"columns7","type":"columns","input":false,"tableView":false}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6},{"components":[{"customOptions":{"settings":{"text":{"1":"דרכי התקשרות","2":"Mailing categories"},"isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.GENERAL.MAILING_CATEGORIES","wrapperClasses":"cr-mailing-wrapper","headerClasses":"cr-panel-header-wrapper-light"}},"input":true,"key":"panelFormElement","tableView":false,"label":"","type":"panel-form-element","components":[{"customOptions":{"settings":{"is":"manage-partner-contact-person-mailing-category","editIcon":"icon-edit","editable":true}},"input":true,"key":"partnerMailingCategoriesFormElement","tableView":false,"label":"","type":"partner-mailing-categories-form-element"}]}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6}],"key":"columns","type":"columns","input":false,"tableView":false}]}]}', '2022-07-15 20:09:58.3366667 +00:00', 7, N'N', '4f1be0c8-9980-4759-92ff-4c8dbcb9fb94', 1, NULL, '2022-09-28 17:31:50.1884343 +03:00')
INSERT INTO [dbo].[WebViewSubTemplate] ([ID], [WebViewSubID], [Name], [TemplateJsonFragment], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES (10006, 3, N'test-Manage partner addresses sub template', N'{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-title-header","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.DETAILS_TITLE","elements":[{"appearance":"primary-button","nameTranslateKey":"COMMON.BUTTON.CONFIRM","template":"custom"},{"appearance":"icon-button","iconSvg":"icon-close","template":"custom"}],"text":{"1":"פרטי כתובת","2":"Address details"}}},"input":true,"key":"titleHeaderFormElement","tableView":false,"label":"","type":"title-header-form-element"},{"input":true,"key":"wellFormElement","tableView":false,"label":"","type":"well-form-element","components":[{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-addresses-type","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE","text":{"1":"סוג כתובת","2":"Address type"}}},"input":true,"key":"smartDropdownFormElement","tableView":false,"label":"","type":"smart-dropdown-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-country","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.COUNTRY","text":{"1":"ארץ","2":"Country"}}},"input":true,"key":"smartComboboxFormElement","tableView":false,"label":"","type":"smart-combobox-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6}],"key":"columns2","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-state","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.STATE"}},"input":true,"key":"smartComboboxFormElement1","tableView":false,"label":"","type":"smart-combobox-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-county","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.COUNTY"}},"input":true,"key":"smartComboboxFormElement2","tableView":false,"label":"","type":"smart-combobox-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6}],"key":"columns3","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-city","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.CITY","text":{"1":"עיר","2":"City"}}},"input":true,"key":"smartComboboxFormElement3","tableView":false,"label":"","type":"smart-combobox-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-zip","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.ZIP","text":{"1":"מיקוד","2":"Zip"}}},"input":true,"key":"editTextFormElement","tableView":false,"label":"","type":"edit-text-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6}],"key":"columns4","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-street","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.STREET","text":{"1":"רחוב","2":"Street"}}},"input":true,"key":"smartComboboxFormElement4","tableView":false,"label":"","type":"smart-combobox-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-block","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.BLOCK","text":{"1":"בניין","2":"Block"}}},"input":true,"key":"editTextFormElement1","tableView":false,"label":"","type":"edit-text-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6}],"key":"columns5","type":"columns","input":false,"tableView":false},{"label":"Columns","columns":[{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-street-no","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.STREET_NUMBER","text":{"1":"מספר ברחוב","2":"Street no."}}},"input":true,"key":"editTextFormElement2","tableView":false,"label":"","type":"edit-text-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6},{"components":[{"customOptions":{"settings":{"is":"manage-partner-addresses-apartment","isUseTranslateKey":true,"translateKey":"PARTNER.DETAILS.ADDRESS.APARTMENT","text":{"1":"דירה","2":"Apartment"}}},"input":true,"key":"editTextFormElement3","tableView":false,"label":"","type":"edit-text-form-element"}],"width":6,"offset":0,"push":0,"pull":0,"size":"md","currentWidth":6}],"key":"columns6","type":"columns","input":false,"tableView":false}]}]}', '2022-08-01 22:44:39.3233333 +00:00', 2, N'N', '7f14f5e2-ed07-4e3d-9f77-2ec3e776b45c', 1, NULL, '2022-09-28 17:31:50.1884343 +03:00')
SET IDENTITY_INSERT [dbo].[WebViewSubTemplate] OFF

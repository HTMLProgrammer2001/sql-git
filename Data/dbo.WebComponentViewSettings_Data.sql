INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('3ea1684d-7c69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy1', N'Hierarchy 1', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "validationField": "itemHierarchyValues.1",
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_1''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel1DropdownCache''"
    (valueChange)="self.onSelectValue($event, 1)"
    [(value)]="self.item.itemHierarchyValues[''1'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 1, hierarchyParentId: null}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''itemHierarchyValues.1''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''1''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:49:28.6666667 +00:00', 5, N'N', '08ccfdd3-f7b0-490d-b67d-ba760fec8ce6', 1, NULL, '2022-11-21 09:10:12.3917246 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('996762e0-7e69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy2', N'Hierarchy 2', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_2''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.itemHierarchyValues[''1''] || self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel2DropdownCache''"
    (valueChange)="self.onSelectValue($event, 2)"
    [(value)]="self.item.itemHierarchyValues[''2'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 2, hierarchyParentId: self.item.itemHierarchyValues[''1'']}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''2''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:49:43.6100000 +00:00', 2, N'N', 'b4eb2187-551f-497a-82fc-1613b3702d03', 1, NULL, '2022-11-21 09:28:37.9694617 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8d84b11a-7f69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy3', N'Hierarchy 3', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_3''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.itemHierarchyValues[''2''] || self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel3DropdownCache''"
    (valueChange)="self.onSelectValue($event, 3)"
    [(value)]="self.item.itemHierarchyValues[''3'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 3, hierarchyParentId: self.item.itemHierarchyValues[''2'']}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''3''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:49:58.4500000 +00:00', 2, N'N', 'f8eb891b-9f73-4088-a359-052a2328250e', 1, NULL, '2022-11-21 09:30:15.7957901 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1e5a5a4f-7f69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy4', N'Hierarchy 4', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_4''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.itemHierarchyValues[''3''] || self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel4DropdownCache''"
    (valueChange)="self.onSelectValue($event, 4)"
    [(value)]="self.item.itemHierarchyValues[''4'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 4, hierarchyParentId: self.item.itemHierarchyValues[''3'']}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''4''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:50:13.4800000 +00:00', 3, N'N', 'c95cc868-f20f-4a98-bfe3-ec7c2b0d8d5c', 1, NULL, '2022-11-21 09:31:44.1437854 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('12b2a284-7f69-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-hierarchy5', N'Hierarchy 5', N'{
    "defaultValue": {
        "isUseItemHierarchyLabel": true,
        "isUseTranslateKey": false
    },
    "fieldSettings": {
        "dropdown": {
            "isItemHierarchyDropdownWithBackendLabels": true
        }
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Hierarchy_5''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_hierarchy_level_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_hierarchy_level_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.itemHierarchyValues[''4''] || self.item.isDeleted"
    [requestDataWhenOpen]="true"
    [dataCacheName]="''ItemHierarchyLevel5DropdownCache''"
    (valueChange)="self.onSelectValue($event, 5)"
    [(value)]="self.item.itemHierarchyValues[''5'']"
    [listItemsFunctionAdditionalParameter]="{hierarchyLevel: 5, hierarchyParentId: self.item.itemHierarchyValues[''4'']}"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemHierarchyListDropdownFunction"
    [getOneItemFunction]="self.loadItemHierarchyDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{isUseItemHierarchyLabel}} ? self.levelLabels?.levelLabels[''5''] : {{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:50:27.7633333 +00:00', 2, N'N', '15badf61-2cd0-4a74-a9a0-c41a56a8f974', 1, NULL, '2022-11-21 09:33:13.5371410 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d04e1898-8069-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-manufacture', N'Manufacture', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.MANUFACTURE"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Manufacture''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_manufacture_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_manufacture_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemManufactureDropdownCache''"
    [(value)]="self.item.manufactureID"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadManufacturesListDropdownFunction"
    [getOneItemFunction]="self.loadManufactureDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:50:42.8500000 +00:00', 2, N'N', '388fe919-ea3c-4c8e-856a-a816de791c5a', 1, NULL, '2022-11-21 09:40:55.6813648 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f15f8e28-8169-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-brand', N'Brand', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.BRAND"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.General_brand''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_brand_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__item_brand_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemBrandDropdownCache''"
    [(value)]="self.item.itemBrandID"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadItemBrandListDropdownFunction"
    [getOneItemFunction]="self.loadItemBrandDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:50:57.0100000 +00:00', 2, N'N', 'f92d1409-dcdb-4666-846c-4f9cb83c4cf3', 1, NULL, '2022-11-21 09:44:58.0470385 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e1788194-8169-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-preferred-supplier', N'Preferred supplier', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.PREFERRED_SUPPLIER"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Preferred_supplier''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__partner_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__partner_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''PreferredSupplierDropdownCache''"
    [(value)]="self.item.prefferedSupplierID"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadPreferredSupplierListDropdownFunction"
    [getOneItemFunction]="self.loadPreferredSupplierDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:51:12.0500000 +00:00', 2, N'N', 'c5b25737-6940-4b07-b3dc-2b3ad376bd4c', 1, NULL, '2022-11-21 09:47:59.1564129 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b95693f0-8169-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-unit-type', N'Unit type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.UNIT_TYPE"
    }
}', N'<cr-control-dropdown 
    [(dataValue)]="self.item.unitTypeId" 
    [isDisabled]="self.item.isDeleted" 
    [dataSource]="self.unitTypesForDropdown"
    [dataValueField]="''id''" 
    [dataDisplayField]="''name''" 
    [elementName]="''dropdown:Item_details.Unit_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [class]=''{{classes}}''
></cr-control-dropdown>', '2022-11-25 09:51:30.4266667 +00:00', 3, N'N', 'e3ff8ad1-5c22-4372-9c0c-7f67ff4cc80f', 1, NULL, '2022-11-21 09:50:33.6238905 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('05904893-8269-ed11-835f-02f176033ddb', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-supplier-cat-num', N'Supplier cat num', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.SUPPLIER_CAT_NUM"
    },
    "fieldSettings": {
        "validationField": "supplierCatNum"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Supplier_cat_num''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.supplierCatNum"
    [validator]="self.validator"
    [validationField]="''supplierCatNum''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.item.isDeleted || {{disabled}}"
></cr-control-edit>', '2022-11-25 09:51:44.2233333 +00:00', 4, N'N', '56640f7c-d46b-4649-8b8d-97a3cd93dd97', 1, NULL, '2022-11-21 09:55:06.6024581 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9a7612c9-8469-ed11-835f-02f176033ddb', '07bc3452-8469-ed11-835f-02f176033ddb', N'item-details-collections', N'Collections', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.COLLECTIONS"
    }
}', N'<cr-multi-select-smart-control
    [(values)]="self.item.collections"
    [dataCacheName]="''CollectionsDropdownCache111''"
    [isDisabled]="self.item.isDeleted"
    [elementName]="''smart-multi-select:Item_details.Collections''"
    [getListItemsFunction]="self.loadCollectionListMultiselectFunction"
    [getSelectedItemsFunction]="self.loadCollectionMultiselectFunction"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_collection_dropdown_ids_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_collection_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [textField]="''name''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [valueField]="''id''"
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [class]=''{{classes}}''
></cr-multi-select-smart-control>', '2022-11-25 09:52:01.7033333 +00:00', 2, N'N', 'e377cba4-eb89-465c-b9f6-263f924e7c31', 1, NULL, '2022-11-21 10:10:55.8383386 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1ccfb389-9269-ed11-835f-02f176033ddb', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-tax-group', N'Tax group', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.TAX_GROUP"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Tax_group''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__tax_group_id_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
                      (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
                      (self.EndpointName.item__tax_group_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''TaxGroupDropdownCache''"
    [(currentItemValue)]="self.item.taxGroup"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getListItemsFunction]="self.loadTaxGroupListDropdownFunction"
    [getOneItemFunction]="self.loadTaxGroupDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:52:16.2233333 +00:00', 2, N'N', 'a832db71-4994-494a-a440-24eda1591c36', 1, NULL, '2022-11-21 11:49:22.4757660 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a39f996f-9369-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-active', N'Active', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.ACTIVE",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Active''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeActiveCheckbox($event)"
    [(dataValue)]="self.item.isValid"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:52:30.6966667 +00:00', 2, N'N', 'd2e52a79-3447-450b-a185-834fdbdd067f', 1, NULL, '2022-11-21 11:55:48.1801251 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e9de7ac7-9369-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-active-from', N'Active from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.ACTIVE_FROM"
    },
    "fieldSettings": {
        "validationField": "validFrom"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:52:47.3233333 +00:00', 2, N'N', '6de0f93b-ee4a-4a28-b2d1-882d3bf7006a', 1, NULL, '2022-11-21 11:58:15.6180841 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7d6727f0-9369-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-active-to', N'Active to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.ACTIVE_TO"
    },
    "fieldSettings": {
        "validationField": "validTo"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Active_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.validTo"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.item.isValid || self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:53:03.1800000 +00:00', 2, N'N', '8dbe425d-7804-4aee-a30f-a888a1f2943c', 1, NULL, '2022-11-21 11:59:23.8576637 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('96daeff7-9469-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-frozen', N'Frozen', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.FROZEN",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    (dataValueChange)="self.changeFrozenCheckbox($event)"
    [(dataValue)]="self.item.isFrozen"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:53:18.8066667 +00:00', 2, N'N', '4cce1d5e-2d49-464f-a2b3-6c0239880643', 1, NULL, '2022-11-21 12:06:46.4121110 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('24a1613e-9569-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-frozen-from', N'Frozen from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.FROZEN_FROM"
    },
    "fieldSettings": {
        "validationField": "frozenFrom"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenFrom"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:53:34.5200000 +00:00', 2, N'N', 'b8f330b6-e360-4dc7-b8f7-c972edbcf3da', 1, NULL, '2022-11-21 12:08:44.5982628 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('49d39875-9569-ed11-835f-02f176033ddb', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-frozen-to', N'Frozen to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.FROZEN_TO"
    },
    "fieldSettings": {
        "validationField": "frozenTo"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.item.isFrozen || self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:53:49.4633333 +00:00', 2, N'N', '25ed92e2-f141-4c1b-8566-927420300bb1', 1, NULL, '2022-11-21 12:10:17.2346825 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6fa0223a-9669-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-sale-item', N'Sale item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.SALE_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Sale_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.saleItem"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:54:04.4133333 +00:00', 2, N'N', '53efcb36-3016-439e-b6ba-1819329674a8', 1, NULL, '2022-11-21 12:15:55.6627013 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9e7fbc78-9669-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-inventory-item', N'Inventory item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.INVENTORY_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Inventory_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.inventoryItem"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:54:18.8333333 +00:00', 2, N'N', 'fca4b73b-893b-4511-830e-ce8cd42debd2', 1, NULL, '2022-11-21 12:17:31.9983646 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('26f9f8b2-9669-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-purchase-item', N'Purchase item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.PURCHASE_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseItem"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:54:33.3433333 +00:00', 2, N'N', '2782ae14-bbb5-45d7-9045-baeea1c93fad', 1, NULL, '2022-11-21 12:19:09.7025446 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0ed416e1-9669-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-refundable', N'Refundable', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.REFUNDABLE",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Refundable''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.refundable"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:54:48.8833333 +00:00', 2, N'N', '72cf21c8-55ba-4d56-a0bc-99bfab2afd24', 1, NULL, '2022-11-21 12:20:27.0733966 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bfc4320f-9769-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-download-to-pos', N'Download to POS', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.DOWNLOAD_TO_POS",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Download_to_pos''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.downloadToPOS"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:55:03.9400000 +00:00', 2, N'N', '520d0e40-c1ba-4372-b0aa-12fc4954b5d6', 1, NULL, '2022-11-21 12:21:44.4316991 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('64217b46-9769-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-consignment-item', N'Consignment item', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.CONSIGNMENT_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Consignment_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isConsignmentItem"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:55:19.4700000 +00:00', 2, N'N', '2c109de2-1830-40ec-9ada-f4d78d042450', 1, NULL, '2022-11-21 12:23:17.1806180 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cdeabae1-9769-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-gift-card', N'Gift card', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.GIFT_CARD_ITEM",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Gift_card_item''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.giftCard"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:55:34.8433333 +00:00', 2, N'N', '06c803aa-75c7-45d9-8315-07d4d1c02f87', 1, NULL, '2022-11-21 12:27:37.6454989 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('07b8411a-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-distribution-recommendation', N'Distribution recommendation', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.DISTRIBUTION_RECOMMENDATION",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Distribution_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.distributionRecommendation"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:55:49.0900000 +00:00', 2, N'N', '0778e0c4-9252-4309-a45e-8a6e7e2d3f63', 1, NULL, '2022-11-21 12:29:12.4813447 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('abeead48-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-purchase-recommendation', N'Purchase recommendation', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.PURCHASE_RECOMMENDATION",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Purchase_recommendation''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.purchaseRecommendation"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:56:05.1400000 +00:00', 2, N'N', '263ee669-63d0-4a97-88ae-de24c4d1ac55', 1, NULL, '2022-11-21 12:30:30.3657259 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('09725176-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-direct-supply', N'Direct supply', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.DIRECT_SUPPLY",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Direct_supply''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.directSupply"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:56:19.0633333 +00:00', 2, N'N', 'ed0566e7-c6d2-43ca-a89f-e84dde84432b', 1, NULL, '2022-11-21 12:31:46.9347977 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d72840af-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-history', N'History', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.HISTORY",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.History''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.history"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:56:38.6400000 +00:00', 2, N'N', '8d5fc364-3667-4914-af1e-25b7ba5bd502', 1, NULL, '2022-11-21 12:33:22.4516439 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f37e8dd9-9869-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-allow-zero-price', N'Allow zero price', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.ALLOW_ZERO_PRICE",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Allow_zero_price''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isAllowZeroPrice"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:56:54.8400000 +00:00', 2, N'N', '0c223b94-7a0c-4300-920b-71c337c56d79', 1, NULL, '2022-11-21 12:34:33.4227827 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0799b53d-9969-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-is-modifier', N'Is modifier', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.IS_MODIFIER",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_modifier''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__item_modifier_group_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isModifier"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isComboMeal || self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:57:10.9100000 +00:00', 2, N'N', '0ebcff63-ef4a-44cb-9f25-fb348ce4c46f', 1, NULL, '2022-11-21 12:37:21.4577543 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1a6ac9b8-9969-ed11-835f-02f176033ddb', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-is-combo-meal', N'Is combo meal', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.GENERAL.IS_COMBO_MEAL",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_details.Is_combo_meal''"
    [permissionSettings]="{
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) 
            && (self.EndpointName.item__combo_meal_category_GET | endpointAccessGrantedPipe)
    }"

    [(dataValue)]="self.item.isComboMeal"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="self.item.isModifier || self.item.isDeleted || {{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-11-25 09:57:29.7700000 +00:00', 2, N'N', '96aec714-e5f8-4bda-8871-77ca1b62b35d', 1, NULL, '2022-11-21 12:40:47.9473818 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e0d28db9-ae69-ed11-835f-02f176033ddb', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-address-list', N'Partner addresses', N'{
    "defaultValue": {},
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "field": "partnerAddressType.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.ADDRESS_TYPE",
                    "type": "link"
                },
                {
                    "field": "country.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.COUNTRY",
                    "type": "text"
                },
                {
                    "field": "state.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.STATE",
                    "type": "text"
                },
                {
                    "field": "county.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.COUNTY",
                    "type": "text"
                },
                {
                    "field": "city.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.CITY",
                    "type": "text"
                },
                {
                    "field": "zip",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.ZIP",
                    "type": "text"
                },
                {
                    "field": "street.name",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.STREET",
                    "type": "text"
                },
                {
                    "field": "block",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.BLOCK",
                    "type": "text"
                },
                {
                    "field": "streetNo",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.STREET_NUMBER",
                    "type": "text"
                },
                {
                    "field": "apartment",
                    "titleTranslateKey": "PARTNER.DETAILS.ADDRESS.APARTMENT",
                    "type": "text"
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "partnerAddressType": {
                            "id": 1,
                            "name": "Test type"
                        },
                        "country": {
                            "id": 1,
                            "name": "Ukraine"
                        },
                        "state": {
                            "id": 1,
                            "name": "Kherson"
                        },
                        "county": {
                            "id": 1,
                            "name": "test"
                        },
                        "city": {
                            "id": 1,
                            "name": "Kherson"
                        },
                        "zip": "0633434",
                        "street": {
                            "id": 1,
                            "name": "Test"
                        },
                        "block": "Test",
                        "streetNo": "Test",
                        "apartment": "Test"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
    [class]="{{classes}}"
></cr-partner-address-list>', '2022-11-21 15:32:22.6966667 +00:00', 3, N'Y', '28e52b31-7504-4039-a3f1-64b724ba19d1', 1, NULL, '2022-11-21 15:11:08.6658912 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e109c99d-b269-ed11-835f-02f176033ddb', '2e10fc1e-b269-ed11-835f-02f176033ddb', N'item-details-properties', N'Item properties', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new cr-grid-no-inner-borders">
    <cr-item-property-list 
        [itemDetails]="self.item" 
        [class]=''{{classes}}''
    ></cr-item-property-list>
</div>
', '2022-11-25 09:57:59.7566667 +00:00', 2, N'N', 'bd07c5aa-9c18-4402-9bc2-df7a83de9362', 1, NULL, '2022-11-21 15:39:00.0646753 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('76aab396-436a-ed11-835f-02f176033ddb', 'e18c6dc2-406a-ed11-835f-02f176033ddb', N'item-details-prices', N'Item prices', N'{
    "defaultValue": {},
    "fieldSettings": {
        "validationField": "prices"
    }
}', N'<div class="cr-item-price-wrapper">
    <cr-item-price-list
        *ngIf="(self.EndpointName.item__item_price_GET | endpointAccessGrantedPipe) &&
            (self.EndpointName.item__item_property_value_id_dropdown_GET | endpointAccessGrantedPipe); else noAccess"
        [editable]="self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        [item]="self.item"
        [panelsViewState]="self.panelsViewState"
        [class]=''{{classes}}''
    ></cr-item-price-list>

    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>
', '2022-11-25 09:58:15.3833333 +00:00', 3, N'N', '69f364e3-74ff-42f9-985d-1ef35f6c4d17', 1, NULL, '2022-11-22 08:56:45.2063478 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('3b22a8a9-4c6a-ed11-835f-02f176033ddb', '4e81e25d-4c6a-ed11-835f-02f176033ddb', N'item-details-barcode-list', N'Item barcode', N'{
    "defaultValue": {},
    "fieldSettings": {
        "validationField": "barcodes"
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-barcodes-list
        [isNew]="self.isNewItem"
        [item]="self.item"
        [editable]="self.isNewItem
            ? (self.EndpointName.item_POST | endpointAccessGrantedPipe)
            : (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)"
        (barcodesChanged)="self.onBarcodesChanged()"
        [class]=''{{classes}}''
    ></cr-item-barcodes-list>
</div>', '2022-11-25 09:58:35.5733333 +00:00', 2, N'N', '60515adc-0daa-46bf-a2e3-2b8b361a418a', 1, NULL, '2022-11-22 10:01:42.4780475 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2f3c9474-4f6a-ed11-835f-02f176033ddb', '1a39b635-4f6a-ed11-835f-02f176033ddb', N'item-details-specail-prices-list', N'Item special prices', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-special-prices-list
        (onCellClickEvent)="self.openSpecialPrice($event)"
        (onChangePageEvent)="self.changePageEvent($event)"
        [specialPrices]="self.specialPricesList"
        [class]=''{{classes}}''
    ></cr-item-special-prices-list>
</div>', '2022-11-22 10:21:41.9185839 +00:00', 1, N'N', 'c88420ea-ce97-4a43-b36e-db7884a051d7', 1, NULL, '2022-11-22 10:21:41.9185839 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('27e427c7-6e6a-ed11-835f-02f176033ddb', '3242747d-6e6a-ed11-835f-02f176033ddb', N'item-details-promotions-list', N'Item promotions', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-promotion-list
        [itemId]="self.item?.id"
        [class]=''{{classes}}''
    ></cr-item-promotion-list>
</div>
', '2022-11-22 14:05:54.8580519 +00:00', 1, N'N', '5929739e-a20d-4ca6-8744-33e026729190', 1, NULL, '2022-11-22 14:05:54.8580519 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0a88e19b-726a-ed11-835f-02f176033ddb', '4c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-udfs-list', N'Item UDF', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-udf-list
        *ngIf="(self.EndpointName.item__user_defined_field_GET | endpointAccessGrantedPipe) &&
            (self.EndpointName.item__user_defined_field_default_value_GET | endpointAccessGrantedPipe); else noAccess"
        [isNew]="self.isNewItem"
        [udf]="self.item.udf"
        [cacheName]="''itemUserFieldViewStateCache''"
        [viewName]="''Item_details''"
        [loadUserDefinedFieldListForDropdownFn$]="self.loadUserDefinedFieldListForDropdownFn$"
        [getUserFields$]="self.getUserFields$"
        [loadUserFields$]="self.loadUserFields$"
        [getUserFieldsDefault$]="self.getUserFieldsDefault$"
        [class]=''{{classes}}''
    ></cr-udf-list>
    <ng-template #noAccess>
        <div class="cr-no-read-access p-2">
            {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
        </div>
    </ng-template>
</div>', '2022-11-25 09:59:01.1633333 +00:00', 3, N'N', '9189d8ac-1cef-4ce6-af11-4214b7bee98e', 1, NULL, '2022-11-22 14:33:30.1201682 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('67d8d593-796a-ed11-835f-02f176033ddb', 'f5aa963e-796a-ed11-835f-02f176033ddb', N'item-details-image-basket', N'Image basket', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-image-basket-list
        [imageBasketId]="self.item.imageBasketSetId"
        [isDeleted]="self.item.isDeleted"
        [refreshList$]="self.itemImageBasketContentListRefresh$"
        (onCreateItem)="self.onCreateImageBasketPopup()"
        (onUpdateItem)="self.onUpdateImageBasketPopup($event)"
        (onDeleteItem)="self.onDeleteImageBasketContent($event)"
        [class]=''{{classes}}''
    ></cr-item-image-basket-list>
</div>', '2022-11-25 09:59:47.9200000 +00:00', 3, N'N', '158cdc55-a715-4ca8-8a28-cb33df4afd86', 1, NULL, '2022-11-22 15:23:13.2205799 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1ad6ad39-816a-ed11-835f-02f176033ddb', '3055fef1-806a-ed11-835f-02f176033ddb', N'item-details-modifiers', N'Item modifiers', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-item-modifier
        [itemId]="self.item.id"
        [isDeleted]="self.item.isDeleted"
        (onOpenModifiersGroupList)="self.onOpenModifiersGroupListPopup()"
        (onOpenModifiersTemplateList)="self.onOpenModifiersTemplateListPopup()"
        (onSelectModifierGroups)="self.onSelectModifierGroups($event)"
        [class]=''{{classes}}''
    ></cr-item-item-modifier>
</div>', '2022-11-22 16:17:57.9372698 +00:00', 1, N'N', 'd450f8d3-91d0-40a6-a679-3d948b33fb7e', 1, NULL, '2022-11-22 16:17:57.9372698 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('f4ffc7a8-896a-ed11-835f-02f176033ddb', '5695c768-896a-ed11-835f-02f176033ddb', N'item-details-combo-meal', N'Item combo meal', N'{
    "defaultValue": {}
}', N'<div class="cr-grid-wrapper-new">
    <cr-item-combo-meal-category-list
        [itemId]="self.item.id"
        [isDeleted]="self.item.isDeleted"
        (openComboMealCategoryDetails)="self.onOpenComboMealDetailsPopup($event)"
        (openComboMealCategoryNew)="self.onOpenComboMealNewPopup()"
        [class]=''{{classes}}''
    ></cr-item-combo-meal-category-list>
</div>', '2022-11-22 17:18:20.3096692 +00:00', 1, N'N', '01927771-60de-4e7e-849f-afb065db5094', 1, NULL, '2022-11-22 17:18:20.3096692 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('4ef95cdf-116b-ed11-835f-02f176033ddb', '167690c8-0d6b-ed11-835f-02f176033ddb', N'item-details-creation-date', N'Creation date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.CREATION_DATE"
    }
}', N'<div class="cr-footer-flex-wrapper" [class]=''{{classes}}''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="{{label}}"
            [dataLabelTranslateKeys]="{{translateKey}}"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.item?.createDate | stringToDate | date:currentDateFormatPattern">
        </cr-text-field-control>
    </div>
</div>
', '2022-11-23 10:11:05.1666667 +00:00', 3, N'N', '26a66055-43b1-4207-ba22-ec2c2a6ca824', 1, NULL, '2022-11-23 09:33:23.4381774 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('6915bc0f-126b-ed11-835f-02f176033ddb', '167690c8-0d6b-ed11-835f-02f176033ddb', N'item-details-update-date', N'Update date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.UPDATE_DATE"
    }
}', N'<div class="cr-footer-flex-wrapper" [class]=''{{classes}}''>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [dataLabel]="{{label}}"
            [dataLabelTranslateKeys]="{{translateKey}}"
        ></cr-text-field-control>
    </div>
    <div class="cr-footer-flex-column">
        <cr-text-field-control
            [isUnderline]="true"
            [dataLabel]="self.item?.updateDate | stringToDate | date:currentDateFormatPattern">
        </cr-text-field-control>
    </div>
</div>
', '2022-11-23 10:11:28.7366667 +00:00', 3, N'N', '4c7f3704-fc16-44aa-8053-0fd1dfca36fd', 1, NULL, '2022-11-23 09:34:44.5921257 +00:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('983fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.FIRST_NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.firstName"
></cr-control-edit>
', '2022-11-26 16:33:45.9700000 +00:00', 37, N'N', 'b8bdb638-9203-4ea7-a715-4a7e41f43470', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('993fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-code', N'Partner code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PARTNER_CODE"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.partnerCode"
></cr-control-edit>', '2022-08-04 16:36:19.0333333 +00:00', 6, N'N', 'bae28123-7805-4475-a588-1f861260948e', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9a3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-show-deleted', N'Show deleted', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SHOW_DELETED"
    }
}', N'<cr-checkbox-control
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.partnerListFilter.showDeleted"
></cr-checkbox-control>', '2022-03-02 15:28:22.7366667 +00:00', 6, N'N', 'edb0be6c-f7a4-48ab-88bd-c810caef6b9e', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9b3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-grid', N'Partner list grid', N'{
    "defaultValue": {},
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "columns": [
                {
                    "field": "partnerCode",
                    "titleTranslateKey": "PARTNER.GRID.CODE",
                    "type": "link",
                    "autoFit": true
                },
                {
                    "field": "partnerType",
                    "titleTranslateKey": "PARTNER.GRID.TYPE",
                    "type": "text",
                    "width": "120px"
                },
                {
                    "field": "firstName",
                    "titleTranslateKey": "PARTNER.GRID.FIRST_NAME",
                    "type": "text"
                },
                {
                    "field": "lastName",
                    "titleTranslateKey": "PARTNER.GRID.LAST_NAME",
                    "type": "text"
                },
                {
                    "field": "passport",
                    "titleTranslateKey": "PARTNER.GRID.PASSPORT",
                    "type": "text",
                    "width": "150px"
                },
                {
                    "field": "phone1",
                    "titleTranslateKey": "PARTNER.GRID.PHONE",
                    "type": "text",
                    "width": "170px"
                },
                {
                    "field": "partnerGroups",
                    "titleTranslateKey": "PARTNER.GRID.GROUPS",
                    "type": "text"
                },
                {
                    "field": "isValid",
                    "titleTranslateKey": "PARTNER.GRID.VALID",
                    "type": "boolean",
                    "autoFit": true
                },
                {
                    "field": "balance",
                    "titleTranslateKey": "PARTNER.GRID.BALANCE",
                    "type": "decimal",
                    "width": "120px"
                },
                {
                    "field": "registrationDate",
                    "titleTranslateKey": "PARTNER.GRID.REGISTRATION_DATE",
                    "type": "date",
                    "autoFit": true
                },
                {
                    "field": "isDeleted",
                    "titleTranslateKey": "PARTNER.GRID.IS_DELETED",
                    "type": "boolean",
                    "autoFit": true
                }
            ],
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "partnerCode": "code",
                        "partnerType": "Customer",
                        "firstName": "Yura",
                        "lastName": "Prisyazhnyy",
                        "passport": "1124444",
                        "phone1": "+380666876892",
                        "partnerGroups": "test1, test2",
                        "isValid": true,
                        "balance": 20,
                        "registrationDate": "2022-01-01T00:00:00Z",
                        "isDeleted": false
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            }
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataCacheName]="''partnerGrid''"
        [dataSource]="self.dataSource"
        [elementName]="''edit-grid-server-paging:Partner_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]="{{classes}}"
      ></cr-edit-grid-server-paging>
</div>', '2022-11-18 16:03:34.8433333 +00:00', 13, N'N', '97acb57d-19d4-4e8d-8cb6-020bf97b389c', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9c3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-search', N'Search', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SEARCH",
        "buttonType": "underlined-action-button"
    }
}', N'<cr-button-control 
    [buttonTemplateType]="{{buttonTemplateType}}"
    [text]="{{label}}"
    [textTranslateKey]="{{translateKey}}"
    [classArray]=''{{classes}}''
    [width]="{{width}}"
    [height]="{{height}}"
    [icon]="{{icon}}"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="self.authService.getEndpointAccessGranted(self.EndpointName.partner_GET)"
></cr-button-control>', '2022-10-21 12:03:38.4300000 +00:00', 9, N'N', '535201b7-7a1d-4cf8-a03c-26b690b358b7', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9d3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3b3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-svg-icon', N'Custom svg icon', N'{
    "defaultValue": {
        "iconName": "icon-add",
        "width": 30,
        "height": 30
    }
}', N'<cr-svg-icon-control 
    [iconName]="{{icon}}" 
    [width]="{{width}}" 
    [height]="{{height}}"
    [class]=''{{classes}}''
></cr-svg-icon-control>', '2022-03-02 15:29:21.6200000 +00:00', 4, N'N', '265ed7b0-c8e1-4ed2-a9a3-fc10355fb008', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9e3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.LAST_NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.lastName"
></cr-control-edit>', '2022-03-02 15:29:36.3900000 +00:00', 4, N'N', '07840e40-45f8-4788-87fc-bac348fe0de7', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('9f3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-type', N'Partner type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PARTNER_TYPE"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.partnerListFilter.partnerTypeId"
    [contextMenuOperations]="[''copyToClipboard'']"
    [dataCacheName]="''PartnerTypeDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_type''"
    [getListItemsFunction]="self.partnerTypeListFn"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
    [permissionSettings]="{
        isAccessEdit: self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_GET)
    }"
    [textField]="''displayName''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [valueField]="''id''"
    [isDropdownListOpenWhenKeyboardIsPrinted]="true"
    [isDropdownListOverrideEnterKeyBehaviour]="true"
    (onEnterKey)="self.changeFilter()"
></cr-dropdown-smart-control>', '2022-08-26 14:39:53.0566667 +00:00', 16, N'N', '0a350bec-b6c9-4f9c-874a-40188040bf52', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-group', N'Partner group', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PARTNER_GROUP"
    }
}', N'<cr-dropdown-smart-control
    (navigateToEvent)="self.navigateTo($event)"
    [(value)]="self.partnerListFilter.groupId"
    [contextMenuOperations]="[''copyToClipboard'', ''navigateTo'']"
    [dataCacheName]="''PartnerGroupDropdownSearchCache''"
    [dataTranslateKeyField]="''translateKey''"
    [elementName]="''smart-dropdown:Partner_list.Partner_group''"
    [getListItemsFunction]="self.partnerGroupListFn"
    [isCleanListWhenAdditionalParameterChanged]="true"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
    [listItemsFunctionAdditionalParameter]="self.partnerListFilter.partnerTypeId"
    [permissionSettings]="{
        isAccessEdit: self.authService.getEndpointAccessGranted(self.EndpointName.partner__partner_group_GET)
    }"
    [requestDataWhenOpen]="true"
    [textField]="''name''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [valueField]="''id''"
    [isDropdownListOpenWhenKeyboardIsPrinted]="true"
    [isDropdownListOverrideEnterKeyBehaviour]="true"
    (onEnterKey)="self.changeFilter()"
></cr-dropdown-smart-control>
', '2022-08-26 14:41:44.2300000 +00:00', 13, N'N', '652d0315-f613-4536-baa5-c0a9ac819c07', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-phone-number1', N'Phone number1', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PHONE_NUMBER_1"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.phone1"
></cr-control-edit>', '2022-03-02 15:30:49.2266667 +00:00', 4, N'N', '264318a1-9386-49da-9c73-c40ed794b635', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-phone-number2', N'Phone number2', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PHONE_NUMBER_2"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.phone2"
></cr-control-edit>', '2022-03-02 15:31:04.7300000 +00:00', 4, N'N', 'e5690709-3c41-4dc1-81b3-7ee40576cd54', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-email', N'Email', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.EMAIL"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.EMail"
></cr-control-edit>', '2022-03-02 15:31:16.3466667 +00:00', 4, N'N', 'cd56ed4b-5302-4b26-9636-595ee656083c', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a43fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-passport', N'Passport', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.FILTER.PASSPORT"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.partnerListFilter.passport"
></cr-control-edit>', '2022-03-02 15:31:27.7500000 +00:00', 4, N'N', 'fbeeb643-0f39-489f-aa2d-05f59e777289', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a53fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-list-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.GRID.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-pin",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-add",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:43:44.1700000 +00:00', 9, N'N', '89f587d5-0967-4957-b347-49f03a5df557', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a63fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-code', N'Partner code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.PARTNER_CODE"
    },
    "fieldSettings": {
        "validationField": "partnerCode"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Partner_code''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.partnerCode"
    [validator]="self.validator"
    [validationField]="''partnerCode''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="!self.isNew || {{disabled}}"
></cr-control-edit>', '2022-11-18 14:54:17.8366667 +00:00', 12, N'N', '684d6056-3f00-4f68-b0e7-bb56c41acd14', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a73fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-first-name', N'First name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.FIRST_NAME",
        "isDisabled": false
    },
    "fieldSettings": {
        "validationField": "firstName"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.First_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.firstName"
    (dataValueChange)="self.onChangeTitleValue()"
    [validationField]="''firstName''"
    [validator]="self.validator"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-18 14:54:01.5533333 +00:00', 10, N'N', '89dbfd63-e2b4-45f4-a1ae-2aeadc082b8a', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a83fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-last-name', N'Last name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.LAST_NAME",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Last_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastName"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 12:58:31.0733333 +00:00', 6, N'N', 'd347fce9-2be0-4967-aa1f-0c1650e3103a', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('a93fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-type', N'Partner type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.PARTNER_TYPE"
    },
    "fieldSettings": {
        "validationField": "partnerTypeId"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Partner_type''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_id_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_type_GET) 
    }"
    [dataCacheName]="''PartnerTypeDropdownCache''"
    [labelTranslateKey]="''PARTNER.DETAILS.HEADER.PARTNER_TYPE''"
    [(value)]="self.partnerDetails.partnerTypeId"
    [textField]="''displayName''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadPartnerTypeForDropdownFn"
    [getListItemsFunction]="self.loadPartnerTypeListForDropdownFn"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''partnerTypeId''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-18 14:55:26.4300000 +00:00', 6, N'N', 'a28ad228-8734-4c30-aa93-c78515f96a5d', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('aa3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-government', N'Government id', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.GOVERNMENT_ID",
        "isDisabled": false
    },
    "fieldSettings": {
        "validationField": "govId"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Government_id''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.govId"
    [validator]="self.validator"
    [validationField]="''govId''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-18 14:55:56.5600000 +00:00', 7, N'N', '2d758248-bf57-4983-9e0f-c4a76dbce468', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ab3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-balance', N'Balance', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.HEADER.BALANCE"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Balance''"
    [dataValue]="self.partnerDetails.balance"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 15:52:42.5766667 +00:00', 3, N'N', 'a6804182-7792-48cc-b3f2-973b1b12461f', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ac3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-delete",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-refresh",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-add",
                    "template": "custom"
                },
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.SAVE",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    [titleValue]="self.titleValueText"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [buttonSettings]="self.titleHeaderButtonSettings"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
></cr-title-header>', '2022-11-21 08:44:29.8600000 +00:00', 4, N'N', 'db55c3ec-3c36-4830-8662-dd5ea6408003', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ad3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-gender', N'Gender', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.GENDER"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Gender''"
    [dataCacheName]="''PartnerGenderDropdownCache''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpoints[self.EndpointName.partner_POST]?.isAccessGranted :
            self.authService.endpoints[self.EndpointName.partner_id_PUT]?.isAccessGranted
        }"
    [labelTranslateKey]="''PARTNER.DETAILS.GENERAL.GENDER''"
    [(value)]="self.partnerDetails.gender"
    [getListItemsFunction]="self.getGenderTypeDropdownList$"
    [getOneItemFunction]="self.getGenderItemDropdown$"
    [valueField]="''code''"
    [textField]="''name''"
    [dataTranslateKeyField]="''translateKey''"
    [unselectedItemValue]="{code: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''>
</cr-dropdown-smart-control>', '2022-08-19 14:28:07.1333333 +00:00', 8, N'N', '5c960a9a-9eed-49cb-bbe0-e9ee08e4e387', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ae3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-birthday', N'Birthday', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.BIRTHDAY"
    },
    "fieldSettings": {
        "validationField": "bDay"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Birthday''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.bDay"
    [validator]="self.validator"
    [validationField]="''bDay''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-11-18 14:56:47.4500000 +00:00', 6, N'N', '19f51afe-acd7-4bf0-b082-0547dfecfc68', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('af3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-creation-store', N'Creation store', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.CREATION_STORE"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Creation_store''"
    [(dataValue)]="self.creationStoreName"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="true"
></cr-control-edit>', '2022-03-09 16:01:12.0666667 +00:00', 4, N'N', '74ee5e13-9cfb-48ca-9d31-d67099fe7fac', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-linked-store', N'Linked store', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.LINKED_STORE",
        "isDisabled": false
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Linked_store''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner__location_objectId_dropdown_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner__location_dropdown_GET)
    }"

    [dataCacheName]="''PartnerStoreListDropdownCache''"
    [(value)]="self.partnerDetails.linkedStoreId"
    [textField]="''name''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadStoreForDropdownFn"
    [getListItemsFunction]="self.loadStoreListForDropdownFn"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-04-21 13:02:28.8733333 +00:00', 3, N'N', 'fe4684e2-14c2-4163-925f-483a5296d135', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-parent', N'Parent', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.PARENT_PARTNER",
        "isDisabled": false
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Parent_partner''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_dropdown_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_dropdown_GET)
    }"

    [dataCacheName]="''PartnerParentListDropdownCache''"
    [(value)]="self.partnerDetails.parentPartnerId"
    [textField]="''name''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadPartnerParentForDropdownFn"
    [getListItemsFunction]="self.loadPartnerParentListForDropdownFn"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [codeField]="''code''"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-04-21 13:03:53.2433333 +00:00', 3, N'N', 'cb13569f-dd9c-4ebc-b983-c136e81245aa', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-phone1', N'Phone 1', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.PHONE_NUMBER_1",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_1''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone1"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:04:17.9533333 +00:00', 4, N'N', '6df6cac6-7285-4b5b-9a0c-a4834fd7af5f', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-phone2', N'Phone 2', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.PHONE_NUMBER_2",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Phone_number_2''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.phone2"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:04:35.3233333 +00:00', 4, N'N', '3c51bc21-6f0f-4b73-8d08-35a0a8f3a38b', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b43fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-cellular', N'Cellular', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.CELLULAR",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Cellular''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.cellular"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:04:44.8266667 +00:00', 4, N'N', '8eba9337-8df4-4bf4-b3cd-480bf0a58c9a', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b53fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-fax', N'Fax', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.FAX",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Fax''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.fax"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:04:52.6666667 +00:00', 3, N'N', '4f326ca8-8f2d-4ac2-8827-5535839b8687', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b63fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-email', N'Email', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.EMAIL",
        "isDisabled": false
    },
    "fieldSettings": {
        "validationField": "eMail"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Email''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.eMail"
    [validator]="self.validator"
    [validationField]="''eMail''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-18 14:58:12.9666667 +00:00', 7, N'N', '98e7a231-afc5-412a-8a28-c704e433878e', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b73fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-tourist', N'Tourist', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.TOURIST",
        "isDisabled": false
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Tourist''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isTourist"
    (dataValueChange)="self.touristValueChanged($event)"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-04-21 13:05:10.1900000 +00:00', 3, N'N', 'd77d2b3c-34aa-4814-9c19-163e642289d8', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b83fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-passport', N'Passport', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.PASSPORT",
        "isDisabled": false
    },
    "fieldSettings": {
        "validationField": "passport"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.Passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.passport"
    [validator]="self.validator"
    [validationField]="''passport''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-18 14:58:46.7100000 +00:00', 6, N'N', 'd9ce02cd-a03a-4d28-be32-51d6090809fd', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b93fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-internation-passport', N'Internation passport', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.INTERNATIONAL_PASSPORT",
        "isDisabled": false
    }
}', N'<cr-control-edit
    [elementName]="''edit:Partner_details.International_passport''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.interPassport"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-04-21 13:05:24.8200000 +00:00', 3, N'N', '60f14f0b-80c9-4824-b174-7a5b3fe5f380', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ba3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-data-approved', N'Is data approved', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.IS_DATA_APPROVED"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Is_data_approved''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isDataApproved"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-04-21 13:05:35.9733333 +00:00', 5, N'N', '6e341541-a71d-4af1-a68a-4be76bb611fe', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bb3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-valid', N'Is valid', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.VALID"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Valid''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isValid"
    (dataValueChange)="self.changeValidCheckbox($event)"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-04-21 13:05:45.2833333 +00:00', 3, N'N', '0d6fe1f9-2603-4484-875a-de865c1e7241', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bc3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-frozen', N'Frozen', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.FROZEN"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Partner_details.Frozen''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.isFrozen"
    (dataValueChange)="changeFrozenCheckbox($event)"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
></cr-checkbox-control>', '2022-04-21 13:05:52.0633333 +00:00', 4, N'N', '406dace1-e55e-4f5d-a820-9b5550a44d9b', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bd3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-valid-from', N'Valid from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_FROM"
    },
    "fieldSettings": {
        "validationField": "validFrom"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validFrom"
    [validator]="self.validator"
    [validationField]="''validFrom''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.partnerDetails.isValid || {{disabled}}"
></cr-control-datepicker>', '2022-11-18 14:59:22.5800000 +00:00', 9, N'N', '6cf32ff4-e3db-4787-8507-52167568df02', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('be3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-valid-to', N'Valid to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_TO"
    },
    "fieldSettings": {
        "validationField": "validTo"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Valid_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.validTo"
    [isDisabled]="!self.partnerDetails.isValid || {{disabled}}"
    [validator]="self.validator"
    [validationField]="''validTo''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.partnerDetails.isValid || {{disabled}}"
></cr-control-datepicker>', '2022-11-18 14:59:46.3266667 +00:00', 6, N'N', '9cfd492f-3485-4691-9cee-479701b50167', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bf3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-frozen-from', N'Frozen from', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_FROM"
    },
    "fieldSettings": {
        "validationField": "frozenFrom"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_from''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenFrom"
    [isDisabled]="!self.partnerDetails.isFrozen || {{disabled}}"
    [validator]="self.validator"
    [validationField]="''frozenFrom''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
></cr-control-datepicker>', '2022-11-18 15:00:09.4400000 +00:00', 6, N'N', '5fcd7862-1c5f-46e4-8a47-c2b25fd5ccb8', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-frozen-to', N'Frozen to', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.DATE_TO"
    },
    "fieldSettings": {
        "validationField": "frozenTo"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Frozen_date_to''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.frozenTo"
    [validator]="self.validator"
    [validationField]="''frozenTo''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="!self.partnerDetails.isFrozen || {{disabled}}"
></cr-control-datepicker>', '2022-11-18 15:00:37.9266667 +00:00', 6, N'N', '214c8033-14eb-42b4-9cb2-6e280551f113', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '403c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-mailing-categories', N'Mailing categories', N'{
    "defaultValue": {
        "editIcon": "icon-edit",
        "editable": true
    }
}', N'<cr-partner-mailing-category-control
    [editable]="{{editable}} && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedMailingCategory]="self.partnerDetails.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
></cr-partner-mailing-category-control>', '2022-04-21 14:34:20.1033333 +00:00', 5, N'N', '356ce131-b9d4-4bed-8c5e-381069f3c576', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '413c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-panel', N'test', N'', N'Test', '2022-03-04 15:34:17.2966667 +00:00', 2, N'Y', 'fae2198c-1348-4345-994c-5026bcb99def', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-price-list', N'Price list', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.PRICE_LIST"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_list''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner__item_price_id_dropdown_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner__item_price_dropdown_GET)
    }"

    [dataCacheName]="''PartnerPriceListDropdownCache''"
    [(value)]="self.partnerDetails.priceListId"
    [textField]="''displayName''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadPartnerPriceForDropdownFn"
    [getListItemsFunction]="self.loadPartnerPriceListForDropdownFn"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    (valueChange)="self.onPriceListChanged()"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-04-21 13:10:32.6433333 +00:00', 3, N'N', '82bf065e-3f53-426d-9baa-e0e76f4f3c54', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c43fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-price-number', N'Price number', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.PRICE_NUMBER"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Price_number''"
    [permissionSettings]="{
        isAccessRead: self.authService.getEndpointAccessGranted(self.EndpointName.partner__item_price_priceListId_price_number_id_dropdown_GET),
        isAccessEdit: (self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)) &&
            self.authService.getEndpointAccessGranted(self.EndpointName.partner__item_price_priceListId_price_number_dropdown_GET)
    }"
    
    [dataCacheName]="''PartnerPriceNumberListDropdownCache''"
    [isDisabled]="self.partnerDetails.priceListId === null"
    [(value)]="self.partnerDetails.priceNumberId"
    [textField]="''displayName''"
    [valueField]="''id''"
    [getOneItemFunction]="self.loadPartnerPriceNumberForDropdownFn"
    [getListItemsFunction]="self.loadPartnerPriceNumberListForDropdownFn"
    [listItemsFunctionAdditionalParameter]="self.partnerDetails.priceListId"
    [requestDataWhenOpen]="true"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-04-21 13:11:43.3200000 +00:00', 3, N'N', '1c8ca0d0-e91f-47a9-b9bd-0907e1fe4f21', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c53fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-credit-limit', N'Credit limit', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.CREDIT_LIMIT"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Credit_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.creditLimit"
    [isDisabled]="{{disabled}}"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-04-21 13:11:57.3900000 +00:00', 3, N'N', '59a7d22c-828c-4768-8d74-eb13ad5ed229', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c63fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-obligo-limit', N'Obligo limit', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.OBLIGO_LIMIT"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Obligo_limit''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [dataValue]="self.partnerDetails.obligoLimit"
    [isDisabled]="{{disabled}}"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-04-21 13:12:18.5566667 +00:00', 4, N'N', '012f2d2d-3d25-4acb-8ae5-f3f542724fc6', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c73fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-budget-limit', N'Budget limit', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_LIMIT"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Budget_limit''"
    [dataValue]="self.partnerDetails.budgetLimit"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 17:02:52.6233333 +00:00', 2, N'N', '3297630b-ec1f-485c-b3a7-1c2ac25467a6', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c83fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-budget-type', N'Budget type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_TYPE"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Partner_details.Budget_type''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpoints[self.EndpointName.partner_POST]?.isAccessGranted :
            self.authService.endpoints[self.EndpointName.partner_id_PUT]?.isAccessGranted
        }"
    [value]="self.partnerDetails.budgetTypeId ? self.partnerDetails.budgetTypeId : null"
    [textField]="''name''"
    [valueField]="''uid''"
    [getListItemsFunction]="self.getBudgetTypeDropdownList$"
    [getOneItemFunction]="self.getBudgetTypeItemDropdown$"
    (valueChange)="self.onBudgetTypeChanged($event)"
    [dataTranslateKeyField]="''translateKey''"
    [unselectedItemValue]="{uid: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
                          ></cr-dropdown-smart-control>', '2022-08-19 14:37:47.7700000 +00:00', 7, N'N', 'f271a2e8-46b8-45bb-a082-192883bf0cab', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c93fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-budget-start-month', N'Budget start month', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.PAYMENT_TERMS.BUDGET_START_MONTH"
    }
}', N'<cr-dropdown-smart-control
    [(value)]="self.partnerDetails.budgetStartMonth"
    [elementName]="''smart-dropdown:Partner_details.Budget_start_month''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.endpoints[self.EndpointName.partner_POST]?.isAccessGranted :
           self.authService.endpoints[self.EndpointName.partner_id_PUT]?.isAccessGranted
    }"
    [textField]="''name''"
    [valueField]="''uid''"
    [dataCacheName]="''PartnerBudgetStartMonthDropdownCache''"

    [getListItemsFunction]="self.getMonthDropdownList$"
    [getOneItemFunction]="self.getMonthItemDropdown$"
    [dataTranslateKeyField]="''translateKey''"
    [unselectedItemValue]="{uid: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [isDisabled]="false"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>
', '2022-08-22 15:08:40.3100000 +00:00', 12, N'N', '6e6987dd-772a-4afc-bbfc-76caf3c6650d', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ca3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-total-amount', N'Total amount', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.TOTAL_AMOUNT",
        "format": "n0"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Total_amount''"
    [dataValue]="self.partnerDetails.totalAmount"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 17:14:27.6466667 +00:00', 3, N'N', '5f32f372-d480-4f5f-8fbd-0f466931436b', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cb3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-sales-count', N'Sales count', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.SALES_COUNT",
        "format": "n0"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Sales_count''"
    [dataValue]="self.partnerDetails.salesCount"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 17:15:11.3900000 +00:00', 3, N'N', '806b4016-e337-426c-bf22-2a89f4b0b4e2', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cc3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3e3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-returns-count', N'Returns count', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.RETURNS_COUNT",
        "format": "n0"
    }
}', N'<cr-numeric-control
    [elementName]="''numeric:Partner_details.Returns_count''"
    [dataValue]="self.partnerDetails.returnsCount"
    [isDisabled]="true"
    [dataLabel]="{{label}}" 
    [translateKeys]="{{translateKey}}" 
    [customClass]=''{{classes}}''
    [format]="{{format}}" 
    [decimals]="{{decimals}}" 
    [min]="{{min}}" 
    [max]="{{max}}"
    [autoCorrectMinMax]="{{autoCorrectMinMax}}"
></cr-numeric-control>', '2022-03-09 17:15:41.1500000 +00:00', 2, N'N', 'cd3cb37c-dba9-4c6d-b9a2-8daea492bf19', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cd3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-registration-date', N'Registration date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.REGISTRATION_DATE",
        "format": "n0"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.registrationDate"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-04-21 13:13:44.0800000 +00:00', 4, N'N', 'edd5dcaf-4c61-4ae5-a39a-d8c5e51b4b69', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ce3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-last-sale-date', N'Last sale date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.STATISTIC.LAST_SALE_DATE",
        "format": "n0"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Partner_details.Last_sale_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"

    [(dataValue)]="self.partnerDetails.lastSaleDate"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
></cr-control-datepicker>', '2022-04-21 13:13:50.8966667 +00:00', 3, N'N', '46d4b12a-e30d-4812-82ff-3824ef3a13bd', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('cf3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '423c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-groups', N'Partner groups', N'{
    "defaultValue": {
        "editIcon": "icon-edit",
        "editable": true
    },
    "fieldSettings": {
        "validationField": "partnerGroups"
    }
}', N'<cr-partner-group-control
    [editable]="{{editable}} && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.partnerDetails.id"
    [selectedGroups]="self.partnerDetails.partnerGroups"
    [class]=''{{classes}}''
    [editIcon]="{{editIcon}}"
    (editClickEvent)="self.onEditPartnerGroup()"
></cr-partner-group-control>', '2022-11-21 12:52:29.4433333 +00:00', 5, N'N', '27ae85eb-0c0c-4211-a669-7a1a469b144f', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '433c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-addresses', N'Partner addresses', N'{
    "defaultValue": {
        "editable": true
    }
}', N'<cr-partner-address-list
    (openAddressPopup)="self.onCreatePartnerAddresses()"
    (editAddressPopup)="self.onEditPartnerAddresses($event)"
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
></cr-partner-address-list>', '2022-03-10 10:24:50.4400000 +00:00', 7, N'N', 'df962a2e-f6fb-41e4-b62c-fc1e9f82cb80', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '443c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-cards-list', N'Partner cards list', N'{
    "defaultValue": {
        "editable": true
    }
}', N'<cr-partner-cards-list
    [editable]="{{editable}}"
    [class]=''{{classes}}''
    [partnerId]="self.partnerDetails.id"
    [isDeletedPartner]="self.partnerDetails.isDeleted"
></cr-partner-cards-list>', '2022-11-21 12:53:04.1733333 +00:00', 4, N'N', '1c042fbc-3630-4238-a7c8-82d7755c1369', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '453c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-remark', N'Remark', N'{
    "defaultValue": {}
}', N'<cr-text-area-control
    [elementName]="''textarea:Partner_details.Remark''"
    [(dataValue)]="self.partnerDetails.remark"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="{{disabled}}"
    [rows]="{{rows}}"
    [maxlength]="{{maxLength}}"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT)
    }"
></cr-text-area-control>', '2022-04-21 13:14:55.1466667 +00:00', 3, N'N', 'c7196eeb-ad4c-4be9-a827-df85c036a073', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '463c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-loyalty-points', N'Partner loyalty points', N'{
    "defaultValue": {}
}', N'<cr-partner-point 
    [class]=''{{classes}}''
    [partnerID]="self.partnerDetails.id"
></cr-partner-point>', '2022-11-21 12:53:40.8800000 +00:00', 4, N'N', '6b01cdeb-81fa-427f-8635-1302cd721aae', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d43fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '473c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-point-history', N'Point history', N'{
    "defaultValue": {}
}', N'<cr-partner-point-history
    [class]=''{{classes}}''
    [partnerId]="self.partnerDetails.id"
></cr-partner-point-history>', '2022-11-21 12:54:14.0400000 +00:00', 6, N'N', 'e4b184f2-c5de-4a1c-a538-56887af871b3', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d53fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '483c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-transaction-history', N'Partner transaction history', N'{
    "defaultValue": {}
}', N'<cr-partner-transaction-history
    [class]=''{{classes}}''
    [partnerId]="self.partnerDetails.id"
></cr-partner-transaction-history>', '2022-03-09 17:28:45.7400000 +00:00', 3, N'N', 'e9d047a7-53b0-4333-940a-a8f1123310b1', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d63fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '493c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-discount-budget', N'Discount budget', N'{
    "defaultValue": {}
}', N'<cr-partner-discount-budget 
    [class]=''{{classes}}''
    [partnerId]="self.partnerDetails.id"
></cr-partner-discount-budget>', '2022-03-09 17:29:03.5500000 +00:00', 3, N'N', 'f18483e6-c6db-41c0-855b-afca2c590772', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d73fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'test', N'1', N'1', N'1', '2022-04-13 13:08:19.4333333 +00:00', 3, N'Y', '0f14f42c-e315-4e62-8c6b-956c00be0594', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d83fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '4c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-udf-list', N'Partner UDF list', N'{
    "defaultValue": {}
}', N'<cr-partner-user-fields-list
    *ngIf="self.authService.endpoints[self.EndpointName.partner__user_defined_field_GET]?.isAccessGranted &&
                self.authService.endpoints[self.EndpointName.partner__user_defined_field_default_value_GET]?.isAccessGranted; else noAccess"
    [class]=''{{classes}}''
    [isNew]="self.isNew"
    [udf]="self.partnerDetails.udf"
></cr-partner-user-fields-list>

<ng-template #noAccess>
    <div class="cr-no-read-access p-2">
        {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
    </div>
</ng-template>', '2022-08-11 14:33:01.3966667 +00:00', 3, N'Y', '1287abf3-8281-4eef-beca-949d461ad9ab', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d93fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '4d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-contact-persons-list', N'Partner contact persons list', N'{
    "defaultValue": {}
}', N'<cr-partner-contact-persons-list
    (openAddressPopup)="self.onCreatePartnerContactPersons()"
    (editAddressPopup)="self.onEditPartnerContactPersons($event)"
    [isNew]="self.isNew"
    [partner]="self.partnerDetails"
    [class]=''{{classes}}''
></cr-partner-contact-persons-list>', '2022-07-15 18:36:49.1600000 +00:00', 2, N'N', '6613f20f-3d30-4f1a-a829-fe5b697d1e81', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('da3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '4c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-udfs-list', N'Partner udf list', N'{
    "defaultValue": {}
}', N'<cr-udf-list
    [cacheName]="''PartnerUserFieldViewStateCache''"
    *ngIf="self.authService.endpoints[self.EndpointName.partner__user_defined_field_GET]?.isAccessGranted &&
        self.authService.endpoints[self.EndpointName.partner__user_defined_field_default_value_GET]?.isAccessGranted; else noAccess"
    [isNew]="self.isNew"
    [udf]="self.partnerDetails.udf"
    [viewName]="''Partner_details''"
    [loadUserDefinedFieldListForDropdownFn$]="self.loadUserDefinedFieldListForDropdownFn$"
    [getUserFields$]="self.getUserFields$"
    [loadUserFields$]="self.loadUserFields$"
    [getUserFieldsDefault$]="self.getUserFieldsDefault$"
    [class]=''{{classes}}''
></cr-udf-list>
<ng-template #noAccess>
    <div class="cr-no-read-access p-2">
        {{''COMMON.GRID.NO_READ_ACCESS'' | translate}}
    </div>
</ng-template>', '2022-11-22 14:33:20.2366667 +00:00', 4, N'N', '0cc2082b-717d-490e-8e61-98faa8f4e820', 1, NULL, '2022-09-28 17:31:50.0946998 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('db3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-list-title-header', N'Title header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-pin",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-add",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:45:10.2400000 +00:00', 2, N'N', 'c3f56176-bb4f-4549-a908-a2eb35f75455', 1, NULL, '2022-10-05 15:41:51.6224251 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dc3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-list-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.LIST.FILTER.CODE"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Tax_group_list.Code''"
    [(dataValue)]="self.taxGroupFilterRequest.code"
></cr-control-edit>', '2022-10-05 15:46:56.5347421 +03:00', 1, N'N', 'ba4598ba-c8cc-4ae5-aba9-31b5634b23c5', 1, NULL, '2022-10-05 15:46:56.5347421 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('dd3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-list-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.LIST.FILTER.NAME"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [elementName]="''edit:Tax_group_list.Name''"
    [(dataValue)]="self.taxGroupFilterRequest.name"
></cr-control-edit>', '2022-10-05 15:47:55.2083456 +03:00', 1, N'N', '1f6d81c7-3337-448c-aff8-8e74996856e1', 1, NULL, '2022-10-05 15:47:55.2083456 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('de3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-list-search', N'Search', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SEARCH",
        "buttonType": "underlined-action-button"
    }
}', N'<cr-button-control 
    [buttonTemplateType]="{{buttonTemplateType}}"
    [text]="{{label}}"
    [textTranslateKey]="{{translateKey}}"
    [classArray]=''{{classes}}''
    [width]="{{width}}"
    [height]="{{height}}"
    [icon]="{{icon}}"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="(self.EndpointName.tax_group_GET | endpointAccessGrantedPipe)"
></cr-button-control>', '2022-10-05 15:49:57.1014460 +03:00', 1, N'N', '42bfd7c1-c17f-4a7e-9825-42c7289f5e73', 1, NULL, '2022-10-05 15:49:57.1014460 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('df3fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-groups-list-grid', N'Grid', N'{
    "defaultValue": {},
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "code": "Foo 1",
                        "name": "Bar 1"
                    },
                    {
                        "id": 2,
                        "code": "Foo 2",
                        "name": "Bar 2"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 5
            },
            "columns": [
                {
                    "title": "Code",
                    "field": "code",
                    "type": "text"
                },
                {
                    "title": "Name",
                    "field": "name",
                    "type": "text"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataCacheName]="''TaxGroupGrid''"
        [dataSource]="self.gridData"
        [elementName]="''edit-grid-server-paging:TaxGroup_list.Grid''"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]="{{classes}}"
      ></cr-edit-grid-server-paging>
</div>', '2022-11-18 16:26:54.4266667 +00:00', 4, N'N', 'c738e0e8-dc93-4873-8e97-74731708a4eb', 1, NULL, '2022-10-05 15:54:13.4471104 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e03fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-delete",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-refresh",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-add",
                    "template": "custom"
                },
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.SAVE",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>', '2022-11-21 08:45:54.2533333 +00:00', 2, N'N', '455f20ce-9889-48ec-92c8-70bd310a0349', 1, NULL, '2022-10-06 11:38:16.8955230 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e13fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.taxGroup.code"
    [elementName]="''edit:TaxGroup_details.Code''"
    [validator]="self.validator"
    [validationField]="''code''"
    (dataValueChange)="self.onChangeTitleValue()"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="self.taxGroup.isPredefined || {{disabled}}"
></cr-control-edit>', '2022-11-18 15:03:35.5966667 +00:00', 2, N'N', '940c046c-6357-4ea7-8e15-3e27f3e255e4', 1, NULL, '2022-10-06 11:41:56.2186922 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e23fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-name', N'Name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "TAX_GROUP.DETAILS.NAME"
    },
    "fieldSettings": {
        "validationField": "name"
    }
}', N'<cr-control-edit
    [(dataValue)]="self.taxGroup.name"
    [elementName]="''edit:TaxGroup_details.Name''"
    [validator]="self.validator"
    [validationField]="''name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-18 15:04:04.6300000 +00:00', 2, N'N', 'a665110c-49f6-4477-be62-548dee238467', 1, NULL, '2022-10-06 11:43:40.1317372 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e33fe7fc-e84e-ed11-8e5d-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'vat-group-details-definitions-grid', N'Definitions grid', N'{
    "defaultValue": {},
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "name": "Bar 1"
                    },
                    {
                        "id": 2,
                        "name": "Bar 2"
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 5
            },
            "columns": [
                {
                    "title": "Name",
                    "field": "name",
                    "type": "text"
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new cr-grid-with-collapse cr-tax-group-grid">
    <kendo-grid
        #grid
        (pageChange)="self.pageChange($event)"
        [(selectedKeys)]="self.mySelection"
        [attr.data-element-name]="''grid:TaxGroup_details_definition.Definitions_grid''"
        [data]="self.gridView"
        [kendoGridSelectBy]="self.mySelectionKey"
        [pageSize]="self.taxGroup.taxGroupLocationList.paginator?.size"
        [skip]="self.taxGroup.taxGroupLocationList.paginator?.skip"
        [pageable]="true"
        [resizable]="true"
        (add)="self.addHandler()"
        (edit)="self.editHandler($event)"
        (remove)="self.removeHandler($event)"
                    >
                      <ng-template kendoGridToolbarTemplate>
                        <div
                          class="row cr-row-padding-revert">
                          <div class="col-lg-12 cr-col-content-align-right cr-col-no-padding">
                            <cr-button-control
                              [buttonTemplateType]="''grid-add-command''"
                              [elementName]="''button:PriceList.Add''"
                              *ngIf="(self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)"
                            ></cr-button-control>
                          </div>
                        </div>
                      </ng-template>

                      <kendo-grid-column field="name">
                        <ng-template kendoGridHeaderTemplate>
                            <span [attr.data-translate]="''TAX_GROUP.DETAILS.GRID.NAME''">
                              {{''TAX_GROUP.DETAILS.GRID.NAME'' | translate}}
                            </span>
                        </ng-template>
                        <ng-template kendoGridCellTemplate
                                     let-dataItem>
                            <span>
                              {{dataItem.name}}
                            </span>
                        </ng-template>
                        <ng-template kendoGridEditTemplate let-dataItem>
                          <cr-control-edit
                            [(dataValue)]="self.taxGroup.cache.changeItem.name"
                            [elementName]="''edit:TaxGroup.Name''"
                            [translateKeys]="''TAX_GROUP.DETAILS.GRID.NAME''"
                          ></cr-control-edit>
                        </ng-template>
                      </kendo-grid-column>

                      <kendo-grid-column class="action-group" width="250">
                        <ng-template kendoGridCellTemplate
                                     let-dataItem="dataItem"
                                     let-isNew="isNew"
                                     let-rowIndex="rowIndex">
                          <cr-button-control
                            [buttonTemplateType]="''grid-edit-command''"
                            [elementName]="''edit:TaxGroup.Details_Edit_Command''"
                          ></cr-button-control>
                          <!-- Delete row (trash button)-->
                          <cr-button-control
                            *ngIf="(self.EndpointName.tax_group_id_PUT | endpointAccessGrantedPipe)"
                            [buttonTemplateType]="''grid-remove-command''"
                            [elementName]="''edit:TaxGroup.Details_Remove_Command''"
                          ></cr-button-control>
                        </ng-template>
                      </kendo-grid-column>
                      <ng-template kendoGridNoRecordsTemplate>
                          <span [attr.data-translate]="''COMMON.GRID.NO_RECORDS''">
                            {{ ''COMMON.GRID.NO_RECORDS'' | translate }}
                          </span>
                      </ng-template>
                      <ng-template kendoPagerTemplate>
                        <cr-grid-paginator
                          [totalElements]="self.gridView?.total"></cr-grid-paginator>
                      </ng-template>
                    </kendo-grid>
                  </div>', '2022-11-18 16:27:20.5766667 +00:00', 4, N'N', '33026c85-b35c-43f4-aeb7-fd09ef7ef795', 1, NULL, '2022-10-06 11:48:25.3768319 +03:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0033360b-ad5e-ed11-8e5e-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'partner-details-update-employee', N'Update employee', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "PARTNER.DETAILS.GENERAL.UPDATE_EMPLOYEE"
    }
}', N'<cr-control-edit
    [translateKeys]="{{translateKey}}"
    [dataLabel]="{{label}}"
    [isDisabled]="{{disabled}}"
    [customClass]=''{{classes}}''
    [dataValue]="self.partnerDetails.updateEmployee?.name"
    [elementName]="''label:Partner_details.Update_employee''"
></cr-control-edit>', '2022-11-07 17:14:58.6866667 +00:00', 3, N'N', '5718ecdc-feb6-41cb-86a6-dec9604f31bd', 1, NULL, '2022-11-07 17:01:33.4566596 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('e13e2c1f-ee64-ed11-8e60-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.LIST.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-pin",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-add",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [buttonSettings]="self.titleHeaderButtonSettings"
></cr-title-header>', '2022-11-21 08:46:25.7166667 +00:00', 2, N'N', '5062ce04-9fff-4217-8eb3-567067622a8a', 1, NULL, '2022-11-15 16:02:21.6340833 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('b176345f-ee64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.CODE"
    }
}', N'<cr-control-edit 
    [elementName]="''edit:Item_list.Code''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.itemFilterRequest.code"
></cr-control-edit>', '2022-11-15 16:04:09.0621233 +02:00', 1, N'N', '58cf5515-02a7-4196-aece-d0552744afc1', 1, NULL, '2022-11-15 16:04:09.0621233 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('53fe73a6-ee64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-short-display-name', N'Short display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.SHORT_DISPLAY_NAME"
    }
}', N'<cr-control-edit 
    [elementName]="''edit:Item_list.Display_name''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.itemFilterRequest.shortDisplayName"
></cr-control-edit>', '2022-11-15 16:06:34.7600000 +00:00', 2, N'N', '0de87cec-7c78-47a8-bdb2-17077352a39d', 1, NULL, '2022-11-15 16:06:08.5967059 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5100d2e1-ee64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-barcode', N'Barcode', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.BARCODE"
    }
}', N'<cr-control-edit 
    [elementName]="''edit:Item_list.Barcode''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.itemFilterRequest.barcode"
></cr-control-edit>', '2022-11-15 16:07:48.1983697 +02:00', 1, N'N', '73ace343-04f6-471c-b01c-c0b50771b707', 1, NULL, '2022-11-15 16:07:48.1983697 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5c148005-ef64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-model-code', N'Model code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.MODEL_CODE"
    }
}', N'<cr-control-edit 
    [elementName]="''edit:Item_list.Model_code''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
    [(dataValue)]="self.itemFilterRequest.itemModelCode"
></cr-control-edit>', '2022-11-15 16:08:48.0594652 +02:00', 1, N'N', '18fe1006-e2d4-474a-b5c7-fc0e3600172f', 1, NULL, '2022-11-15 16:08:48.0594652 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c22a9544-ef64-ed11-8e60-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-show-deleted', N'Show deleted', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.SHOW_DELETED"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_list.Deleted''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.itemFilterRequest.showDeleted"
></cr-checkbox-control>', '2022-11-15 16:42:32.5200000 +00:00', 2, N'N', 'f8008d53-1705-4988-a988-087e2972ce80', 1, NULL, '2022-11-15 16:10:33.8941250 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('93bb107a-ef64-ed11-8e60-4ccc6a2bb6d6', '383c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-show-frozen', N'Show frozen', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.FILTER.SHOW_FROZEN"
    }
}', N'<cr-checkbox-control
    [elementName]="''checkbox:Item_list.Frozen''"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [isDisabled]="{{disabled}}"
    [class]=''{{classes}}''
    [(dataValue)]="self.itemFilterRequest.showFrozen"
></cr-checkbox-control>', '2022-11-15 16:12:03.6231699 +02:00', 1, N'N', '8a7ec90f-93dc-4b0b-8cac-2d799182cb06', 1, NULL, '2022-11-15 16:12:03.6231699 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('7de704ac-ef64-ed11-8e60-4ccc6a2bb6d6', '3a3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-search', N'Search', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "COMMON.SEARCH",
        "buttonType": "underlined-action-button"
    }
}', N'<cr-button-control 
    [buttonTemplateType]="{{buttonTemplateType}}"
    [text]="{{label}}"
    [textTranslateKey]="{{translateKey}}"
    [classArray]=''{{classes}}''
    [width]="{{width}}"
    [height]="{{height}}"
    [icon]="{{icon}}"
    (buttonClickEvent)="self.changeFilter()"
    *ngIf="(self.EndpointName.item_GET | endpointAccessGrantedPipe)"
></cr-button-control>', '2022-11-15 17:05:13.4500000 +00:00', 2, N'N', 'a95614b3-6ca5-47f9-b691-aa2bd54c1679', 1, NULL, '2022-11-15 16:13:27.4317309 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c43a9aff-f064-ed11-8e60-4ccc6a2bb6d6', '393c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-list-grid', N'Grid', N'{
    "defaultValue": {},
    "fieldSettings": {
        "grid": {
            "uniqueField": "id",
            "previewDataSource": {
                "responseList": [
                    {
                        "id": 1,
                        "code": "Item code",
                        "shortDisplayName": "Item name",
                        "defaultBarcode": "0014342422",
                        "itemModel": {
                            "id": 1,
                            "code": "Item model",
                            "name": "Item model"
                        },
                        "createDate": "2022-03-20T20:00:00Z",
                        "isDeleted": false,
                        "isFrozen": false
                    }
                ],
                "page": 1,
                "size": 5,
                "totalElements": 1
            },
            "columns": [
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.CODE",
                    "field": "code",
                    "type": "link",
                    "autoFit": true
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.SHORT_DISPLAY_NAME",
                    "field": "shortDisplayName",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.BARCODE",
                    "field": "defaultBarcode",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.MODEL_CODE",
                    "field": "itemModel.code",
                    "type": "text"
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.CREATION_DATE",
                    "field": "createDate",
                    "type": "date",
                    "autoFit": true
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.DELETED",
                    "field": "isDeleted",
                    "type": "boolean",
                    "autoFit": true
                },
                {
                    "titleTranslateKey": "ITEM.LIST.GRID.FROZEN",
                    "field": "isFrozen",
                    "type": "boolean",
                    "autoFit": true
                }
            ]
        }
    }
}', N'<div class="cr-grid-wrapper-new">
    <cr-edit-grid-server-paging
        [elementName]="''edit-grid-server-paging:Item_list.Grid''"
        [dataCacheName]="''ItemListGrid''"
        (cellClickEvent)="self.cellClick($event)"
        (pageChangeEvent)="self.changePage($event)"
        [columnSettings]="self.columnSettings"
        [dataSource]="self.gridData"
        [pageable]="true"
        [resizable]="true"
        [uniqueField]="''id''"
        [class]="{{classes}}"
      ></cr-edit-grid-server-paging>
</div>', '2022-11-18 16:27:45.2533333 +00:00', 5, N'N', 'b07faef6-ddbf-46fb-ab9e-17757802100e', 1, NULL, '2022-11-15 16:22:57.1579716 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('1af3e0a2-fc64-ed11-8e60-4ccc6a2bb6d6', '3c3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-title-header', N'Header', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.TITLE"
    },
    "fieldSettings": {
        "titleHeader": {
            "elements": [
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-delete",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-refresh",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-add",
                    "template": "custom"
                },
                {
                    "appearance": "primary-button",
                    "nameTranslateKey": "COMMON.BUTTON.SAVE",
                    "template": "custom"
                },
                {
                    "appearance": "icon-button",
                    "iconSvg": "icon-close",
                    "template": "custom"
                }
            ]
        }
    }
}', N'<cr-title-header
    [titleTranslateKey]="{{translateKey}}"
    [title]="{{label}}"
    (buttonClickEvent)="self.onTitleButtonClick($event)"
    [additionalTranslateKeys]="''COMMON.NEW''"
    [titleValueTranslateKey]="self.isNewItem ? ''COMMON.NEW'' : null"
    [buttonSettings]="self.titleHeaderButtonSettings"
    [titleValue]="self.titleValueText"
></cr-title-header>
', '2022-11-25 09:44:27.6933333 +00:00', 3, N'N', '997c0ceb-64cc-4e3e-9fdb-a7cffc1302fd', 1, NULL, '2022-11-15 17:46:15.5540890 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('018a1ffa-fc64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-code', N'Code', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.ITEM_CODE"
    },
    "fieldSettings": {
        "validationField": "code"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}} || !self.isNewItem || self.item.isDeleted"
    [elementName]="''edit:Item_details.Item_code''"
    [(dataValue)]="self.item.code"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''code''"
    [validator]="self.validator"
></cr-control-edit>', '2022-11-25 09:44:56.8933333 +00:00', 6, N'N', 'a1808e91-c802-45cc-8032-fc343cdc812d', 1, NULL, '2022-11-15 17:48:41.9260545 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('73350c6b-fd64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-short-display-name', N'Short display name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.SHORT_DISPLAY_NAME"
    },
    "fieldSettings": {
        "validationField": "shortDisplayName"
    }
}', N'<cr-control-edit 
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}} || self.item.isDeleted"
    [elementName]="''edit:Item_details.Display_name''"
    [(dataValue)]="self.item.shortDisplayName"
    (dataValueChange)="self.changeTitle()"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [validationField]="''shortDisplayName''"
    [validator]="self.validator"
></cr-control-edit>', '2022-11-25 09:45:20.3133333 +00:00', 4, N'N', 'dea05fb6-cd50-4aca-9fe8-e6da85ebf0dd', 1, NULL, '2022-11-15 17:51:51.3819123 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('0c06e30d-ff64-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-model', N'Model', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.MODEL"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Model''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_model_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_model_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemModelValueDropdownCache''"
    [(value)]="self.item.itemModelID"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadModelDropdownFunction"
    [getListItemsFunction]="self.loadModelsListDropdownFunction"
    [listItemsFunctionAdditionalParameter]="self.item.itemModelID"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:46:29.0033333 +00:00', 4, N'N', '494e7478-784e-4b9c-9430-de021fbb023a', 1, NULL, '2022-11-15 18:03:34.0773516 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('5d681ea7-ff64-ed11-8e60-4ccc6a2bb6d6', '373c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-short-print-name', N'Short print name', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.SHORT_PRINT_NAME"
    },
    "fieldSettings": {
        "validationField": "shortPrintName"
    }
}', N'<cr-control-edit
    [elementName]="''edit:Item_details.Short_print_name''"
    [permissionSettings]="{
        isAccessEdit: self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)
    }"
    [(dataValue)]="self.item.shortPrintName"
    [validator]="self.validator"
    [validationField]="''shortPrintName''"
    [translateKeys]="{{translateKey}}" 
    [dataLabel]="{{label}}"
    [customClass]=''{{classes}}''
    [isDisabled]="{{disabled}}"
></cr-control-edit>', '2022-11-25 09:46:47.8800000 +00:00', 3, N'N', '91e3098e-377e-4899-8b06-8e0ec4c47a09', 1, NULL, '2022-11-15 18:07:51.1579357 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('c351fb11-0065-ed11-8e60-4ccc6a2bb6d6', '3f3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-registration-date', N'Registration date', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.REGISTRATION_DATE"
    }
}', N'<cr-control-datepicker
    [elementName]="''date:Item_details.Registration_date''"
    [permissionSettings]="{
        isAccessEdit: self.isNew ? self.authService.getEndpointAccessGranted(self.EndpointName.item_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.item_id_PUT)
    }"

    [(dataValue)]="self.item.registrationDate"
    [dataLabel]="{{label}}"
    [translateKeys]="{{translateKey}}"
    [class]=''{{classes}}'' 
    [isDisabled]="self.item.isDeleted || {{disabled}}"
></cr-control-datepicker>', '2022-11-25 09:47:15.5500000 +00:00', 2, N'N', 'd621f2dc-f47b-4246-96f8-bd283c1a9fb8', 1, NULL, '2022-11-15 18:10:50.4441923 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('d8279ca8-0365-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric1-type', N'Metric 1 type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_TYPE1"
    },
    "fieldSettings": {
        "validationField": "metric1"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_type_1''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_id_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemMetricTypeFirstDropdownCache''"
    (currentItemValueChange)="self.metricTypeChanged(''metric1'')"
    [(value)]="self.item.metric1.type"
    [textField]="''displayName''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricTypeForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricTypeListForDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric1''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:47:31.1733333 +00:00', 4, N'N', '76112ba4-049b-4639-8ee9-84ae9b7737d3', 1, NULL, '2022-11-15 18:36:31.6466776 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('14349c74-0465-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric1-value', N'Metric 1 value', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_VALUE1"
    },
    "fieldSettings": {
        "validationField": "metric1"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_value_1''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_metricTypeId_value_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_metricTypeId_value_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.metric1.type || self.item.isDeleted"
    [dataCacheName]="''ItemMetricValueFirstDropdownCache''"
    [(value)]="self.item.metric1.value"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricValueForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricValueListForDropdownFunction"
    [listItemsFunctionAdditionalParameter]="self.item.metric1.type"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric1''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:48:07.4600000 +00:00', 3, N'N', '6e334170-ea55-4167-994b-6e459fea627b', 1, NULL, '2022-11-15 18:42:13.9021972 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('2e2b82dd-0465-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric2-type', N'Metric 2 type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_TYPE2"
    },
    "fieldSettings": {
        "validationField": "metric2"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_type_2''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_id_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemMetricTypeSecondDropdownCache''"
    (currentItemValueChange)="self.metricTypeChanged(''metric2'')"
    [(value)]="self.item.metric2.type"
    [textField]="''displayName''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricTypeForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricTypeListForDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric2''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:47:47.8800000 +00:00', 3, N'N', '2898bf0b-e573-45bd-93b1-9453d9ef3a68', 1, NULL, '2022-11-15 18:45:09.8923438 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('ccc91b1e-0565-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric2-value', N'Metric 2 value', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_VALUE2"
    },
    "fieldSettings": {
        "validationField": "metric2"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_value_2''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_metricTypeId_value_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_metricTypeId_value_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.metric2.type || self.item.isDeleted"
    [dataCacheName]="''ItemMetricValueSecondDropdownCache''"
    [(value)]="self.item.metric2.value"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricValueForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricValueListForDropdownFunction"
    [listItemsFunctionAdditionalParameter]="self.item.metric2.type"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric2''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:48:23.2433333 +00:00', 3, N'N', 'c997a92c-f2b0-4461-9ffd-5a7f5ac4d0a3', 1, NULL, '2022-11-15 18:46:58.2732876 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('8adc7e6a-0665-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric3-type', N'Metric 3 type', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_TYPE3"
    },
    "fieldSettings": {
        "validationField": "metric3"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_type_3''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_id_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="self.item.isDeleted"
    [dataCacheName]="''ItemMetricTypeThirdDropdownCache''"
    (currentItemValueChange)="self.metricTypeChanged(''metric3'')"
    [(value)]="self.item.metric3.type"
    [textField]="''displayName''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricTypeForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricTypeListForDropdownFunction"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric3''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:48:45.6666667 +00:00', 3, N'N', '508e803e-ccc2-4b5e-9aed-2d352be6dc36', 1, NULL, '2022-11-15 18:56:15.9261450 +02:00')
INSERT INTO [dbo].[WebComponentViewSettings] ([ID], [WebComponentID], [Code], [Name], [SettingsJson], [ComponentHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [CreateDate]) VALUES ('bc7a229c-0665-ed11-8e60-4ccc6a2bb6d6', '3d3c9b68-e84e-ed11-8e5d-4ccc6a2bb6d6', N'item-details-metric3-value', N'Metric 3 value', N'{
    "defaultValue": {
        "isUseTranslateKey": true,
        "translateKey": "ITEM.DETAILS.HEADER.METRIC_VALUE3"
    },
    "fieldSettings": {
        "validationField": "metric3"
    }
}', N'<cr-dropdown-smart-control
    [elementName]="''smart-dropdown:Item_details.Metric_value_3''"
    [permissionSettings]="{
        isAccessRead: (self.EndpointName.item__item_metric_type_metricTypeId_value_id_dropdown_GET | endpointAccessGrantedPipe),
        isAccessEdit: (self.isNewItem ? (self.EndpointName.item_POST | endpointAccessGrantedPipe) :
            (self.EndpointName.item_id_PUT | endpointAccessGrantedPipe)) &&
            (self.EndpointName.item__item_metric_type_metricTypeId_value_dropdown_GET | endpointAccessGrantedPipe)
    }"
    [isDisabled]="!self.item.metric3.type || self.item.isDeleted"
    [dataCacheName]="''ItemMetricValueThirdDropdownCache''"
    [(value)]="self.item.metric3.value"
    [textField]="''name''"
    [codeField]="''code''"
    [valueField]="''id''"
    [useCodeInList]="true"
    [useCodeInValue]="true"
    [getOneItemFunction]="self.loadItemMetricValueForDropdownFunction"
    [getListItemsFunction]="self.loadItemMetricValueListForDropdownFunction"
    [listItemsFunctionAdditionalParameter]="self.item.metric3.type"
    [unselectedItemValue]="{id: null, translateKey: ''COMMON.MOCK_OBJ.NOT_SELECTED''}"
    [dataTranslateKeyField]="''translateKey''"
    [validator]="self.validator"
    [validationField]="''metric3''"
    [labelTranslateKey]="{{translateKey}}"
    [label]="{{label}}"
    [class]=''{{classes}}''
></cr-dropdown-smart-control>', '2022-11-25 09:48:59.3733333 +00:00', 3, N'N', 'd45337c9-1f66-49f6-9edb-e092945a2cd1', 1, NULL, '2022-11-15 18:57:39.2067900 +02:00')

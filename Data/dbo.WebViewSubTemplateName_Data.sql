SET IDENTITY_INSERT [dbo].[WebViewSubTemplateName] ON
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (1, 1, 1, N'<ng-container><cr-title-header
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
        (submit)=''false && self.onSubmit ? self.onSubmit() : null''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new undefined">
    <ng-template #tooltipTemplate let-anchor>
      <span>{{ self.anchor.nativeElement.innerText }}</span>
    </ng-template>

    <div 
        kendoTooltip
        showOn="none"
        [tooltipTemplate]="self.tooltipTemplate"
        filter=".k-grid td"
        (mouseover)="self.showTooltip($event)"
    >
      <kendo-grid
        [attr.data-element-name]="''grid:Partner_details.Mailing_category_manage_grid''"
        [data]="self.cache.gridView"
        [pageSize]="self.cache.paginatorGrid?.size"
        [skip]="self.cache.paginatorGrid?.skip"
        [pageable]="{
            buttonCount: 10,
            info: true,
            type: ''numeric'' ,
            pageSizes: true,
            previousNext: true
        }"
        [selectable]="{enabled: true, checkboxOnly: true}"
        [rowSelected]="self.isRowSelected"
        [resizable]="true"
        (selectionChange)="self.onSelectedChange($event)"
        (pageChange)="self.pageChange($event)"
      >
        <kendo-grid-checkbox-column title="" width="60px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.USE''">
                  {{ ''PARTNER.DETAILS.GENERAL.USE'' | translate }}
                </span>
          </ng-template>
        </kendo-grid-checkbox-column>
        <kendo-grid-column title="">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.DISPLAY_NAME''">
                  {{ ''PARTNER.DETAILS.GENERAL.DISPLAY_NAME'' | translate }}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <label>{{dataItem.name}}</label>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column title="" width="120px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.EMAIL''">
                  {{ ''PARTNER.DETAILS.GENERAL.EMAIL'' | translate }}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.mailingCategorySelected?.action === self.Action.default || dataItem.mailingCategorySelected?.action === self.Action.create || dataItem.mailingCategorySelected?.action === self.Action.update">
              <cr-checkbox-control
                [(dataValue)]="dataItem.mailingCategorySelected.sendMail"
                (dataValueChange)="self.dataChanged(dataItem)"
              ></cr-checkbox-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column title="" width="120px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.SMS''">
                  {{ ''PARTNER.DETAILS.GENERAL.SMS'' | translate }}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.mailingCategorySelected?.action === self.Action.default || dataItem.mailingCategorySelected?.action === self.Action.create || dataItem.mailingCategorySelected?.action === self.Action.update">
              <cr-checkbox-control
                [(dataValue)]="dataItem.mailingCategorySelected.sendSMS"
                (dataValueChange)="self.dataChanged(dataItem)"
              ></cr-checkbox-control>
            </section>
          </ng-template>
        </kendo-grid-column>

        <ng-template kendoGridNoRecordsTemplate>
            <span [attr.data-translate]="''COMMON.GRID.NO_RECORDS''">
                {{ ''COMMON.GRID.NO_RECORDS'' | translate }}
            </span>
        </ng-template>

        <ng-template kendoPagerTemplate>
          <cr-grid-paginator [totalElements]="self.cache.paginatorGrid?.totalElements || self.cache.gridView?.total"></cr-grid-paginator>
        </ng-template>
      </kendo-grid>
    </div>
  </div>
        </ng-template>
      </cr-panel></ng-container>', '2022-08-26 15:38:35.8966667 +00:00', 39, N'N', '60e35795-6ef4-4968-8c97-e17d3149ae80', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (2, 1, 2, N'<ng-container><cr-title-header
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
        (submit)=''false && self.onSubmit ? self.onSubmit() : null''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new undefined">
    <ng-template #tooltipTemplate let-anchor>
      <span>{{ self.anchor.nativeElement.innerText }}</span>
    </ng-template>

    <div 
        kendoTooltip
        showOn="none"
        [tooltipTemplate]="self.tooltipTemplate"
        filter=".k-grid td"
        (mouseover)="self.showTooltip($event)"
    >
      <kendo-grid
        [attr.data-element-name]="''grid:Partner_details.Mailing_category_manage_grid''"
        [data]="self.cache.gridView"
        [pageSize]="self.cache.paginatorGrid?.size"
        [skip]="self.cache.paginatorGrid?.skip"
        [pageable]="{
            buttonCount: 10,
            info: true,
            type: ''numeric'' ,
            pageSizes: true,
            previousNext: true
        }"
        [selectable]="{enabled: true, checkboxOnly: true}"
        [rowSelected]="self.isRowSelected"
        [resizable]="true"
        (selectionChange)="self.onSelectedChange($event)"
        (pageChange)="self.pageChange($event)"
      >
        <kendo-grid-checkbox-column title="" width="60px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.USE''">
                  {{ ''PARTNER.DETAILS.GENERAL.USE'' | translate }}
                </span>
          </ng-template>
        </kendo-grid-checkbox-column>
        <kendo-grid-column title="">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.DISPLAY_NAME''">
                  {{ ''PARTNER.DETAILS.GENERAL.DISPLAY_NAME'' | translate }}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <label>{{dataItem.name}}</label>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column title="" width="120px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.EMAIL''">
                  {{ ''PARTNER.DETAILS.GENERAL.EMAIL'' | translate }}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.mailingCategorySelected?.action === self.Action.default || dataItem.mailingCategorySelected?.action === self.Action.create || dataItem.mailingCategorySelected?.action === self.Action.update">
              <cr-checkbox-control
                [(dataValue)]="dataItem.mailingCategorySelected.sendMail"
                (dataValueChange)="self.dataChanged(dataItem)"
              ></cr-checkbox-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column title="" width="120px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.GENERAL.SMS''">
                  {{ ''PARTNER.DETAILS.GENERAL.SMS'' | translate }}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.mailingCategorySelected?.action === self.Action.default || dataItem.mailingCategorySelected?.action === self.Action.create || dataItem.mailingCategorySelected?.action === self.Action.update">
              <cr-checkbox-control
                [(dataValue)]="dataItem.mailingCategorySelected.sendSMS"
                (dataValueChange)="self.dataChanged(dataItem)"
              ></cr-checkbox-control>
            </section>
          </ng-template>
        </kendo-grid-column>

        <ng-template kendoGridNoRecordsTemplate>
            <span [attr.data-translate]="''COMMON.GRID.NO_RECORDS''">
                {{ ''COMMON.GRID.NO_RECORDS'' | translate }}
            </span>
        </ng-template>

        <ng-template kendoPagerTemplate>
          <cr-grid-paginator [totalElements]="self.cache.paginatorGrid?.totalElements || self.cache.gridView?.total"></cr-grid-paginator>
        </ng-template>
      </kendo-grid>
    </div>
  </div>
        </ng-template>
      </cr-panel></ng-container>', '2022-08-26 15:38:35.8966667 +00:00', 39, N'N', '5bde8a7d-68f8-4e05-9479-790561e5319b', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (3, 2, 1, N'<ng-container><cr-title-header
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
        (submit)=''false && self.onSubmit ? self.onSubmit() : null''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new undefined">
<ng-template #tooltipTemplate let-anchor>
    <span>{{ self.anchor.nativeElement.innerText }}</span>
</ng-template>
    <div kendoTooltip
         showOn="none"
         [tooltipTemplate]="self.tooltipTemplate"
         filter=".k-grid td"
         (mouseover)="self.showTooltip($event)">
      <kendo-grid
        [attr.data-element-name]="''grid:Partner_details.Groups_grid''"
        [data]="self.cache.gridView"
        [pageSize]="self.cache.paginatorGrid?.size"
        [skip]="self.cache.paginatorGrid?.skip"

        [pageable]="{
            buttonCount: 10,
            info: true,
            type: ''numeric'' ,
            pageSizes: true,
            previousNext: true
          }"
        [selectable]="{enabled: true, checkboxOnly: true}"
        [rowSelected]="self.isRowSelected"
        [resizable]="true"
        (selectionChange)="self.onSelectedChange($event)"
        (pageChange)="self.pageChange($event)"
      >
        <kendo-grid-checkbox-column width="60px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''COMMON.SELECT''">
                  {{''COMMON.SELECT'' | translate}}
                </span>
          </ng-template>
        </kendo-grid-checkbox-column>
        <kendo-grid-column>
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <label>{{dataItem.displayName}}</label>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column width="120px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.partnerGroupSelected?.action === self.Action.default || dataItem.partnerGroupSelected?.action === self.Action.create || dataItem.partnerGroupSelected?.action === self.Action.update">
              <cr-checkbox-control
                [elementName]="''checkbox:Partner_details.Partner_group_selected''"
                [(dataValue)]="dataItem.partnerGroupSelected.isActivated"
                (dataValueChange)="self.dataChanged(dataItem)"
              ></cr-checkbox-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column width="180px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.FROM''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.FROM'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.partnerGroupSelected?.action === self.Action.default || dataItem.partnerGroupSelected?.action === self.Action.create || dataItem.partnerGroupSelected?.action === self.Action.update">
              <cr-date-picker-simple-control
                [elementName]="''simple-date:Partner_details.Partner_group_activated_from''"
                [(dataValue)]="dataItem.partnerGroupSelected.activatedFrom"
                (dataValueChange)="self.dataChanged(dataItem)"
                [validationMessage]="self.validateDates(dataItem.partnerGroupSelected.activatedFrom, dataItem.partnerGroupSelected.activatedTo, ''Activated date from should be greater than date to'')"
              ></cr-date-picker-simple-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column width="180px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.TO''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.TO'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.partnerGroupSelected?.action === self.Action.default || dataItem.partnerGroupSelected?.action === self.Action.create || dataItem.partnerGroupSelected?.action === self.Action.update">
              <cr-date-picker-simple-control
                [elementName]="''simple-date:Partner_details.Partner_group_activated_to''"
                [(dataValue)]="dataItem.partnerGroupSelected.activatedTo"
                (dataValueChange)="self.dataChanged(dataItem)"
                [validationMessage]="self.validateDates(dataItem.partnerGroupSelected.activatedFrom, dataItem.partnerGroupSelected.activatedTo, ''Activated date from should be greater than date to'')"
              ></cr-date-picker-simple-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <ng-template kendoGridNoRecordsTemplate>
              <span [attr.data-translate]="''COMMON.GRID.NO_RECORDS''">
                {{ ''COMMON.GRID.NO_RECORDS'' | translate }}
              </span>
        </ng-template>

        <ng-template kendoPagerTemplate>
          <cr-grid-paginator [totalElements]="self.cache.paginatorGrid?.totalElements || self.cache.gridView?.total"></cr-grid-paginator>
        </ng-template>
      </kendo-grid>
    </div>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-08-26 15:38:35.9133333 +00:00', 34, N'N', '66877586-b435-4886-9132-6b207cd83c43', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (4, 2, 2, N'<ng-container><cr-title-header
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
        (submit)=''false && self.onSubmit ? self.onSubmit() : null''
      >
        <ng-template crPanelContent>
          <div class="cr-grid-wrapper-new undefined">
<ng-template #tooltipTemplate let-anchor>
    <span>{{ self.anchor.nativeElement.innerText }}</span>
</ng-template>
    <div kendoTooltip
         showOn="none"
         [tooltipTemplate]="self.tooltipTemplate"
         filter=".k-grid td"
         (mouseover)="self.showTooltip($event)">
      <kendo-grid
        [attr.data-element-name]="''grid:Partner_details.Groups_grid''"
        [data]="self.cache.gridView"
        [pageSize]="self.cache.paginatorGrid?.size"
        [skip]="self.cache.paginatorGrid?.skip"

        [pageable]="{
            buttonCount: 10,
            info: true,
            type: ''numeric'' ,
            pageSizes: true,
            previousNext: true
          }"
        [selectable]="{enabled: true, checkboxOnly: true}"
        [rowSelected]="self.isRowSelected"
        [resizable]="true"
        (selectionChange)="self.onSelectedChange($event)"
        (pageChange)="self.pageChange($event)"
      >
        <kendo-grid-checkbox-column width="60px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''COMMON.SELECT''">
                  {{''COMMON.SELECT'' | translate}}
                </span>
          </ng-template>
        </kendo-grid-checkbox-column>
        <kendo-grid-column>
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.DISPLAY_NAME'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <label>{{dataItem.displayName}}</label>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column width="120px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.ACTIVATED'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.partnerGroupSelected?.action === self.Action.default || dataItem.partnerGroupSelected?.action === self.Action.create || dataItem.partnerGroupSelected?.action === self.Action.update">
              <cr-checkbox-control
                [elementName]="''checkbox:Partner_details.Partner_group_selected''"
                [(dataValue)]="dataItem.partnerGroupSelected.isActivated"
                (dataValueChange)="self.dataChanged(dataItem)"
              ></cr-checkbox-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column width="180px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.FROM''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.FROM'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.partnerGroupSelected?.action === self.Action.default || dataItem.partnerGroupSelected?.action === self.Action.create || dataItem.partnerGroupSelected?.action === self.Action.update">
              <cr-date-picker-simple-control
                [elementName]="''simple-date:Partner_details.Partner_group_activated_from''"
                [(dataValue)]="dataItem.partnerGroupSelected.activatedFrom"
                (dataValueChange)="self.dataChanged(dataItem)"
                [validationMessage]="self.validateDates(dataItem.partnerGroupSelected.activatedFrom, dataItem.partnerGroupSelected.activatedTo, ''Activated date from should be greater than date to'')"
              ></cr-date-picker-simple-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <kendo-grid-column width="180px">
          <ng-template kendoGridHeaderTemplate>
                <span [attr.data-translate]="''PARTNER.DETAILS.MANAGE_GROUP.TO''">
                  {{''PARTNER.DETAILS.MANAGE_GROUP.TO'' | translate}}
                </span>
          </ng-template>
          <ng-template kendoGridCellTemplate let-dataItem>
            <section
              *ngIf="dataItem.partnerGroupSelected?.action === self.Action.default || dataItem.partnerGroupSelected?.action === self.Action.create || dataItem.partnerGroupSelected?.action === self.Action.update">
              <cr-date-picker-simple-control
                [elementName]="''simple-date:Partner_details.Partner_group_activated_to''"
                [(dataValue)]="dataItem.partnerGroupSelected.activatedTo"
                (dataValueChange)="self.dataChanged(dataItem)"
                [validationMessage]="self.validateDates(dataItem.partnerGroupSelected.activatedFrom, dataItem.partnerGroupSelected.activatedTo, ''Activated date from should be greater than date to'')"
              ></cr-date-picker-simple-control>
            </section>
          </ng-template>
        </kendo-grid-column>
        <ng-template kendoGridNoRecordsTemplate>
              <span [attr.data-translate]="''COMMON.GRID.NO_RECORDS''">
                {{ ''COMMON.GRID.NO_RECORDS'' | translate }}
              </span>
        </ng-template>

        <ng-template kendoPagerTemplate>
          <cr-grid-paginator [totalElements]="self.cache.paginatorGrid?.totalElements || self.cache.gridView?.total"></cr-grid-paginator>
        </ng-template>
      </kendo-grid>
    </div>
</div>
        </ng-template>
      </cr-panel></ng-container>', '2022-08-26 15:38:36.1333333 +00:00', 34, N'N', '34c8ad6e-3cbc-4ae1-82d5-c8df87fa92f6', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (5, 3, 1, N'<ng-container><cr-title-header
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
      </cr-panel></ng-container>', '2022-08-26 15:38:35.9333333 +00:00', 39, N'N', '75122439-d41c-45ff-b572-28b2c111094a', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (6, 3, 2, N'<ng-container><cr-title-header
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
      </cr-panel></ng-container>', '2022-08-26 15:38:36.3366667 +00:00', 39, N'N', '4083ab15-c1c6-417a-9498-d595e67dcc48', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (7, 4, 1, N'<ng-container><cr-title-header
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
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (8, 4, 2, N'<ng-container><cr-title-header
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
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10007, 10005, 1, N'<ng-container><cr-title-header
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
          <div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_code''"
    [(dataValue)]="self.contactPerson.code"
    [validator]="self.contactPersonValidator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.contactPersonValidator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.contactPersonValidator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.contactPersonValidator"
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
    [validator]="self.contactPersonValidator"
    [validationField]="''email''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
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
</div></div><div class="row"><div class=''col-md-6''><cr-control-datepicker
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
</div></div><div class="row"><div class=''col-md-12''><cr-control-edit 
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
        (submit)=''false && self.onSubmit ? self.onSubmit() : null''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.contactPerson.id"
    [selectedMailingCategory]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-08-26 15:38:36.5233333 +00:00', 10, N'N', '2b916501-1cda-4e94-a067-4c7fa7c569c7', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10008, 10005, 2, N'<ng-container><cr-title-header
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
          <div class="row"><div class=''col-md-6''><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.CODE''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_code''"
    [(dataValue)]="self.contactPerson.code"
    [validator]="self.contactPersonValidator"
    [validationField]="''code''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.FIRST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_first_name''"
    [(dataValue)]="self.contactPerson.firstName"
    [validator]="self.contactPersonValidator"
    [validationField]="''firstName''"
></cr-control-edit></div><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.LAST_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_last_name''"
    [(dataValue)]="self.contactPerson.lastName"
    [validator]="self.contactPersonValidator"
    [validationField]="''lastName''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
    [translateKeys]="''PARTNER.DETAILS.CONTACT_PERSON.DISPLAY_NAME''" 
    [dataLabel]="''''"
    [customClass]=''""''
    [isDisabled]="false"
    [elementName]="''edit:Partner_details.Contact_person_display_name''"
    [(dataValue)]="self.contactPerson.displayName"
    [validator]="self.contactPersonValidator"
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
    [validator]="self.contactPersonValidator"
    [validationField]="''email''"
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-control-edit 
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
></cr-control-edit></div></div><div class="row"><div class=''col-md-4''><cr-checkbox-control
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
</div></div><div class="row"><div class=''col-md-6''><cr-control-datepicker
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
</div></div><div class="row"><div class=''col-md-12''><cr-control-edit 
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
        (submit)=''false && self.onSubmit ? self.onSubmit() : null''
      >
        <ng-template crPanelContent>
          <cr-partner-mailing-category-control
    [editable]="true && (self.isNew ? 
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_POST) :
            self.authService.getEndpointAccessGranted(self.EndpointName.partner_id_PUT))"

    [partnerId]="self.contactPerson.id"
    [selectedMailingCategory]="self.contactPerson.mailingCategories"
    (editClickEvent)="self.onEditMailingCategory()"
    [class]=''""''
    [editIcon]="''icon-edit''"
></cr-partner-mailing-category-control>
        </ng-template>
      </cr-panel></div></div>
        </ng-template>
      </cr-panel></ng-container>', '2022-08-26 15:38:36.5233333 +00:00', 10, N'N', '548b91e0-700c-4d37-9ea4-aaf42672d75e', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10009, 10006, 1, N'<ng-container><cr-title-header
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
      </cr-panel></ng-container>', '2022-08-26 15:38:36.0600000 +00:00', 4, N'N', 'e7b48d94-47b6-4147-8dc3-9929795bf371', 1, NULL)
INSERT INTO [dbo].[WebViewSubTemplateName] ([ID], [WebViewSubTemplateID], [LanguageID], [TemplateHtml], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser]) VALUES (10010, 10006, 2, N'<ng-container><cr-title-header
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
      </cr-panel></ng-container>', '2022-08-26 15:38:36.4066667 +00:00', 4, N'N', '12aecd19-6bb9-45d0-b2a5-ddd50c300956', 1, NULL)
SET IDENTITY_INSERT [dbo].[WebViewSubTemplateName] OFF

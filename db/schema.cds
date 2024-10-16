namespace com.dscgmbh.poc.replace_me;

using {
    cuid,
    Country,
    Currency,
    sap.common.CodeList
} from '@sap/cds/common';
using from '@sap/cds-common-content';


entity Status : CodeList, {
        @title      : '{i18n>Status.code}'
        @Common.Text: name
    key code : String(20);
}

entity StepStatus : CodeList, {
        @title      : '{i18n>StepStatus.code}'
        @Common.Text: name
    key code : String(20);
}

@odata.draft.enabled: true
@fiori.draft.enabled: true
entity Belege : cuid {
    // cuid => Entity bekommt GUID key Feld mit dem Namen ID!
    @title: '{i18n>Belege.amount}'
    amount : Decimal(10, 2);

    @title: '{i18n>Belege.status}'
    status : Association to one Status;

    @title: '{i18n>Belege.waehrs}'
    waehrs : Currency;

    @title: '{i18n>Belege.land}'
    land   : Country;

    @title: '{i18n>Belege.items}'
    items  : Composition of many Positionen
                 on items.parent = $self;
}

entity Positionen : cuid {

    parent  : Association to one Belege;

    @title: '{i18n>Positionen.descr}'
    descr   : String(100);

    @title: '{i18n>Positionen.product}'
    product : String(20);

    @title: '{i18n>Positionen.steps}'
    steps   : Composition of many Arbeitsschritte
                  on steps.parent = $self;
}


entity Arbeitsschritte : cuid {
    parent     : Association to one Positionen;

    @title: '{i18n>Arbeitsschritte.stepName}'
    stepName   : String(100);

    @title: '{i18n>Arbeitsschritte.stepStatus}'
    stepStatus : Association to StepStatus;
}

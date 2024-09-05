using main_service as service from '../../../srv/main_service';

/*
SelectionFields
*/
annotate service.Belege with @UI.SelectionFields: [
    ID,
    amount,
    land.code,
    status.code,
];

/*
LineItem
*/
annotate service.Belege with @UI.LineItem: [
    {
        $Type                : 'UI.DataField',
        Value                : ID,
    },
    {
        $Type                : 'UI.DataField',
        Value                : amount,
    },
    {
        $Type                : 'UI.DataField',
        Value                : land.code
    },
    {
        $Type                : 'UI.DataField',
        Value                : status.code,
    },
];

/*
UI
*/
annotate service.Belege with @(
    UI.FieldGroup           : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Value: amount,
            },
            {
                $Type: 'UI.DataField',
                Value: land.code,
            },
            {
                $Type: 'UI.DataField',
                Value: status.code,
            },
        ],

    },

    UI.Facets               : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>AllgemeineInformation}',
            Target: '@UI.FieldGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Positionen.Plural}',
            Target: 'items/@UI.LineItem',
        },
    ]
);

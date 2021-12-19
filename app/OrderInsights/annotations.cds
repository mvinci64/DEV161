using TechEdLCAP010Service as service from '../../srv/service';

annotate service.OrderService with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'OrderFrom',
            Value : OrderFrom,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OrderTo',
            Value : OrderTo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Remark',
            Value : Remark,
        },
    ]
);
annotate service.OrderService with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'OrderFrom',
                Value : OrderFrom,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrderTo',
                Value : OrderTo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Remark',
                Value : Remark,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

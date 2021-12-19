namespace TechEdLCAP010;

using sap.workflow from './WorkflowObject';

entity Hero
{
    key ID : UUID
        @Core.Computed;
    FirstName : String(100);
    LastName : String(100);
    Email : String(100);
    PublicName : String(100);
    isBooked : Association to many Order on isBooked.oderedHero = $self;
}

entity Customer
{
    key ID : UUID
        @Core.Computed;
    FirstName : String(100);
    LastName : String(100);
    Email : String(100);
    hasOrders : Association to many Order on hasOrders.byCustomer = $self;
}

entity Order
{
    key ID : UUID
        @Core.Computed;
    OrderFrom : DateTime;
    OrderTo : DateTime;
    Remark : String(500);
    byCustomer : Association to one Customer;
    oderedHero : Association to one Hero;
}

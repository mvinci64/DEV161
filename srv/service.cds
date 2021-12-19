using { TechEdLCAP010 as my } from '../db/schema';

service ConsumerService
{
    entity HeroCatalog as
        projection on my.Hero;

    entity MyOrders as
        projection on my.Order
        {
            *
        }
        excluding
        {
            byCustomer
        };
}

@path : 'service/TechEdLCAP010'
@requires : 'TechEdLCAP010Manager'
service TechEdLCAP010Service
{
    @odata.draft.enabled
    entity HeroService as
        projection on my.Hero;

    @odata.draft.enabled
    entity CustomerService as
        projection on my.Customer;

    @odata.draft.enabled
    entity OrderService as
        projection on my.Order;
}

service cnsumerService
{
}

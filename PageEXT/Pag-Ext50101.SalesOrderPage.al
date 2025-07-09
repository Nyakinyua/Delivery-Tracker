namespace ALProject.ALProject;

using Microsoft.Sales.Document;

pageextension 50101 "Sales Order Page" extends "sales order"
{
    layout
    {
        
        addlast("Shipping and Billing")
        {
             field("Delivery Method"; Rec."Delivery Method")
            {
                ApplicationArea = basic;
                
            }
            field("Delivery Instructions"; Rec."Delivery Instructions")
            {
                ApplicationArea = basic;

               
              
            }
        }


    }
}

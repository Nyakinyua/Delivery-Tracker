namespace ALProject.ALProject;
using Microsoft.Sales.Posting;
using Microsoft.Sales.Document;

codeunit 50100 "Delivery Event Subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', false, false)]
    local procedure HandleBeforePostSalesDoc(SalesHeader: Record "Sales Header"; var IsHandled: Boolean)
    var
        Err001: Label 'You must provide delivery instructions when the delivery method is Courier';
    begin

        if SalesHeader."Delivery Method" = SalesHeader."Delivery Method"::Courier then begin
            if SalesHeader."Delivery Instructions" = '' then begin

                error(Err001)

            end;
        end;


    end;

}

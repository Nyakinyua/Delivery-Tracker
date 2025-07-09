namespace ALProject.ALProject;

using Microsoft.Sales.Document;

tableextension 50100 "Sales Header Table" extends "Sales Header"
{
    fields
    {
        field(50100; "Delivery Method"; Option)
        {
            Caption = 'Delivery Method';
            OptionMembers = "Courier","Pick Up","Delivery Van";
            DataClassification = ToBeClassified;

        }
        field(50101; "Delivery Instructions"; Text[100])
        {
            Caption = 'Delivery Instructions';

            trigger OnValidate()
            var
                DInstructions: Record "Delivery Instruction Log";
            begin
                DInstructions.Reset();
                DInstructions.SetRange("Sales Order No.", SalesHeader."No.");
                if DInstructions.FindFirst() then begin
                    DInstructions."Date Time of Last Modification" := CurrentDateTime;
                    DInstructions.Modify();

                end else begin
                    DInstructions.Init();
                    DInstructions."Sales Order No." := Rec."No.";
                    DInstructions."Delivery Method" := Rec."Delivery Method";
                    DInstructions.Instructions := Rec."Delivery Instructions";
                    DInstructions."Date Time of Last Modification" := CurrentDateTime;
                    DInstructions.Insert();


                end;

            end;
        }
    }
}

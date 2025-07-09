table 50100 "Delivery Instruction Log"
{
    Caption = 'Delivery Instruction Log';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Sales Order No."; Code[20])
        {
            Caption = 'Sales Order No.';
        }
        field(2; "Delivery Method"; Option)
        {
            Caption = 'Delivery Method';
            OptionMembers = "Courier","Pick Up","Delivery Van";
        }
        field(3; Instructions; Text[100])
        {
            Caption = 'Instructions';
        }
        field(4; "Date Time of Last Modification"; Datetime)
        {
            Caption = 'Date Time of Last Modification';
        }
        field(5; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
            DataClassification = SystemMetadata;
        }
    }
    keys
    {
        key(PK; "Sales Order No.","Entry No.")
        {
            Clustered = true;
        }
    }
}

table 50107 PostedProject
{
    Caption = 'PostedProject';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "ID"; Code[20])
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(4; TimeEstimated; Integer)
        {
            Caption = 'TimeEstimated';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(5; TimeSpend; Integer)
        {
            Caption = 'TimeSpend';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(6; TimeRemaining; Integer)
        {
            Caption = 'TimeRemaining';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(7; PostedTime; DateTime)
        {
            Caption = 'PostedTime';
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        PostedTime := System.CurrentDateTime();
    end;
}

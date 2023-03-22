table 50105 ConsultantTRTable
{
    Caption = 'ConsultantTimeRegistrationTable';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Consultant ID"; Code[20])
        {
            Caption = 'Consultant ID';
            DataClassification = ToBeClassified;
            TableRelation = Consultant.No;
            Editable = false;
        }
        field(2; "Time Registration ID"; Integer)
        {
            Caption = 'Time ID';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
        }
        field(3; "Project"; Code[20])
        {
            Caption = 'Project ID';
            DataClassification = ToBeClassified;
            TableRelation = Project."No";
        }
        field(4; Minutes; Integer)
        {
            Caption = 'Time spend in minutes';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Consultant ID", "Time Registration ID")
        {
            Clustered = true;
        }
    }
}

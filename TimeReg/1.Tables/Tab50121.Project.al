table 50121 Project
{
    Caption = 'Project';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; HoursEstimated; Integer)
        {
            Caption = 'Hours Estimated';
            DataClassification = ToBeClassified;
        }
        field(4; HoursSpend; Integer)
        {
            Caption = 'Hours Spend';
            // FieldClass = FlowField;
            // TODO CALCFORMULA 
        }
        field(5; "HoursRemaining"; Integer)
        {
            Caption = 'Hours Remaining';
            // FieldClass = FlowField;
            // TODO CALCFORMULA 
        }

        field(100; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }

    // TODO Clean up all depending items in table "TimeRegistration"
}

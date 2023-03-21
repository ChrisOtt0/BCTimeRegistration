table 50121 "Posted Project"
{
    Caption = 'Posted Project';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Project No."; Integer)
        {
            Caption = 'Project No.';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Project Name"; Text[50])
        {
            Caption = 'Project Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Total Estimated Hours"; Integer)
        {
            Caption = 'Total Estimated Hours';
            DataClassification = ToBeClassified;
        }
        field(4; "Hours Remaining"; Integer)
        {
            Caption = 'Hours Remaining';
            DataClassification = ToBeClassified;
        }
        field(5; "Hours Spent"; Integer)
        {
            Caption = 'Hours Spent';
            DataClassification = ToBeClassified;
        }
        field(6; "Archived"; DateTime)
        {
            Caption = 'Archived';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Project No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Rec.Archived := System.CurrentDateTime();
    end;
}

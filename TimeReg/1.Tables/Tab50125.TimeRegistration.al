table 50125 TimeRegistration
{
    Caption = 'TimeRegistration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[20])
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;
        }
        field(2; ProjectID; Code[20])
        {
            Caption = 'ProjectID';
            DataClassification = ToBeClassified;
        }
        field(3; EmployeeID; Code[20])
        {
            Caption = 'EmployeeID';
            DataClassification = ToBeClassified;
        }
        field(4; Minutes; Integer)
        {
            Caption = 'Minutes';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}

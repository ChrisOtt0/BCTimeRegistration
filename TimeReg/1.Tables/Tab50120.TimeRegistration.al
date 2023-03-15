table 50120 TimeRegistration
{
    Caption = 'TimeRegistration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EmployeeID; Integer)
        {
            Caption = 'EmployeeID';
            DataClassification = ToBeClassified;
        }
        field(2; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }
        field(3; StartTime; Time)
        {
            Caption = 'StartTime';
            DataClassification = ToBeClassified;
        }
        field(4; EndTime; Time)
        {
            Caption = 'EndTime';
            DataClassification = ToBeClassified;
        }
        field(5; HoursWorked; Decimal)
        {
            Caption = 'HoursWorked';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; EmployeeID)
        {
            Clustered = true;
        }
    }
}

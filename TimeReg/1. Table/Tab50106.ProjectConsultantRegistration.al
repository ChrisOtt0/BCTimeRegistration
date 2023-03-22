table 50106 ProjectConsultantRegistration
{
    Caption = 'ProjectConsultantRegistration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Project ID"; Code[20])
        {
            Caption = 'Project ID';
            DataClassification = ToBeClassified;
            TableRelation = Project.No;
        }
        field(2; "Consultant ID"; Code[20])
        {
            Caption = 'Consultant ID';
            DataClassification = ToBeClassified;
            TableRelation = Consultant.No;
        }
    }
    keys
    {
        key(PK; "Project ID", "Consultant ID")
        {
            Clustered = true;
        }
    }
}

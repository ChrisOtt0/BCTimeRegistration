table 50101 Consultant
{
    Caption = 'Consultant';
    DataCaptionFields = No, Name, LastName;
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
        field(3; LastName; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
        }
        field(4; BirthDate; Date)
        {
            Caption = 'Date of birth';
            DataClassification = ToBeClassified;
        }
        field(5; "Mail"; Text[100])
        {
            Caption = 'Mail';
            DataClassification = ToBeClassified;
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

    // Clean up all depending items
    trigger OnDelete()
    var
        ConsultantTRTable: Record 50105;
    begin
        ConsultantTRTable.SetRange("Consultant ID", No);
        ConsultantTRTable.DeleteAll;
    end;

    trigger OnInsert()
    var
        ConsultantSetup: Record "Consultant Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "No" = '' then begin
            ConsultantSetup.get;
            ConsultantSetup.TestField("Consultant Nos.");
            NoSeriesMgt.InitSeries(ConsultantSetup."Consultant Nos.", xRec."No. Series", 0D, "No", "No. Series");
        end;
    end;
}

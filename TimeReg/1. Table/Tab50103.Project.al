table 50103 Project
{
    Caption = 'Project';
    DataCaptionFields = No, Name;
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
        field(3; TimeEstimated; Integer)
        {
            Caption = 'Time Estimated';
            DataClassification = ToBeClassified;
        }
        field(4; TimeSpend; Integer)
        {
            Caption = 'Time Spend';
            FieldClass = FlowField;
            CalcFormula = sum(ConsultantTRTable.Minutes where("Project" = field("No")));

        }
        field(5; TimeRemaining; Integer)
        {
            Caption = 'Time Remaining';
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
        ConsultantTRTable.SetRange("Project", No);
        ConsultantTRTable.DeleteAll;
    end;

    trigger OnInsert()
    var
        ProjectSetup: Record "Project Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "No" = '' then begin
            ProjectSetup.get;
            ProjectSetup.TestField("Project Nos.");
            NoSeriesMgt.InitSeries(ProjectSetup."Project Nos.", xRec."No. Series", 0D, "No", "No. Series");
        end;
    end;

    trigger OnModify()
    var
        ProjectRec: Record "Project";
    begin
        Rec.TimeRemaining := Rec.TimeEstimated - Rec.TimeSpend;

        Commit();

        Rec.MODIFY();
    end;

}

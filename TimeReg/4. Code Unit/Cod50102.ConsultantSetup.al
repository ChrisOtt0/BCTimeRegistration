codeunit 50102 "Consultant Setup"
{
    TableNo = Consultant;

    trigger OnRun()
    begin
        InitSetup();
    end;

    local procedure InitSetup()
    var
        ConsultantSetup: Record "Consultant Setup";
    begin
        SetupExists := ConsultantSetup.get();
        if SetupExists then
            exit;

        ConsultantSetup.Init;
        ConsultantSetup."Export Path" := 'C:\RUN\MY\';

        if ConsultantSetup.Insert then
            Message('Consultant setup done');
    end;

    procedure NumConsultantSetup()

    var
        ConsultantSetup: Record "Consultant Setup";
        NoSerie: Record "No. Series";
        NoSerieLine: Record "No. Series Line";

    begin
        //no series creation
        ConsultantSetup.init;
        NoSerie.Code := 'STD';
        NoSerie.Description := 'Consultant Management';
        NoSerie."Default Nos." := true;
        NoSerie."Manual Nos." := true;
        if NoSerie.Insert then;

        NoSerieLine."Series Code" := NoSerie.Code;
        NoSerieLine."Starting No." := 'STD0000';
        NoSerieLine."Ending No." := 'STD9000';
        if NoSerieLine.Insert then;
        ConsultantSetup."Consultant Nos." := NoSerie.code;
        ConsultantSetup.Modify();
    end;

    var
        SetupExists: Boolean;
}

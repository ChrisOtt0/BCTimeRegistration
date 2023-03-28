codeunit 50103 "Project Setup"
{
    TableNo = Project;

    trigger OnRun()
    begin
        InitSetup();
    end;

    local procedure InitSetup()
    var
        ProjectSetup: Record "Project Setup";
    begin
        SetupExists := ProjectSetup.get();
        if SetupExists then
            exit;

        ProjectSetup.Init;
        ProjectSetup."Export Path" := 'C:\RUN\MY\';

        if ProjectSetup.Insert then
            Message('Project setup done');
    end;

    procedure NumProjectSetup()

    var
        ProjectSetup: Record "Project Setup";
        NoSerie: Record "No. Series";
        NoSerieLine: Record "No. Series Line";

    begin
        //no series creation
        ProjectSetup.init;
        NoSerie.Code := 'PRJ';
        NoSerie.Description := 'Project Management';
        NoSerie."Default Nos." := true;
        NoSerie."Manual Nos." := true;
        if NoSerie.Insert then;

        NoSerieLine."Series Code" := NoSerie.Code;
        NoSerieLine."Starting No." := 'PRJ0000';
        NoSerieLine."Ending No." := 'PRJ9000';
        if NoSerieLine.Insert then;
        ProjectSetup."Project Nos." := NoSerie.code;
        ProjectSetup.Insert();
    end;

    var
        SetupExists: Boolean;
}

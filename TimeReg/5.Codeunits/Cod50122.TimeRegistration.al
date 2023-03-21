codeunit 50122 "TimeRegistration"
{
    TableNo = Project;

    trigger OnRun()
    begin
        InitSetup();
    end;

    local procedure InitSetup()
    var
        TimeRegistrationSetup: Record "TimeRegistration Setup";
    begin
        SetupExists := TimeRegistrationSetup.get();
        if SetupExists then
            exit;

        TimeRegistrationSetup.Init;
        TimeRegistrationSetup."Export Path" := 'C:\RUN\MY\';

        if TimeRegistrationSetup.Insert then
            Message('Time Registration setup done');
    end;

    procedure NumStudentSetup()

    var
        TimeRegistrationSetup: Record "TimeRegistration Setup";
        NoSerie: Record "No. Series";
        NoSerieLine: Record "No. Series Line";

    begin
        //no series creation
        TimeRegistrationSetup.init;
        NoSerie.Code := 'TRS';
        NoSerie.Description := 'Time Registration Management';
        NoSerie."Default Nos." := true;
        NoSerie."Manual Nos." := true;
        if NoSerie.Insert then;

        NoSerieLine."Series Code" := NoSerie.Code;
        NoSerieLine."Starting No." := 'PRJ0000';
        NoSerieLine."Ending No." := 'PRJ9000';
        if NoSerieLine.Insert then;
        TimeRegistrationSetup."TimeRegistration Nos." := NoSerie.code;
        TimeRegistrationSetup.Modify();
    end;

    var
        SetupExists: Boolean;
}

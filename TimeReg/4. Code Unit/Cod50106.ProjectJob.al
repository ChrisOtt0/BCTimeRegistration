codeunit 50106 ProjectJob
{
    trigger OnRun()
    begin
        PostTimeRegJob();
        // EmailJob();
    end;

    procedure PostTimeRegJob();
    begin

    end;

    procedure EmailJob();
    var
        Email: Codeunit Email;
        EmailMessage: Codeunit "Email Message";
        ProjectTable: Record Project;
        Subject: Text;
        Body: Text;
        CRLF: Text[2];
    begin
        ProjectTable.Reset();
        ProjectTable.SetFilter(ProjectTable.TimeRemaining, '<%1', 0);

        if not ProjectTable.FindFirst() then begin
            exit;
        end;

        CRLF[1] := 13;
        CRLF[2] := 10;
        Subject := 'Project Report';
        Body := 'Report on Projects, where more time has been spent than estimated:' + CRLF;

        repeat
            Body += 'Project with ID: ' + ProjectTable.No + CRLF;
            Body += 'Name: ' + ProjectTable.Name + CRLF;
            Body += 'Time Remaining: ' + Format(ProjectTable.TimeRemaining) + CRLF + CRLF;
        until ProjectTable.Next() = 0;

        EmailMessage.Create('sopott01@easv365.dk', Subject, Body);
        Email.Send(EmailMessage, Enum::"Email Scenario"::Project);
    end;
}

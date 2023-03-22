codeunit 50105 ProjectManagement
{
    TableNo = Project;

    trigger OnRun()
    begin

    end;

    // EDIT THIS 
    procedure InsertProject(Name: Text[50]; LastName: Text[50]; Mail: Text[50]; BirthDate: Date): Boolean
    var
        Consultant: Record Consultant;
    begin
        Consultant.Reset;
        Consultant.Name := Name;
        Consultant.LastName := LastName;
        Consultant.Mail := Mail;
        Consultant.BirthDate := BirthDate;

        if Consultant.Insert then begin
            Message('Consultant inserted successfully.');
            exit(true);
        end
        else begin
            Message('Error inserting Consultant.');
            exit(false);
        end;
    end;

    procedure GetProjectNames() ProjectNameList: Text;
    var
        ProjectTable: Record Project;
    begin
        ProjectNameList := '';
        if not ProjectTable.FindFirst then
            exit;

        repeat
            if ProjectNameList <> '' then
                ProjectNameList := ProjectNameList + ',';
            ProjectNameList := ProjectNameList + '"' + ProjectTable.Name + '"';
        until ProjectTable.Next() = 0;

        ProjectNameList := '[' + ProjectNameList + ']';
    end;

    procedure GetProjectOptions(): Text[100]
    var
        Projects: Text[100];
        i: Integer;
    begin
        Projects := '';
        FOR i := 1 TO 10 DO BEGIN
            Projects := Projects + 'Project ' + FORMAT(i) + ';';
        END;
        EXIT(Projects);
    end;
}

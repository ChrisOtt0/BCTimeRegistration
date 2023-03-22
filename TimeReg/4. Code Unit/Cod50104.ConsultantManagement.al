codeunit 50104 ConsultantManagement
{
    TableNo = Consultant;

    trigger OnRun()
    begin

    end;

    procedure InsertConsultant(Name: Text[50]; LastName: Text[50]; Mail: Text[50]; BirthDate: Date): Boolean
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
}

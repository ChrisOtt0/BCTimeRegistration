codeunit 50120 TimeRegistrationCodeunit
{

    procedure CalculateTotalHours(EmployeeID: Integer; StartTime: Date; EndTime: Date): Decimal
    var
        TimeRegistration: Record "TimeRegistration";
        HoursWorked: Decimal;
    begin
        HoursWorked := 0;
        TimeRegistration.SetRange("EmployeeID", EmployeeID);
        TimeRegistration.SetRange("Date", StartTime, EndTime);
        TimeRegistration.Reset;
        while TimeRegistration.FindSet do begin
            HoursWorked += TimeRegistration."HoursWorked";
        end;
        exit(HoursWorked);
    end;

}

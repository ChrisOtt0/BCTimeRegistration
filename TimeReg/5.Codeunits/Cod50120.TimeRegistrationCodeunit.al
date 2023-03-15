codeunit 50120 TimeRegistrationCodeunit
{

    procedure CalculateTotalHours(EmployeeID: Integer; StartDate: Date; EndDate: Date): Decimal
    var
        TimeRegistration: Record "TimeRegistration";
        HoursWorked: Decimal;
    begin
        HoursWorked := 0;
        TimeRegistration.SetRange("EmployeeID", EmployeeID);
        TimeRegistration.SetRange("Date", StartDate, EndDate);
        TimeRegistration.Reset;
        while TimeRegistration.FindSet do begin
            HoursWorked += TimeRegistration."HoursWorked";
        end;
        exit(HoursWorked);
    end;

}

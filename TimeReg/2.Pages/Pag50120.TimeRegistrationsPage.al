page 50120 TimeRegistrationsPage
{
    ApplicationArea = All;
    Caption = 'TimeRegistrationsPage';
    PageType = Card;
    SourceTable = TimeRegistration;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(EmployeeID; Rec.EmployeeID)
                {
                    ToolTip = 'Specifies the value of the EmployeeID field.';
                }
                field("Date "; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date  field.';
                }
                field(StartTime; Rec.StartTime)
                {
                    ToolTip = 'Specifies the value of the StartTime field.';
                }
                field(EndTime; Rec.EndTime)
                {
                    ToolTip = 'Specifies the value of the EndTime field.';
                }
                field(HoursWorked; Rec.HoursWorked)
                {
                    ToolTip = 'Specifies the value of the HoursWorked field.';
                }
            }
        }
    }
}

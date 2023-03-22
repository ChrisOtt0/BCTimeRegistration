page 50127 TimeRegistrationListPart
{
    ApplicationArea = All;
    Caption = 'Time Registration';
    PageType = ListPart;
    SourceTable = TimeRegistration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec."Registration ID")
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(EmployeeID; Rec.EmployeeID)
                {
                    ToolTip = 'Specifies the value of the EmployeeID field.';
                    Editable = false;
                }
                field(ProjectID; Rec.ProjectID)
                {
                    ToolTip = 'Specifies the value of the ProjectID field.';
                    Editable = true;
                }
                field(Minutes; Rec.Minutes)
                {
                    ToolTip = 'Specifies the value of the Minutes field.';
                    Editable = true;
                }
            }
        }
    }
}

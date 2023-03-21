page 50127 TimeRegistrationListPart
{
    ApplicationArea = All;
    Caption = 'TimeRegistrationListPart';
    PageType = ListPart;
    SourceTable = TimeRegistration;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(EmployeeID; Rec.EmployeeID)
                {
                    ToolTip = 'Specifies the value of the EmployeeID field.';
                }
                field(ProjectID; Rec.ProjectID)
                {
                    ToolTip = 'Specifies the value of the ProjectID field.';
                }
                field(Minutes; Rec.Minutes)
                {
                    ToolTip = 'Specifies the value of the Minutes field.';
                }
            }
        }
    }
}

page 50128 TimeRegistrationCard
{
    ApplicationArea = All;
    Caption = 'TimeRegistrationCard';
    PageType = Card;
    SourceTable = TimeRegistration;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
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
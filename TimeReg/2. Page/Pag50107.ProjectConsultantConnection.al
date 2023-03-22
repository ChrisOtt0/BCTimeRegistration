page 50107 "Project Consultant Connection"
{
    ApplicationArea = All;
    Caption = 'Project Consultant Connection';
    PageType = ListPart;
    SourceTable = ProjectConsultantRegistration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Consultant ID"; Rec."Consultant ID")
                {
                    ToolTip = 'Specifies the value of the Consultant ID field.';
                }
            }
        }
    }
}

page 50103 "Consultant Time"
{
    ApplicationArea = All;
    Caption = 'Consultant Time';
    PageType = ListPart;
    SourceTable = ConsultantTRTable;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                // field("Consultant ID"; Rec."Consultant ID")
                // {
                //     ToolTip = 'Specifies the value of the Consultant ID field.';
                //     Editable = false;
                // }
                // field("Time Registration ID"; Rec."Time Registration ID")
                // {
                //     ToolTip = 'Specifies the value of the Time Registration ID field.';
                //     Editable = false;
                // }
                field("Project"; Rec."Project")
                {
                    ToolTip = 'Specifies the value of the Project Name field.';
                }
                field(Time; Rec.Minutes)
                {
                    ToolTip = 'Specifies the value of the Time field.';
                }
            }
        }
    }
}

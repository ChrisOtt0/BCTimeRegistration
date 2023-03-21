page 50129 "TimeRegistration Setup"
{
    ApplicationArea = All;
    Caption = 'Time Registration Setup';
    PageType = Card;
    SourceTable = "TimeRegistration Setup";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Export Path"; Rec."Export Path")
                {
                    ToolTip = 'Specifies the value of the Export Path field.';
                }
                field("File Name"; Rec."File Name")
                {
                    ToolTip = 'Specifies the value of the File Name field.';
                }
            }
        }
    }
}

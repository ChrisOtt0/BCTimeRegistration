page 50123 "Project Setup"
{
    ApplicationArea = All;
    Caption = 'Project Setup';
    PageType = Card;
    SourceTable = "Project Setup";

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

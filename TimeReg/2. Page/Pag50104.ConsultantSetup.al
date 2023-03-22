page 50104 "Consultant Setup"
{
    ApplicationArea = All;
    Caption = 'Consultant Setup';
    PageType = Card;
    SourceTable = "Consultant Setup";

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

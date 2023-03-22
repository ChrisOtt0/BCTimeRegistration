page 50101 ConsultantList
{
    ApplicationArea = All;
    Caption = 'Consultants';
    PageType = List;
    SourceTable = Consultant;
    UsageCategory = Lists;
    CardPageId = "ConsultantCard";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(LastName; Rec.LastName)
                {
                    ToolTip = 'Specifies the value of the LastName field.';
                }
                field("Phone Number"; Rec."Mail")
                {
                    ToolTip = 'Specifies the value of the mail field.';
                }
                field(BirthDate; Rec.BirthDate)
                {
                    ToolTip = 'Specifies the value of the BirthDate field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            // Open the selected Consultant as a card.
            action("Open Consultant card")
            {
                RunObject = page "ConsultantCard";
                RunPageLink = "No" = FIELD("No");
                Promoted = false;
                Image = Card;
            }

            action("Setup Consultant No")
            {
                Image = Setup;

                trigger OnAction()
                var
                    ConsultantSetup: Codeunit 50102;
                begin
                    ConsultantSetup.NumConsultantSetup();
                end;
            }
        }
    }
}

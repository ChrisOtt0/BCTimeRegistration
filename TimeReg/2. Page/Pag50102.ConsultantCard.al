page 50102 ConsultantCard
{
    ApplicationArea = All;
    Caption = 'Consultant';
    PageType = Card;
    SourceTable = Consultant;
    AboutText = 'This is a box with some text';
    RefreshOnActivate = true;


    layout
    {
        area(content)
        {
            group(General)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(LastName; Rec.LastName)
                {
                    ToolTip = 'Specifies the value of the LastName field.';
                }
                field("Phone Number"; Rec.Mail)
                {
                    ToolTip = 'Specifies the value of the Phone Number field.';
                }
                field(BirthDate; Rec.BirthDate)
                {
                    ToolTip = 'Specifies the value of the BirthDate field.';
                }
            }
            group("Consultant Time")
            {
                part(ConsultantMinutes; "Consultant Time")
                {
                    SubPageLink = "Consultant ID" = field(No);
                    UpdatePropagation = Both;
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            // Actions goes here
        }
    }
}

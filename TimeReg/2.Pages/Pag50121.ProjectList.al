page 50121 ProjectList
{
    ApplicationArea = All;
    Caption = 'ProjectList';
    PageType = List;
    SourceTable = Project;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(HoursEstimated; Rec.HoursEstimated)
                {
                    ToolTip = 'Specifies the value of the Hours Estimated field.';
                }
                field(HoursRemaining; Rec.HoursRemaining)
                {
                    ToolTip = 'Specifies the value of the Hours Remaining field.';
                }
                field(HoursSpend; Rec.HoursSpend)
                {
                    ToolTip = 'Specifies the value of the Hours Spend field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            // Open the selected student as a card.
            action("Open student card")
            {
                RunObject = page "ProjectCard";
                RunPageLink = "No" = FIELD("No");
                Promoted = false;
                Image = Card;
            }
        }
    }
}

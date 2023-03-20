page 50122 ProjectCard
{
    ApplicationArea = All;
    Caption = 'ProjectCard';
    PageType = Card;
    SourceTable = Project;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(HoursEstimated; Rec.HoursEstimated)
                {
                    ToolTip = 'Specifies the value of the Hours Estimated field.';
                }
                field(HoursSpend; Rec.HoursSpend)
                {
                    ToolTip = 'Specifies the value of the Hours Spend field.';
                }
                field(HoursRemaining; Rec.HoursRemaining)
                {
                    ToolTip = 'Specifies the value of the Hours Remaining field.';
                }
            }
        }
    }
}

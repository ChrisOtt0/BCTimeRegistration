page 50109 PostedProjectList
{
    ApplicationArea = All;
    Caption = 'PostedProjectList';
    PageType = List;
    SourceTable = PostedProject;
    UsageCategory = History;
    Editable = false;
    CardPageId = 50110;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(TimeEstimated; Rec.TimeEstimated)
                {
                    ToolTip = 'Specifies the value of the TimeEstimated field.';
                }
                field(TimeSpend; Rec.TimeSpend)
                {
                    ToolTip = 'Specifies the value of the TimeSpend field.';
                }
                field(TimeRemaining; Rec.TimeRemaining)
                {
                    ToolTip = 'Specifies the value of the TimeRemaining field.';
                }
                field(PostedTime; Rec.PostedTime)
                {
                    ToolTip = 'Specifies the DateTime the Project was Posted at.';
                }
            }
        }
    }
}

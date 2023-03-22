page 50106 ProjectCard
{
    ApplicationArea = All;
    Caption = 'Project';
    PageType = Card;
    SourceTable = Project;
    AboutText = 'This is a box with some text';
    RefreshOnActivate = true;


    layout
    {
        area(content)
        {
            group(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(TimeEstimation; Rec.TimeEstimated)
                {
                    ToolTip = 'Specifies the value of the TimeEstimation field.';
                }
                field(TimeSpend; Rec.TimeSpend)
                {
                    ToolTip = 'Specifies the value of the TimeSpend field.';
                }
                field(TimeRemaining; Rec.TimeRemaining)
                {
                    ToolTip = 'Specifies the value of the TimeRemaining field.';
                }
            }
            group("Consultants connected to this project")
            {
                part(ProjectConsultantConnection; "Project Consultant Connection")
                {
                    SubPageLink = "Project ID" = field(No);
                    UpdatePropagation = Both;
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            // Actions go here
        }
    }
}

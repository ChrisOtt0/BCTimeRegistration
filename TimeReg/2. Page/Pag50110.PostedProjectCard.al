page 50110 PostedProjectCard
{
    ApplicationArea = All;
    Caption = 'Posted Project';
    PageType = Card;
    SourceTable = PostedProject;
    Editable = false;
    RefreshOnActivate = true;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

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
            group("Consultants connected to this project.")
            {
                part(ProjectConsultantConnection; "Project Consultant Connection")
                {
                    SubPageLink = "Project ID" = field(ID);
                    UpdatePropagation = Both;
                }
            }
        }
    }
}

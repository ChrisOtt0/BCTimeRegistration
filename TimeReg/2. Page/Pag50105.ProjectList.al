page 50105 ProjectList
{
    ApplicationArea = All;
    Caption = 'Projects';
    PageType = List;
    SourceTable = Project;
    UsageCategory = Lists;
    CardPageId = "ProjectCard";

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
        }
    }
    actions
    {
        area(Processing)
        {
            action("Setup Project No")
            {
                Image = Setup;

                trigger OnAction()
                var
                    ProjectSetup: Codeunit 50103;
                begin
                    ProjectSetup.NumProjectSetup();
                end;
            }

            // Test action for Scheduled Job
            action("Test Project Job")
            {
                ApplicationArea = All;
                Image = Job;

                trigger OnAction()
                var
                    Unit: Codeunit ProjectJob;
                begin
                    Unit.EmailJob();
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        ProjectRec: Record "Project";
    begin
        Rec.TimeRemaining := Rec.TimeEstimated - Rec.TimeSpend;

        Commit();

        Rec.MODIFY();
    end;
}

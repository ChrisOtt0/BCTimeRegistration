page 50124 "Posted Project List"
{
    ApplicationArea = All;
    Caption = 'Posted Project List';
    PageType = List;
    SourceTable = "Posted Project";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Project No."; Rec."Project No.")
                {
                    ToolTip = 'Specifies the ID of the project.';
                    Enabled = false;
                }
                field("Project Name"; Rec."Project Name")
                {
                    ToolTip = 'Specifies the name of the project.';
                    Enabled = false;
                }
                field("Total Estimated Hours"; Rec."Total Estimated Hours")
                {
                    ToolTip = 'Specifies the Total Estimated Hours to be spent on the project.';
                    Enabled = false;
                }
                field("Hours Remaining"; Rec."Hours Remaining")
                {
                    ToolTip = 'Specifies the Hours Remaining from the total estimation.';
                    Enabled = false;
                }
                field("Hours Spent"; Rec."Hours Spent")
                {
                    ToolTip = 'Specifies the Hours Spent of the total estimation.';
                    Enabled = false;
                }
                field(Archived; Rec.Archived)
                {
                    ToolTip = 'Specifies when the project was posted.';
                    Enabled = false;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {

        }
    }
}

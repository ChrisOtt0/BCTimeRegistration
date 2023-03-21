page 50122 ProjectCard
{
    ApplicationArea = All;
    Caption = 'Project Card';
    PageType = Card;
    SourceTable = Project;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
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

            group("Assigned Consultants")
            {
                part(EmployeePage; 50125)
                {
                    SubPageLink = "No." = field(No);
                    UpdatePropagation = Both;
                }
            }

            group("Time Registrations")
            {
                part(TimeRegistrationPage; 50127)
                {
                    SubPageLink = "ID" = field(No);
                    UpdatePropagation = Both;
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(AddEmployee)
            {
                ApplicationArea = All;
                Caption = 'Add Employee';
                Image = SendMail;
                ToolTip = 'Add a consultant to this project';
                trigger OnAction()
                var

                begin
                    
                end;
            }
        }
    }
    var
        employeeTable: Record 5200;
        time: Page 951;
}


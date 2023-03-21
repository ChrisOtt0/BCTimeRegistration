pageextension 50120 ExtendNavigationArea extends "Order Processor Role Center"
{
    actions
    {
        addlast(Sections)
        {
            group("Consultants")
            {
                action("Projects")
                {
                    RunObject = page "Projectlist";
                    ApplicationArea = All;
                }
                action("Time Registrations")
                {
                    RunObject = page "TimeRegistrationList";
                    ApplicationArea = All;
                }
                action("Employees")
                {
                    RunObject = page "5201";
                    ApplicationArea = All;
                }
                action("Project setup")
                {
                    RunObject = page "Project Setup";
                    ApplicationArea = All;
                }

                action("TimeRegistration setup")
                {
                    RunObject = page "TimeRegistration Setup";
                    ApplicationArea = All;
                }
            }
        }
    }
}
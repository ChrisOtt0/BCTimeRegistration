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
                action("Project setup")
                {
                    RunObject = page "Project Setup";
                    ApplicationArea = All;
                }
            }
        }
    }
}
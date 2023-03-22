pageextension 50102 ExtendNavigationArea extends "Order Processor Role Center"
{
    actions
    {
        addlast(Sections)
        {
            group("Consultant")
            {
                action("Consultant list")
                {
                    RunObject = page "ConsultantList";
                    ApplicationArea = All;
                }
                action("Project list")
                {
                    RunObject = page "ProjectList";
                    ApplicationArea = All;
                }
                action("Consultant setup")
                {
                    RunObject = page "Consultant Setup";
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
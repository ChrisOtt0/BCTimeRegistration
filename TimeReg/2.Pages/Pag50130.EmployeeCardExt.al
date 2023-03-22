pageextension 50130 EmployeeCardExt extends "Employee Card"
{
    layout
    {
        addafter("Administration")
        {

            group("Time Registration")
            {
                part(TimeRegistrationPage; 50127)
                {
                    SubPageLink = "EmployeeId" = field("No.");
                    UpdatePropagation = Both;
                }
            }
        }
    }
}


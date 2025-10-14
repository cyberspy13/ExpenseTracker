pageextension 50601 LIEK_EmployeePageExt extends "Employee Card"
{
    layout
    {
        addlast(Payments)
        {
            field(ExpenceAmount; Rec.ExpenseAmount)
            {
                ApplicationArea = All;
                Caption = 'Expence Amount';
            }
        }
    }
}

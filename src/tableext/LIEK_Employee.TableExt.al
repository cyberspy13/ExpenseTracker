tableextension 50601 LIEKEmployee extends Employee
{
    fields
    {
        field(50600; ExpenseAmount; Decimal)
        {
            Caption = 'Expences Amount';
            FieldClass = FlowField;
            CalcFormula = sum(Expences.Amount where("Employee ID" = field("No.")));
        }
    }
}
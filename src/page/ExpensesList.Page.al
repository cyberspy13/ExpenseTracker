page 50600 ExpenseCard
{
    ApplicationArea = All;
    Caption = 'Expenses';
    PageType = List;
    SourceTable = Expences;
    UsageCategory = Lists;
    CardPageId = 50601;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.', Comment = '%';
                }
                field("Approval Status"; Rec."Approval Status")
                {
                    ToolTip = 'Specifies the value of the Approval Status field.', Comment = '%';
                }
                field(Currency; Rec.Currency)
                {
                    ToolTip = 'Specifies the value of the Currency field.', Comment = '%';
                }
                field("Date of Expense"; Rec."Date of Expense")
                {
                    ToolTip = 'Specifies the value of the Date of Expense field.', Comment = '%';
                }
                field("Date of Submission"; Rec."Date of Submission")
                {
                    ToolTip = 'Specifies the value of the Date of Submission field.', Comment = '%';
                }
                field("Employee ID"; Rec."Employee ID")
                {
                    ToolTip = 'Specifies the value of the Employee ID field.', Comment = '%';
                }
                field("Expense Category Type"; Rec."Expense Category Type")
                {
                    ToolTip = 'Specifies the value of the Expense Category Type field.', Comment = '%';
                }
                field("Expense Details"; Rec."Expense Details")
                {
                    ToolTip = 'Specifies the value of the Expense Details field.', Comment = '%';
                }

                field("Payment Status"; Rec."Payment Status")
                {
                    ToolTip = 'Specifies the value of the Payment Status field.', Comment = '%';
                }
                field("Payment type"; Rec."Payment type")
                {
                    ToolTip = 'Specifies the value of the Payment type field.', Comment = '%';
                }
                field("Receipt Attached"; Rec."Receipt Attached")
                {
                    ToolTip = 'Specifies the value of the Receipt Attached field.', Comment = '%';
                }
                field(Submitter; Rec.Submitter)
                {
                    ToolTip = 'Specifies the value of the Submitter field.', Comment = '%';
                }
                field("Supervisor Approval"; Rec."Supervisor Approval")
                {
                    ToolTip = 'Specifies the value of the Supervisor Approval field.', Comment = '%';
                }
                field("Tax/VAT Amount"; Rec."Tax/VAT Amount")
                {
                    ToolTip = 'Specifies the value of the Tax/VAT Amount field.', Comment = '%';
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ToolTip = 'Specifies the value of the Total Amount field.', Comment = '%';
                }
            }
        }
    }
}

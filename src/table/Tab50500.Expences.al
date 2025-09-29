table 50600 Expences
{
    Caption = 'Expences';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
            //Editable = false;

        }
        field(2; Submitter; Text[30])
        {
            Caption = 'Submitter';
        }
        field(3; "Employee ID"; Code[20])
        {
            Caption = 'Employee ID';
        }
        field(4; "Date of Submission"; Date)
        {
            Caption = 'Date of Submission';
        }
        field(5; "Supervisor Approval"; Code[20])
        {
            Caption = 'Supervisor Approval';
        }
        field(6; "Expense Details"; Text[100])
        {
            Caption = 'Expense Details';
        }
        field(7; "Date of Expense"; Date)
        {
            Caption = 'Date of Expense';
        }
        field(8; "Expense Category Type"; Enum "ABS Blob Access Tier")
        {
            Caption = 'Expense Category Type';
        }
        field(9; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(10; "Tax/VAT Amount"; Decimal)
        {
            Caption = 'Tax/VAT Amount';
        }
        field(11; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
        }
        field(12; Currency; code[20])
        {
            Caption = 'Currency';
            TableRelation = Currency;
        }
        field(13; "Payment type"; code[20])
        {
            Caption = 'Payment type';
            TableRelation = "Payment Method";
            ;
        }
        field(14; "Receipt Attached"; Boolean)
        {
            Caption = 'Receipt Attached';
        }
        field(15; "Approval Status"; Enum "ABS Blob Access Tier")
        {
            Caption = 'Approval Status';
        }
        field(16; "Payment Status"; Enum "Approval Status")
        {
            Caption = 'Payment Status';
        }
    }
    keys
    {
        key(PK; No, "Employee ID")
        {
            Clustered = true;
        }
    }
    procedure AssistEdit() Result: Boolean
    var
        ExpenseRec: Record Expences;
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit "No. Series";
        NoSeriesRecord: Record "No. Series";
        NoSeriesLine: Record "No. Series Line";
        ResetFilters: Boolean;
        NoSeriesPage: Page "No. Series";
    begin
        SalesSetup.Get();
        SalesSetup.TestField("Expences Nos");
        if SalesSetup."Expences Nos" <> '' then begin
            NoSeriesRecord.SetRange(Code, SalesSetup."Expences Nos");
            NoSeriesRecord.Modify(true);
            if NoSeriesRecord.FindFirst() then
                NoSeriesPage.RunModal();
        end;
    end;

}

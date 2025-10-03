pageextension 50600 "SalesAndRecSetup.PageExt.al" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field("Expences Nos"; Rec."Expences Nos")
            {
                ApplicationArea = All;
                Caption = 'Expences Nos';
                ToolTip = 'Specifies the number series for expense entries.';
            }
        }
    }
}

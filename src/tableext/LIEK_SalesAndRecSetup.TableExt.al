tableextension 50600 SalesAndRecSetup extends "Sales & Receivables Setup"
{
    fields
    {
        field(50600; "Expences Nos"; Code[20])
        {
            Caption = 'Expences Nos';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
}

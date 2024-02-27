namespace IOI.PrinterConnect;

table 51000 "Client PC"
{
    Caption = 'Client';
    DataClassification = CustomerContent;
    DataPerCompany = false;

    fields
    {
        field(1; "Client UUID"; Guid)
        {
            Caption = 'Client UUID';
        }
        field(2; Endpoint; Text[100])
        {
            Caption = 'Endpoint';
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(4; Description; Text[100])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Client UUID")
        {
            Clustered = true;
        }
    }
}

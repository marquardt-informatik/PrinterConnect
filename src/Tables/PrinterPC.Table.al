namespace IOI.PrinterConnect;

table 51002 "Printer PC"
{
    Caption = 'Printer PC';
    DataClassification = CustomerContent;
    DataPerCompany = false;

    fields
    {
        field(1; "Printer UUID"; Guid)
        {
            Caption = 'Printer UUID';
        }
        field(2; "Computer UUID"; Guid)
        {
            Caption = 'Computer UUID';
        }
        field(3; "Client UUID"; Guid)
        {
            Caption = 'Client UUID';
        }
        field(4; IP; Text[15])
        {
            Caption = 'IP';
        }
        field(5; Port; Integer)
        {
            Caption = 'Port';
        }
        field(6; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(7; Description; Text[100])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Printer UUID")
        {
            Clustered = true;
        }
    }
}

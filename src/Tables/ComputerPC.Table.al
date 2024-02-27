namespace IOI.PrinterConnect;

table 51001 "Computer PC"
{
    Caption = 'Computer PC';
    DataClassification = CustomerContent;
    DataPerCompany = false;

    fields
    {
        field(2; "Client UUID"; Guid)
        {
            Caption = 'Client UUID';
        }
        field(1; "Computer UUID"; Guid)
        {
            Caption = 'Computer UUID';
        }
        field(3; IP; Text[15])
        {
            Caption = 'IP';
        }
        field(4; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(5; Description; Text[100])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Computer UUID")
        {
            Clustered = true;
        }
    }
}

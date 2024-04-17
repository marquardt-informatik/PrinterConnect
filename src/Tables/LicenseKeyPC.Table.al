namespace IOI.PrinterConnect;

table 51003 "License Key PC"
{
    Caption = 'License Key';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "License Key"; Text[250])
        {
            Caption = 'License Key';
        }
        field(2; "Client UUID"; Guid)
        {
            Caption = 'Client UUID';
            TableRelation = "Client PC";
        }
        field(3; isActivated; Boolean)
        {
            Caption = 'isActivated';
        }
        field(4; isRevoked; Boolean)
        {
            Caption = 'isRevoked';
        }
    }
    keys
    {
        key(PK; "License Key")
        {
            Clustered = true;
        }
    }
}

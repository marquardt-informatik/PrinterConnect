namespace IOI.PrinterConnect;

using Microsoft.Sales.Customer;

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
        field(5; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
    }
    keys
    {
        key(PK; "Client UUID")
        {
            Clustered = true;
        }
    }

    procedure GetListofLicenses() licenseKeys: List of [Text]
    var
        LicenseKey: Record "License Key PC";
    begin
        LicenseKey.Reset();
        LicenseKey.SetRange("Client UUID", "Client UUID");
        LicenseKey.SetRange(isRevoked, false);
        if LicenseKey.FindSet() then
            repeat
                licenseKeys.Add(LicenseKey."License Key");
            until LicenseKey.Next() = 0;
    end;

}

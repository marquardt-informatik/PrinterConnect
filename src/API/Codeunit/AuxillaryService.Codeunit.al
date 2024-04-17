namespace PrinterConnect.PrinterConnect;
using IOI.PrinterConnect;

codeunit 51001 "Auxillary Service"
{
    procedure Test(clientId: Guid; licenseKey: Text): Boolean
    var
        ClientPC: Record "Client PC";
    begin
        if ClientPC.Get(clientId) then
            if not ClientPC.GetListofLicenses().Contains(licenseKey) then
                exit(true);
        exit(false);
    end;
}
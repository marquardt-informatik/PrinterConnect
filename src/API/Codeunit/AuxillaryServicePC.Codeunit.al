namespace PrinterConnect.PrinterConnect;
using IOI.PrinterConnect;

codeunit 51001 "Auxillary Service PC"
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

    procedure IsAuthorized(deviceId: Guid; licenseKey: Text): Boolean
    var
        ComputerPC: Record "Computer PC";
        LicenseKeyPC: Record "License Key PC";
    begin
        if ComputerPC.Get(deviceId) then begin
            LicenseKeyPC.SetRange("Client UUID", ComputerPC."Client UUID");
            LicenseKeyPC.SetRange("License Key", licenseKey);
            exit(not LicenseKeyPC.IsEmpty);
        end;
        exit(false);
    end;
}

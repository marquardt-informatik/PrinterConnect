namespace IOI.PrinterConnect;

codeunit 51000 "Command PC"
{
    procedure Print(clientId: Guid; printerId: Guid; command: Text[250]): Text
    begin
        exit(command);
    end;
}

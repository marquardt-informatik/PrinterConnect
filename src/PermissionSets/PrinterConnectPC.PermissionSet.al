namespace IOI.PrinterConnect;
using PrinterConnect.PrinterConnect;

permissionset 51000 "PrinterConnect PC"
{
    Assignable = true;
    Permissions = tabledata "Client PC" = RIMD,
        table "Client PC" = X,
        tabledata "Printer PC" = RIMD,
        table "Printer PC" = X,
        tabledata "Computer PC" = RIMD,
        table "Computer PC" = X,
        table "License Key PC" = x,
        tabledata "License Key PC" = RIMD,
        codeunit "Auxillary Service PC" = X;
}
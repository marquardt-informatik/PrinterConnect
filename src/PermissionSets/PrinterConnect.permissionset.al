namespace IOI.PrinterConnect;

permissionset 51000 PrinterConnect
{
    Assignable = true;
    Permissions = tabledata "Client PC" = RIMD,
        table "Client PC" = X,
        tabledata "Printer PC" = RIMD,
        table "Printer PC" = X,
        tabledata "Computer PC" = RIMD,
        table "Computer PC" = X;
}
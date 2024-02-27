namespace IOI.PrinterConnect;

page 51002 Printer
{
    APIGroup = 'printerConnect';
    APIPublisher = 'ioi';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'printer';
    DelayedInsert = true;
    EntityName = 'printer';
    EntitySetName = 'printers';
    PageType = API;
    SourceTable = "Printer PC";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(printerUUID; Rec."Printer UUID")
                {
                    Caption = 'Computer UUID';
                }
                field(computerUUID; Rec."Computer UUID")
                {
                    Caption = 'Computer UUID';
                }
                field(clientUUID; Rec."Client UUID")
                {
                    Caption = 'Client UUID';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(ip; Rec.IP)
                {
                    Caption = 'IP';
                }
                field(port; Rec.Port)
                {
                    Caption = 'IP';
                }
            }
        }
    }
}
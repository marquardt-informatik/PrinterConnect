namespace IOI.PrinterConnect;

page 51001 Computer
{
    APIGroup = 'printerConnect';
    APIPublisher = 'ioi';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'computer';
    DelayedInsert = true;
    EntityName = 'computer';
    EntitySetName = 'computers';
    PageType = API;
    SourceTable = "Computer PC";

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
            }
        }
    }
}

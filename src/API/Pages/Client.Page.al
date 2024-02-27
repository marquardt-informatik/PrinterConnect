namespace IOI.PrinterConnect;

page 51000 Client
{
    APIGroup = 'printerConnect';
    APIPublisher = 'ioi';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'client';
    DelayedInsert = true;
    EntityName = 'client';
    EntitySetName = 'clients';
    PageType = API;
    SourceTable = "Client PC";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(clientUUID; Rec."Client UUID")
                {
                    Caption = 'Client UUID';
                }
                field(endpoint; Rec.Endpoint)
                {
                    Caption = 'Endpoint';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
            }
        }
    }
}

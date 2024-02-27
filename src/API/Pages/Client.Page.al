namespace IOI.PrinterConnect;

page 51000 Client
{
    APIPublisher = 'ioi'; //bctech
    APIGroup = 'printerConnect'; //demo
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'client';
    DelayedInsert = true;
    EntityName = 'client'; //carModel
    EntitySetName = 'clients'; // carModels
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
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        BlankGUID: Guid;
    begin
        ;
        if Rec."Client UUID" = BlankGUID then
            Rec."Client UUID" := System.CreateGuid();
        exit(true)
    end;
}

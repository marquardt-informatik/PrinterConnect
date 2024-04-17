namespace IOI.PrinterConnect;

page 51003 "License PC"
{
    APIGroup = 'printerConnect';
    APIPublisher = 'ioi';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'license';
    DelayedInsert = true;
    EntityName = 'license';
    EntitySetName = 'licenses';
    PageType = API;
    SourceTable = "License Key PC";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(licenseKey; Rec."License Key")
                {
                    Caption = 'License Key';
                }
                field(clientUUID; Rec."Client UUID")
                {
                    Caption = 'Client UUID';
                }
                field(isActivated; Rec.isActivated)
                {
                    Caption = 'is Activated';
                }
                field(isRevoked; Rec.isRevoked)
                {
                    Caption = 'is Revoked';
                }
            }
        }
    }
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        BlankGUID: Guid;
    begin
        ;
        if Rec."License Key" = BlankGUID then
            Rec."License Key" := System.CreateGuid();
        exit(true)
    end;
}
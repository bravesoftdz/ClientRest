unit ClientModuleUnit1;

interface

uses
  System.SysUtils, System.Classes, ClientClassesUnit1, Datasnap.DSClientRest;

type
  TClientModule1 = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
  private
    FInstanceOwner: Boolean;
    FLeandroClient: TLeandroClient;
    function GetLeandroClient: TLeandroClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property LeandroClient: TLeandroClient read GetLeandroClient write FLeandroClient;

end;

var
  ClientModule1: TClientModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

constructor TClientModule1.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModule1.Destroy;
begin
  FLeandroClient.Free;
  inherited;
end;

function TClientModule1.GetLeandroClient: TLeandroClient;
begin
  if FLeandroClient = nil then
    FLeandroClient:= TLeandroClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FLeandroClient;
end;

end.

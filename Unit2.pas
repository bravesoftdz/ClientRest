unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FMX.Controls.Presentation, FMX.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.FireDACJSONReflect, System.Rtti, FMX.Grid.Style,
  FMX.Bind.Grid, System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, FMX.ScrollBox,
  FMX.Grid, Data.Bind.DBScope, FireDAC.Stan.StorageBin, FireDAC.Stan.StorageJSON,
  FMX.Edit, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TForm2 = class(TForm)
    mem: TFDMemTable;
    Button1: TButton;
    BindSourceDB1: TBindSourceDB;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    ListView1: TListView;
    BindingsList1: TBindingsList;
    memnome: TStringField;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure listar;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses ClientModuleUnit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
  listar;

end;

procedure TForm2.listar;
var
  Ld: TFDJSONDataSets;
begin
  mem.Active := false;
  Ld := ClientModule1.LeandroClient.Listar();
  mem.AppendData(TFDJSONDataSetsReader.GetListValue(Ld, 0));
  mem.Open;
end;

end.

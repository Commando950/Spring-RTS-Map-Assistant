unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Spin, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    MapCalculatorPanel: TPanel;
    GridX: TSpinEdit;
    GridY: TSpinEdit;
    CalculatorResults: TMemo;
    procedure DoCalculation();
    procedure GridXChange(Sender: TObject);
    procedure GridYChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.DoCalculation();
begin
  CalculatorResults.Clear;
  CalculatorResults.Append('Height Map: ' + IntToStr(GridX.Value*64+1) + ' X ' + IntToStr(GridY.Value*64+1));
  CalculatorResults.Append('Metal Map: ' + IntToStr(GridX.Value*32) + ' X ' + IntToStr(GridY.Value*32));
  CalculatorResults.Append('Diffuse(Texture) Map: ' + IntToStr(GridX.Value*512) + ' X ' + IntToStr(GridY.Value*512));
  CalculatorResults.Append('Minimap Map: ' + '1024 X 1024(ALWAYS)');
  CalculatorResults.Append('Grass Map: ' + IntToStr(GridX.Value*16) + ' X ' + IntToStr(GridY.Value*16));
end;

procedure TForm1.GridXChange(Sender: TObject);
begin
  DoCalculation();
end;

procedure TForm1.GridYChange(Sender: TObject);
begin
  DoCalculation();
end;

end.


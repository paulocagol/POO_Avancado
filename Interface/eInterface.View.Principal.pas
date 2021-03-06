unit eInterface.View.Principal;

interface

uses
  Winapi.Windows
  , Winapi.Messages
  , System.SysUtils
  , System.Variants
  , System.Classes
  , Vcl.Graphics
  , Vcl.Controls
  , Vcl.Forms
  , Vcl.Dialogs
  , Vcl.StdCtrls
  , eInterface.Model.Interfaces
  ;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
    FPessoa: iPessoa;
    procedure ProcDisplay(Value: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  eInterface.Controller.Pessoa, eInterface.Controller.Interfaces;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FPessoa
      .Nome(Edit1.Text)
      .SobreNome(Edit2.Text)
      .Display(ProcDisplay)
      .NomeCompleto()
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  FPessoa := TControllerPessoa.New().Pessoa(tTypePessoa(ComboBox1.ItemIndex));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FPessoa := TControllerPessoa.New().Pessoa(tTypePessoa(ComboBox1.ItemIndex));
end;

procedure TForm1.ProcDisplay(Value: String);
begin
  Memo1.Lines.Add(Value);
end;

end.

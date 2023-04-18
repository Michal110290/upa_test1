uses
  Classes, Graphics, uuprog, Controls, Forms, Dialogs, Tools, Unit1, Unit2,
  Unit3, Unit4;

Const
 Nazwa1 = 'Nazwa plugina 11111';
 Nazwa2 = 'Nazwa plugina 22222';
 Nazwa3 = 'Nazwa plugina 33333';
 Nazwa4 = 'Nazwa plugina 44444';

var
  MainForm: TForm0;
  Grupa:String;

Procedure Start;
Begin
  MainForm.FormStyle:= fsStayOnTop;
  MainForm.Show;
end;

Procedure Start1;
begin
  MainForm := TForm1.Create(Application);
  MainForm.Caption:=Nazwa1;
  Start;
end;

Procedure Start2;
begin
  MainForm := TForm2.Create(Application);
  MainForm.Caption:=Nazwa2;
  Start;
end;

Procedure Start3;
begin
  MainForm := TForm3.Create(Application);
  MainForm.Caption:=Nazwa3;
  Start;
end;

Procedure Start4;
begin
  MainForm := TForm4.Create(Application);
  MainForm.Caption:=Nazwa4;
  Start;
end;

Begin
  Grupa:= 'TeeDEx';
  AddDeviceGroup (Grupa,'Plugin z Forum');
  AddDevice('VW Dash read PIN', 'Connect 4 wires',Grupa,'24C01');

  AddDeviceGroupEx('UPA-USB'#0#1,'Plugin z Forum',Grupa);
  AddDeviceGroupEx('UPA-USB'#0#2,'Plugin z Forum',Grupa);
  AddDeviceEx('Pierwszy plugin','11','UPA-USB'#0#2,'24C02','Start1','');
  AddDeviceEx('Dugi','222','UPA-USB'#0#2,'24C02','Start2','');
  AddDeviceEx('Trzeci','333','UPA-USB'#0#2,'24C02','Start3','');
  AddDeviceEx('Czwarty','444','UPA-USB'#0#2,'24C02','Start4','');
end;

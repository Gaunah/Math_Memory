object Form2: TForm2
  Left = 315
  Height = 451
  Top = 184
  Width = 769
  Caption = 'Form2'
  ClientHeight = 451
  ClientWidth = 769
  OnCreate = FormCreate
  LCLVersion = '2.0.4.0'
  object DrawGrid1: TDrawGrid
    Left = 40
    Height = 352
    Top = 32
    Width = 648
    Color = clSkyBlue
    ColCount = 10
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    RowCount = 15
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 120
    Height = 23
    Top = 407
    Width = 80
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 488
    Height = 23
    Top = 408
    Width = 80
    TabOrder = 2
  end
  object Label1: TLabel
    Left = 240
    Height = 15
    Top = 415
    Width = 35
    Caption = 'Spieler'
    ParentColor = False
  end
  object Label2: TLabel
    Left = 600
    Height = 15
    Top = 416
    Width = 29
    Caption = 'Score'
    ParentColor = False
  end
end

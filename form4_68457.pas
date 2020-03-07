object Form4: TForm4
  Left = 228
  Height = 477
  Top = 479
  Width = 1014
  Caption = 'Form4'
  ClientHeight = 477
  ClientWidth = 1014
  Color = clSkyBlue
  OnClick = FormClick
  OnCreate = FormCreate
  LCLVersion = '1.6.4.0'
  object StringGrid1: TStringGrid
    Left = 0
    Height = 304
    Top = 32
    Width = 1000
    Color = clNavy
    ColCount = 10
    DefaultColWidth = 100
    DefaultRowHeight = 100
    FixedCols = 0
    FixedRows = 0
    RowCount = 3
    ScrollBars = ssNone
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
    OnMouseDown = StringGrid1MouseDown
  end
  object Label1: TLabel
    Left = 261
    Height = 22
    Top = 408
    Width = 84
    Caption = 'Spielstand'
    Font.CharSet = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 144
    Height = 28
    Top = 400
    Width = 80
    Color = clSkyBlue
    TabOrder = 1
  end
  object Label2: TLabel
    Left = 408
    Height = 26
    Top = 440
    Width = 229
    Caption = 'Klicke zwei Karten an'
    Font.CharSet = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Edit2: TEdit
    Left = 361
    Height = 28
    Top = 380
    Width = 80
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 490
    Height = 28
    Top = 385
    Width = 80
    TabOrder = 3
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 808
    Height = 25
    Top = 392
    Width = 75
    Caption = 'Level 1'
    OnClick = Button1Click
    TabOrder = 4
  end
end

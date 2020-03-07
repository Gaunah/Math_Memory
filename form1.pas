object Form1: TForm1
  Left = 370
  Height = 396
  Top = 201
  Width = 609
  Caption = 'Form1'
  ClientHeight = 396
  ClientWidth = 609
  LCLVersion = '2.0.4.0'
  object Panel1: TPanel
    Left = 8
    Height = 400
    Top = 8
    Width = 602
    ClientHeight = 400
    ClientWidth = 602
    Color = clInactiveCaption
    Font.CharSet = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Rubik'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Edit1: TEdit
      Left = 96
      Height = 22
      Top = 272
      Width = 80
      Color = clGradientActiveCaption
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 392
      Height = 22
      Top = 272
      Width = 80
      Color = clGradientActiveCaption
      TabOrder = 1
    end
    object Label1: TLabel
      Left = 192
      Height = 16
      Top = 279
      Width = 58
      Caption = 'Spieler 1'
      Font.CharSet = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'System'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 488
      Height = 16
      Top = 279
      Width = 58
      Caption = 'Spieler 2'
      Font.CharSet = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'System'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Button1: TButton
      Left = 472
      Height = 25
      Top = 330
      Width = 107
      Caption = 'Spielbeginn'
      Color = clGradientActiveCaption
      OnClick = Button1Click
      TabOrder = 2
    end
    object Label3: TLabel
      Left = 16
      Height = 16
      Top = 336
      Width = 400
      Caption = 'Du beginnst mit 15 Paaren und steigerst dich mit jedem Level'
      Font.CharSet = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'System'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 64
    Height = 144
    Top = 32
    Width = 522
    Caption = 'MATH-MEMORY'
    Color = clMenuHighlight
    Font.CharSet = ANSI_CHARSET
    Font.Color = clPurple
    Font.Height = -48
    Font.Name = 'Segoe Print'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
end

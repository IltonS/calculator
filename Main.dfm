object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 315
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Btn1: TButton
    Left = 8
    Top = 246
    Width = 66
    Height = 33
    Hint = 'Atalho: 1 | Insere esse n'#250'mero no display.'
    Caption = '1'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Btn1Click
  end
  object Btn2: TButton
    Left = 88
    Top = 246
    Width = 66
    Height = 33
    Hint = 'Atalho: 2 | Insere esse n'#250'mero no display.'
    Caption = '2'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Btn2Click
  end
  object Btn3: TButton
    Left = 168
    Top = 246
    Width = 66
    Height = 33
    Hint = 'Atalho: 3 | Insere esse n'#250'mero no display.'
    Caption = '3'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Btn3Click
  end
  object BtnEquals: TButton
    Left = 248
    Top = 246
    Width = 66
    Height = 33
    Hint = 'Atalho: = | Executa uma opera'#231#227'o.'
    Caption = '='
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object Btn4: TButton
    Left = 8
    Top = 198
    Width = 66
    Height = 33
    Hint = 'Atalho: 4 | Insere esse n'#250'mero no display.'
    Caption = '4'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Btn4Click
  end
  object Btn5: TButton
    Left = 88
    Top = 198
    Width = 66
    Height = 33
    Hint = 'Atalho: 5 | Insere esse n'#250'mero no display.'
    Caption = '5'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = Btn5Click
  end
  object Btn6: TButton
    Left = 168
    Top = 198
    Width = 66
    Height = 33
    Hint = 'Atalho: 6 | Insere esse n'#250'mero no display.'
    Caption = '6'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = Btn6Click
  end
  object BtnDecimal: TButton
    Left = 246
    Top = 198
    Width = 66
    Height = 33
    Hint = 'Atalho: , | Insere um separador decimal.'
    Caption = '.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object Btn7: TButton
    Left = 8
    Top = 150
    Width = 66
    Height = 33
    Hint = 'Atalho: 7 | Insere esse n'#250'mero no display.'
    Caption = '7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = Btn7Click
  end
  object Btn8: TButton
    Left = 88
    Top = 150
    Width = 66
    Height = 33
    Hint = 'Atalho: 8 | Insere esse n'#250'mero no display.'
    Caption = '8'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = Btn8Click
  end
  object Btn9: TButton
    Left = 168
    Top = 150
    Width = 66
    Height = 33
    Hint = 'Atalho: 9 | Insere esse n'#250'mero no display.'
    Caption = '9'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = Btn9Click
  end
  object Btn0: TButton
    Left = 246
    Top = 150
    Width = 66
    Height = 33
    Hint = 'Atalho: 0 | Insere esse n'#250'mero no display.'
    Caption = '0'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = Btn0Click
  end
  object BtnDivision: TButton
    Left = 8
    Top = 102
    Width = 66
    Height = 33
    Hint = 'Atalho: / | Divide.'
    Caption = #247
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
  end
  object BtnMultiplication: TButton
    Left = 88
    Top = 102
    Width = 66
    Height = 33
    Hint = 'Atalho: * | Multiplica.'
    Caption = #215
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  object BtnSubtraction: TButton
    Left = 168
    Top = 102
    Width = 66
    Height = 33
    Hint = 'Atalho: - | Subtrai.'
    Caption = '-'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object BtnAddition: TButton
    Left = 246
    Top = 102
    Width = 66
    Height = 33
    Hint = 'Atalho: + | Soma.'
    Caption = '+'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
  end
  object BtnAllClear: TButton
    Left = 246
    Top = 54
    Width = 66
    Height = 33
    Hint = 'Atalho: Esc | Limpa a opera'#231#227'o atual.'
    Caption = 'AC'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnClick = BtnAllClearClick
  end
  object PnlScreen: TPanel
    Left = 8
    Top = 14
    Width = 304
    Height = 33
    Alignment = taRightJustify
    BevelOuter = bvNone
    BorderWidth = 3
    Caption = '0'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 17
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 296
    Width = 464
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 25
      end
      item
        Width = 25
      end
      item
        Width = 25
      end>
  end
  object ActionList: TActionList
    Left = 352
    Top = 56
    object AjudaTopicosCmd: TAction
      Category = 'Ajuda'
      Caption = '&T'#243'picos da Ajuda'
      ShortCut = 112
    end
    object AjudaSobreCmd: TAction
      Category = 'Ajuda'
      Caption = '&Sobre'
    end
  end
  object MainMenu: TMainMenu
    Left = 416
    Top = 56
    object Ajuda1: TMenuItem
      Caption = '&Ajuda'
      object AjudaTopicosItem: TMenuItem
        Action = AjudaTopicosCmd
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object AjudaSobreItem: TMenuItem
        Action = AjudaSobreCmd
      end
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnHint = ApplicationEventsHint
    Left = 352
    Top = 112
  end
end

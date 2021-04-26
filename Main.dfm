object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 290
  ClientWidth = 703
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Btn1: TSpeedButton
    Left = 8
    Top = 221
    Width = 33
    Height = 33
    Caption = '1'
    OnClick = Btn1Click
  end
  object Btn2: TSpeedButton
    Left = 58
    Top = 221
    Width = 33
    Height = 33
    Caption = '2'
    OnClick = Btn2Click
  end
  object Btn3: TSpeedButton
    Left = 108
    Top = 221
    Width = 33
    Height = 33
    Caption = '3'
    OnClick = Btn3Click
  end
  object BtnEquals: TSpeedButton
    Left = 158
    Top = 221
    Width = 33
    Height = 33
    Caption = '='
  end
  object Btn4: TSpeedButton
    Left = 8
    Top = 182
    Width = 33
    Height = 33
    Caption = '4'
    OnClick = Btn4Click
  end
  object Btn5: TSpeedButton
    Left = 58
    Top = 182
    Width = 33
    Height = 33
    Caption = '5'
    OnClick = Btn5Click
  end
  object Btn6: TSpeedButton
    Left = 108
    Top = 182
    Width = 33
    Height = 33
    Caption = '6'
    OnClick = Btn6Click
  end
  object BtnDecimal: TSpeedButton
    Left = 158
    Top = 182
    Width = 33
    Height = 33
    Caption = ','
  end
  object Btn7: TSpeedButton
    Left = 8
    Top = 143
    Width = 33
    Height = 33
    Caption = '7'
    OnClick = Btn7Click
  end
  object Btn8: TSpeedButton
    Left = 58
    Top = 143
    Width = 33
    Height = 33
    Caption = '8'
    OnClick = Btn8Click
  end
  object Btn9: TSpeedButton
    Left = 108
    Top = 143
    Width = 33
    Height = 33
    Caption = '9'
    OnClick = Btn9Click
  end
  object Btn0: TSpeedButton
    Left = 158
    Top = 143
    Width = 33
    Height = 33
    Caption = '0'
    OnClick = Btn0Click
  end
  object BtnDivision: TSpeedButton
    Left = 8
    Top = 104
    Width = 33
    Height = 33
    Caption = #247
  end
  object BtnMultiplication: TSpeedButton
    Left = 58
    Top = 104
    Width = 33
    Height = 33
    Caption = #215
  end
  object BtnSubtraction: TSpeedButton
    Left = 108
    Top = 104
    Width = 33
    Height = 33
    Caption = '-'
  end
  object BtnAddition: TSpeedButton
    Left = 158
    Top = 104
    Width = 33
    Height = 33
    Caption = '+'
  end
  object BtnAllClear: TSpeedButton
    Left = 158
    Top = 65
    Width = 33
    Height = 33
    BiDiMode = bdLeftToRight
    Caption = 'AC'
    ParentBiDiMode = False
    OnClick = BtnAllClearClick
  end
  object Btn11: TButton
    Left = 544
    Top = 166
    Width = 66
    Height = 33
    Hint = 'Atalho: 1 | Insere esse n'#250'mero no display.'
    Caption = '1'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object PnlScreen: TPanel
    Left = 8
    Top = 8
    Width = 183
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
    TabOrder = 1
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 271
    Width = 703
    Height = 19
    Panels = <
      item
        Width = 200
      end>
    ExplicitTop = 296
    ExplicitWidth = 464
  end
  object ActionList: TActionList
    Left = 496
    Top = 72
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
    Left = 576
    Top = 72
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
    Left = 496
    Top = 16
  end
end

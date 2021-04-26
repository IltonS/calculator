object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 290
  ClientWidth = 358
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
    Hint = 'Atalho: 1|Insere o valor no display.'
    Caption = '1'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn1Click
  end
  object Btn2: TSpeedButton
    Left = 58
    Top = 221
    Width = 33
    Height = 33
    Hint = 'Atalho: 2|Insere o valor no display.'
    Caption = '2'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn2Click
  end
  object Btn3: TSpeedButton
    Left = 108
    Top = 221
    Width = 33
    Height = 33
    Hint = 'Atalho: 3|Insere o valor no display.'
    Caption = '3'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn3Click
  end
  object BtnEquals: TSpeedButton
    Left = 158
    Top = 221
    Width = 33
    Height = 33
    Hint = 'Atalho: Enter|Realiza uma opera'#231#227'o.'
    Caption = '='
    ParentShowHint = False
    ShowHint = True
  end
  object Btn4: TSpeedButton
    Left = 8
    Top = 182
    Width = 33
    Height = 33
    Hint = 'Atalho: 4|Insere o valor no display.'
    Caption = '4'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn4Click
  end
  object Btn5: TSpeedButton
    Left = 58
    Top = 182
    Width = 33
    Height = 33
    Hint = 'Atalho: 5|Insere o valor no display.'
    Caption = '5'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn5Click
  end
  object Btn6: TSpeedButton
    Left = 108
    Top = 182
    Width = 33
    Height = 33
    Hint = 'Atalho: 6|Insere o valor no display.'
    Caption = '6'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn6Click
  end
  object BtnDecimal: TSpeedButton
    Left = 158
    Top = 182
    Width = 33
    Height = 33
    Hint = 'Atalho: ,|Insere separador decimal.'
    Caption = ','
    ParentShowHint = False
    ShowHint = True
    OnClick = BtnDecimalClick
  end
  object Btn7: TSpeedButton
    Left = 8
    Top = 143
    Width = 33
    Height = 33
    Hint = 'Atalho: 7|Insere o valor no display.'
    Caption = '7'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn7Click
  end
  object Btn8: TSpeedButton
    Left = 58
    Top = 143
    Width = 33
    Height = 33
    Hint = 'Atalho: 8|Insere o valor no display.'
    Caption = '8'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn8Click
  end
  object Btn9: TSpeedButton
    Left = 108
    Top = 143
    Width = 33
    Height = 33
    Hint = 'Atalho: 9|Insere o valor no display.'
    Caption = '9'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn9Click
  end
  object Btn0: TSpeedButton
    Left = 158
    Top = 143
    Width = 33
    Height = 33
    Hint = 'Atalho: 0|Insere o valor no display.'
    Caption = '0'
    ParentShowHint = False
    ShowHint = True
    OnClick = Btn0Click
  end
  object BtnDivision: TSpeedButton
    Left = 8
    Top = 104
    Width = 33
    Height = 33
    Hint = 'Atalho: /|Divide.'
    Caption = #247
    ParentShowHint = False
    ShowHint = True
  end
  object BtnMultiplication: TSpeedButton
    Left = 58
    Top = 104
    Width = 33
    Height = 33
    Hint = 'Atalho: *|Multiplica.'
    Caption = #215
    ParentShowHint = False
    ShowHint = True
  end
  object BtnSubtraction: TSpeedButton
    Left = 108
    Top = 104
    Width = 33
    Height = 33
    Hint = 'Atalho: -|Subtrai.'
    Caption = '-'
    ParentShowHint = False
    ShowHint = True
  end
  object BtnAddition: TSpeedButton
    Left = 158
    Top = 104
    Width = 33
    Height = 33
    Hint = 'Atalho: +|Soma.'
    Caption = '+'
    ParentShowHint = False
    ShowHint = True
  end
  object BtnAllClear: TSpeedButton
    Left = 158
    Top = 65
    Width = 33
    Height = 33
    Hint = 'Atalho: Esc|Limpa a opera'#231#227'o.'
    BiDiMode = bdLeftToRight
    Caption = 'AC'
    ParentShowHint = False
    ParentBiDiMode = False
    ShowHint = True
    OnClick = BtnAllClearClick
  end
  object PnlScreen: TPanel
    Left = 8
    Top = 8
    Width = 183
    Height = 33
    Alignment = taRightJustify
    BorderWidth = 3
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 271
    Width = 358
    Height = 19
    Panels = <
      item
        Width = 200
      end>
  end
  object PnlErrorFlag: TPanel
    Left = 8
    Top = 65
    Width = 33
    Height = 33
    Hint = 'Erro|Exibe E em caso de erro.'
    Caption = 'E'
    ParentShowHint = False
    ShowCaption = False
    ShowHint = True
    TabOrder = 2
  end
  object PnlConstantFlag: TPanel
    Left = 58
    Top = 65
    Width = 33
    Height = 33
    Hint = 'Constante|Exibe K para c'#225'lculos constantes.'
    Caption = 'K'
    ParentShowHint = False
    ShowCaption = False
    ShowHint = True
    TabOrder = 3
  end
  object PnlOperator: TPanel
    Left = 108
    Top = 65
    Width = 33
    Height = 33
    Hint = 'Operador|Exibe o operador atual.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object ActionList: TActionList
    Left = 248
    Top = 64
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
    Left = 312
    Top = 64
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
    Left = 280
    Top = 8
  end
end

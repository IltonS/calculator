object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 290
  ClientWidth = 423
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Btn1: TSpeedButton
    Left = 8
    Top = 221
    Width = 33
    Height = 33
    Action = ActBtn1
    ParentShowHint = False
    ShowHint = True
  end
  object BtnAllClear: TSpeedButton
    Left = 158
    Top = 65
    Width = 33
    Height = 33
    Action = ActBtnAllClear
    BiDiMode = bdLeftToRight
    ParentShowHint = False
    ParentBiDiMode = False
    ShowHint = True
  end
  object Btn2: TSpeedButton
    Left = 58
    Top = 221
    Width = 33
    Height = 33
    Action = ActBtn2
    ParentShowHint = False
    ShowHint = True
  end
  object Btn3: TSpeedButton
    Left = 108
    Top = 221
    Width = 33
    Height = 33
    Action = ActBtn3
    ParentShowHint = False
    ShowHint = True
  end
  object Btn4: TSpeedButton
    Left = 8
    Top = 181
    Width = 33
    Height = 33
    Action = ActBtn4
    ParentShowHint = False
    ShowHint = True
  end
  object Btn5: TSpeedButton
    Left = 58
    Top = 181
    Width = 33
    Height = 33
    Action = ActBtn5
    ParentShowHint = False
    ShowHint = True
  end
  object Btn6: TSpeedButton
    Left = 108
    Top = 181
    Width = 33
    Height = 33
    Action = ActBtn6
    ParentShowHint = False
    ShowHint = True
  end
  object Btn7: TSpeedButton
    Left = 8
    Top = 142
    Width = 33
    Height = 33
    Action = ActBtn7
    ParentShowHint = False
    ShowHint = True
  end
  object Btn8: TSpeedButton
    Left = 58
    Top = 142
    Width = 33
    Height = 33
    Action = ActBtn8
    ParentShowHint = False
    ShowHint = True
  end
  object Btn9: TSpeedButton
    Left = 108
    Top = 142
    Width = 33
    Height = 33
    Action = ActBtn9
    ParentShowHint = False
    ShowHint = True
  end
  object BtnDecimal: TSpeedButton
    Left = 158
    Top = 181
    Width = 33
    Height = 33
    Action = ActBtnDecimal
    ParentShowHint = False
    ShowHint = True
  end
  object Btn0: TSpeedButton
    Left = 158
    Top = 142
    Width = 33
    Height = 33
    Action = ActBtn0
    ParentShowHint = False
    ShowHint = True
  end
  object BtnEquals: TSpeedButton
    Left = 158
    Top = 220
    Width = 33
    Height = 33
    Action = ActBtnEquals
    ParentShowHint = False
    ShowHint = True
  end
  object BtnDivision: TSpeedButton
    Left = 8
    Top = 104
    Width = 33
    Height = 33
    ParentShowHint = False
    ShowHint = True
    OnClick = ActBtn7Execute
  end
  object BtnMultiplication: TSpeedButton
    Left = 58
    Top = 104
    Width = 33
    Height = 33
    ParentShowHint = False
    ShowHint = True
    OnClick = ActBtn7Execute
  end
  object BtnSubtraction: TSpeedButton
    Left = 108
    Top = 104
    Width = 33
    Height = 33
    ParentShowHint = False
    ShowHint = True
    OnClick = ActBtn7Execute
  end
  object BtnAddition: TSpeedButton
    Left = 158
    Top = 104
    Width = 33
    Height = 33
    Action = ActBtnAddition
    ParentShowHint = False
    ShowHint = True
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
    Width = 423
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
  object Panel1: TPanel
    Left = 224
    Top = 8
    Width = 185
    Height = 246
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 5
  end
  object ActionList: TActionList
    OnExecute = ActionListExecute
    OnUpdate = ActionListUpdate
    Left = 264
    Top = 80
    object AjudaTopicosCmd: TAction
      Category = 'Ajuda'
      Caption = '&T'#243'picos da Ajuda'
      ShortCut = 112
    end
    object AjudaSobreCmd: TAction
      Category = 'Ajuda'
      Caption = '&Sobre'
    end
    object ActBtnAllClear: TAction
      Category = 'Button'
      Caption = 'AC'
      Hint = 'Atalho: Esc|Limpa a opera'#231#227'o atual.'
      OnExecute = ActBtnAllClearExecute
    end
    object ActBtn1: TAction
      Category = 'Button'
      Caption = '1'
      Hint = 'Atalho: 1|Insere o valor no display.'
      OnExecute = ActBtn1Execute
    end
    object ActBtn2: TAction
      Category = 'Button'
      Caption = '2'
      Hint = 'Atalho: 2|Insere o valor no display.'
      OnExecute = ActBtn2Execute
    end
    object ActBtn3: TAction
      Category = 'Button'
      Caption = '3'
      Hint = 'Atalho: 3|Insere o valor no display.'
      OnExecute = ActBtn3Execute
    end
    object ActBtn4: TAction
      Category = 'Button'
      Caption = '4'
      Hint = 'Atalho: 4|Insere o valor no display.'
      OnExecute = ActBtn4Execute
    end
    object ActBtn5: TAction
      Category = 'Button'
      Caption = '5'
      Hint = 'Atalho: 5|Insere o valor no display.'
      OnExecute = ActBtn5Execute
    end
    object ActBtn6: TAction
      Category = 'Button'
      Caption = '6'
      Hint = 'Atalho: 6|Insere o valor no display.'
      OnExecute = ActBtn6Execute
    end
    object ActBtn7: TAction
      Category = 'Button'
      Caption = '7'
      Hint = 'Atalho: 7|Insere o valor no display.'
      OnExecute = ActBtn7Execute
    end
    object ActBtn8: TAction
      Category = 'Button'
      Caption = '8'
      Hint = 'Atalho: 8|Insere o valor no display.'
      OnExecute = ActBtn8Execute
    end
    object ActBtn9: TAction
      Category = 'Button'
      Caption = '9'
      Hint = 'Atalho: 9|Insere o valor no display.'
      OnExecute = ActBtn9Execute
    end
    object ActBtn0: TAction
      Category = 'Button'
      Caption = '0'
      Hint = 'Atalho: 0|Insere o valor no display.'
      OnExecute = ActBtn0Execute
    end
    object ActBtnDecimal: TAction
      Category = 'Button'
      Caption = ','
      Hint = 'Atalho: ,|Insere o separador decimal.'
      OnExecute = ActBtnDecimalExecute
    end
    object ActBtnAddition: TAction
      Category = 'Button'
      Caption = '+'
      Hint = 'Atalho: +|Soma.'
      OnExecute = ActBtnAdditionExecute
    end
    object ActBtnEquals: TAction
      Category = 'Button'
      Caption = '='
      Hint = 'Atalho: Enter|Executa a opera'#231#227'o atual.'
      OnExecute = ActBtnEqualsExecute
    end
  end
  object MainMenu: TMainMenu
    Left = 264
    Top = 136
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
    Left = 264
    Top = 16
  end
  object TmrPowerOff: TTimer
    Enabled = False
    OnTimer = TmrPowerOffTimer
    Left = 352
    Top = 16
  end
end

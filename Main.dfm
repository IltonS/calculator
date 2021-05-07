object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculator'
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
    Action = ActBtnDivision
    ParentShowHint = False
    ShowHint = True
  end
  object BtnMultiplication: TSpeedButton
    Left = 58
    Top = 104
    Width = 33
    Height = 33
    Action = ActBtnMultiplication
    ParentShowHint = False
    ShowHint = True
  end
  object BtnSubtraction: TSpeedButton
    Left = 108
    Top = 104
    Width = 33
    Height = 33
    Action = ActBtnSubtraction
    ParentShowHint = False
    ShowHint = True
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
  object BtnClear: TSpeedButton
    Left = 108
    Top = 65
    Width = 33
    Height = 33
    Action = ActBtnClear
    BiDiMode = bdLeftToRight
    ParentShowHint = False
    ParentBiDiMode = False
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
  object PnlConstantFlag: TPanel
    Left = 8
    Top = 65
    Width = 33
    Height = 33
    Hint = 'Constante|Exibe K para c'#225'lculos constantes.'
    Caption = 'K'
    ParentShowHint = False
    ShowCaption = False
    ShowHint = True
    TabOrder = 2
  end
  object PnlOperator: TPanel
    Left = 58
    Top = 65
    Width = 33
    Height = 33
    Hint = 'Operador|Exibe o operador atual.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 230
    Top = 8
    Width = 185
    Height = 246
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 4
  end
  object ActionList: TActionList
    OnExecute = ActionListExecute
    OnUpdate = ActionListUpdate
    Left = 264
    Top = 80
    object HelpTopicsCmd: TAction
      Category = 'Help'
      Caption = '&Help Topics'
      ShortCut = 112
    end
    object HelpAboutCmd: TAction
      Category = 'Help'
      Caption = '&About'
      OnExecute = HelpAbout
    end
    object ActBtnAllClear: TAction
      Category = 'Button'
      Caption = 'AC'
      Hint = 'Shortcut: Esc|Clears the current calculation.'
      OnExecute = ActBtnAllClearExecute
    end
    object ActBtnClear: TAction
      Category = 'Button'
      Caption = 'C'
      Hint = 'Shortcut: Del|Clears the displayed number.'
      OnExecute = ActBtnClearExecute
    end
    object ActBtn1: TAction
      Category = 'Button'
      Caption = '1'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn1Execute
    end
    object ActBtn2: TAction
      Category = 'Button'
      Caption = '2'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn2Execute
    end
    object ActBtn3: TAction
      Category = 'Button'
      Caption = '3'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn3Execute
    end
    object ActBtn4: TAction
      Category = 'Button'
      Caption = '4'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn4Execute
    end
    object ActBtn5: TAction
      Category = 'Button'
      Caption = '5'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn5Execute
    end
    object ActBtn6: TAction
      Category = 'Button'
      Caption = '6'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn6Execute
    end
    object ActBtn7: TAction
      Category = 'Button'
      Caption = '7'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn7Execute
    end
    object ActBtn8: TAction
      Category = 'Button'
      Caption = '8'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn8Execute
    end
    object ActBtn9: TAction
      Category = 'Button'
      Caption = '9'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn9Execute
    end
    object ActBtn0: TAction
      Category = 'Button'
      Caption = '0'
      Hint = 'Shortcut: 0-9|Puts this number in the display.'
      OnExecute = ActBtn0Execute
    end
    object ActBtnDecimal: TAction
      Category = 'Button'
      Caption = ','
      Hint = 'Shortcut: .|Inserts a decimal point.'
      OnExecute = ActBtnDecimalExecute
    end
    object ActBtnAddition: TAction
      Category = 'Button'
      Caption = '+'
      Hint = 'Shortcut: +|Adds.'
      OnExecute = ActBtnAdditionExecute
    end
    object ActBtnSubtraction: TAction
      Category = 'Button'
      Caption = '-'
      Hint = 'Shortcut: -|Subtracts.'
      OnExecute = ActBtnSubtractionExecute
    end
    object ActBtnMultiplication: TAction
      Category = 'Button'
      Caption = #215
      Hint = 'Shortcut: *|Multiplies.'
      OnExecute = ActBtnMultiplicationExecute
    end
    object ActBtnDivision: TAction
      Category = 'Button'
      Caption = #247
      Hint = 'Shortcut: /|Divides.'
      OnExecute = ActBtnDivisionExecute
    end
    object ActBtnEquals: TAction
      Category = 'Button'
      Caption = '='
      Hint = 'Shortcut: Enter|Performs any operation.'
      OnExecute = ActBtnEqualsExecute
    end
  end
  object MainMenu: TMainMenu
    Left = 264
    Top = 136
    object Help1: TMenuItem
      Caption = '&Help'
      object AjudaTopicosItem: TMenuItem
        Action = HelpTopicsCmd
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object AjudaSobreItem: TMenuItem
        Action = HelpAboutCmd
      end
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnException = ApplicationEventsException
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
  object BaseCalc: TBaseCalc
    Left = 352
    Top = 80
  end
end

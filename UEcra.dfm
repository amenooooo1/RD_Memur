object FEcra: TFEcra
  Left = 266
  Top = 106
  ActiveControl = DBEdit1
  Caption = 'FEcra'
  ClientHeight = 293
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 372
    Height = 41
    Align = alTop
    TabOrder = 0
    object Vazgec: TBitBtn
      Left = 300
      Top = 1
      Width = 72
      Height = 40
      Cancel = True
      Caption = '&Vazgec'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      ModalResult = 2
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = VazgecClick
    end
    object Button1: TButton
      Left = 1
      Top = 0
      Width = 78
      Height = 42
      Caption = 'Eczane '
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 372
    Height = 252
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 30
      Top = 22
      Width = 3
      Height = 13
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 30
      Top = 43
      Width = 3
      Height = 13
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 30
      Top = 64
      Width = 3
      Height = 13
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 30
      Top = 85
      Width = 3
      Height = 13
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 30
      Top = 106
      Width = 3
      Height = 13
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 30
      Top = 127
      Width = 3
      Height = 13
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 30
      Top = 148
      Width = 3
      Height = 13
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 30
      Top = 169
      Width = 3
      Height = 13
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 30
      Top = 190
      Width = 3
      Height = 13
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 30
      Top = 210
      Width = 3
      Height = 13
      FocusControl = DBEdit10
    end
    object DBEdit1: TDBEdit
      Left = 200
      Top = 22
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K1'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 200
      Top = 43
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K2'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 200
      Top = 64
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K3'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 200
      Top = 85
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K4'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 3
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 200
      Top = 106
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K5'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 4
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 200
      Top = 127
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K6'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 5
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 200
      Top = 148
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K7'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 6
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 200
      Top = 169
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K8'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 7
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 200
      Top = 190
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K9'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 8
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit10: TDBEdit
      Left = 200
      Top = 210
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'K10'
      DataSource = FData.DSICIL
      ParentCtl3D = False
      TabOrder = 9
      OnKeyPress = DBEdit1KeyPress
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 370
      Height = 250
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 10
      Visible = False
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 368
        Height = 248
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object Table1: TUniTable
    TableName = 'Ezca'
    Connection = FData.UniMemur
    Left = 88
    Top = 81
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 72
    Top = 89
  end
end

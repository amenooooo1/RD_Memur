object FIcraGirisi: TFIcraGirisi
  Left = 0
  Top = 0
  Caption = 'FIcraGirisi'
  ClientHeight = 360
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 41
    Align = alTop
    TabOrder = 0
    object Vazgec: TBitBtn
      Left = 685
      Top = 2
      Width = 73
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 759
    Height = 319
    Align = alClient
    DataSource = FData.UniDIcra
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IcraNo'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IcraninGeldiYer'
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IcraToplam'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IcraKalan'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Icra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kesilen'
        PickList.Strings = (
          'True'
          'False')
        Width = 48
        Visible = True
      end>
  end
end

object FrmAgenda: TFrmAgenda
  Left = 0
  Top = 0
  Caption = 'Agenda'
  ClientHeight = 566
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object Base: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 566
    Align = alClient
    TabOrder = 0
    object Grid: TDBGrid
      Left = 8
      Top = 64
      Width = 673
      Height = 273
      DataSource = DM.DS
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Width = 100
          Visible = True
        end>
    end
    object Memo: TMemo
      Left = 8
      Top = 349
      Width = 673
      Height = 209
      TabOrder = 1
    end
  end
  object EditPesquisar: TEdit
    Left = 8
    Top = 24
    Width = 209
    Height = 23
    TabOrder = 1
  end
  object BtnClickPesquisar: TButton
    Left = 240
    Top = 24
    Width = 75
    Height = 23
    Caption = 'Pesquisar'
    TabOrder = 2
    OnClick = BtnClickPesquisarClick
  end
  object BtnClickNovo: TButton
    Left = 336
    Top = 24
    Width = 75
    Height = 23
    Caption = 'Novo'
    TabOrder = 3
    OnClick = BtnClickNovoClick
  end
  object BtnClickEditar: TButton
    Left = 432
    Top = 24
    Width = 75
    Height = 23
    Caption = 'Editar'
    TabOrder = 4
  end
  object BtnClickFechar: TButton
    Left = 606
    Top = 24
    Width = 75
    Height = 23
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BtnClickFecharClick
  end
end

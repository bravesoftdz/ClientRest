object Leandro: TLeandro
  OldCreateOrder = False
  Height = 357
  Width = 485
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Desenvolvimento\Sistemas Delphi DX\Testes\SERV\BD\DB' +
        'PEDIDOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object q: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 384
    Top = 208
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 200
    Top = 248
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 256
    Top = 120
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Console'
    Left = 368
    Top = 96
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 144
    Top = 160
  end
end

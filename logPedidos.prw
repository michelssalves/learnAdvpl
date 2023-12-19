#include 'Protheus.ch'

//Apos a criação do pedido de venda vai salvar as info na tabela ZXX
user function MT410INC

    RecLock("ZXX", .T. )
    ZXX->ZXX_FILIAL := xFilial("ZXX")
    ZXX->ZXX_PED := SC5->C5_NUM
    ZXX->ZXX_DATA := date()
    ZXX->ZXX_HORA := time()
    ZXX->ZXX_USER := cUserName
    ZXX->(MsUnlock())

    Aviso("Atencao", "Log gravado com Sucesso!", {"OK"})

return    

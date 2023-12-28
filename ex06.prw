#include "Protheus.ch"

User Function xModelo1()
    Private _cTab := "SZ0"
    Private aRotina := {{"Pesquisar" , "AxPesqui", 0 , 1},;
                        {"Visualizar" , "AxVisual", 0 , 2},;
                        {"Incluir" , "U_xProcMod1(3)", 0 , 3},;
                        {"Alterar" , "U_xProcMod1(4)", 0 , 4},;
                        {"Excluir" , "U_xProcMod1(5)", 0 , 5}}
    mBrowse(6, 1, 22, 75, _cTab)
Return

User Function xProcMod1(nOpcUsr)

    Local nOpca := 0
    Local aParam := {}
    Local aCpos := {}

    Private aButtons := {}
    Private cCadastro := "Tela com AxInclui"

    aAdd( aButtons, { /*caminho arquivo */ , { || Alert("Clicado no botão Teste!")}, "Este botão serve para executar...", "Botão Teste"})
    aAdd( aParam, { || U_xVldMod1(nOpcUsr)})
    aAdd( aParam, { || U_xTOkMod1(nOpcUsr)})
    aAdd( aParam, { || U_xTraMod1(nOpcUsr)})
    aAdd( aParam, { || U_xEndMod1(nOpcUsr)})

    //DBSelectArea(_cTab)
    (_cTab)->(DbSetOrder(1))

    Do Case
        Case nOpcUsr == 3
            nOpca := AxInclui(_cTab, (_cTab)->(Recno()), nOpcUsr,,,,, .F.,, aButtons, aParam,,,.T.,,,,,)
        Case nOpcUsr == 4
            nCpos := {'Z0_DESC'}
            nOpca := AxAltera(_cTab, (_cTab)->(Recno()), nOpcUsr,,aCpos,,,,,,aButtons, aParam,,,.T.)
        Case nOpcUsr == 5
            nOpca := AxAltera(_cTab,(cTab)->(Recno()), nOpcUser,,,,,,,,,aParam,,.T.)
    EndCase        
Return nOpca

User Function xVldMod1(nOpcUsr)
    if nOpcUsr == 3
        Alert('Validando acesso de inclusao de Registro') 
    elseif nOpcUsr == 4
        Alert('Validando acesso de alteração de Registro') 
    else    
        Alert('Validando acesso de exclusão de Registro') 
    endif
Return .T.
User Function xTOkMod1(nOpcUsr)
    if nOpcUsr == 3
        Alert('Validando TUDO OK (dados da tela) de inclusao de Registro') 
    elseif nOpcUsr == 4
        Alert('Validando TUDO OK (dados da tela) de alteração de Registro') 
    else    
        Alert('Validando TUDO OK (dados da tela) de exclusão de Registro') 
    endif
Return .T.
User Function xTraMod1(nOpcUsr)
    if nOpcUsr == 3
        Alert('Apos clicar no botoa confirma uma inclusao, dentro da transacao de BD') 
    elseif nOpcUsr == 4
        Alert('Apos clicar no botoa confirma uma inclusao, dentro da transacao de BD') 
    else    
        Alert('Apos clicar no botoa confirma uma inclusao, dentro da transacao de BD') 
    endif
Return .T.
User Function xEndMod1(nOpcUsr)
    if nOpcUsr == 3
        Alert('Apos clicar no botoa confirma uma inclusao, fora da transacao de BD') 
    elseif nOpcUsr == 4
        Alert('Apos clicar no botoa confirma uma inclusao, fora da transacao de BD')
    else    
        Alert('Apos clicar no botoa confirma uma inclusao, fora da transacao de BD')
    endif
Return .T.

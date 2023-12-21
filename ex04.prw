#include 'Totvs.ch'
#include "Protheus.ch"

User Function teste()

Local cAlias := "SZ0"

Private cCadastro := "Carteira de Clientes"
Private aRotina := { }

AAdd(aRotina, {"Pesquisar" ,"AxPesqui" , 0,1})
AAdd(aRotina, {"Visualizar" ,"AxVisual" , 0,2})
AAdd(aRotina, {"Incluir" ,"AxInclui" , 0,3})
AAdd(aRotina, {"Alterar" ,"AxAltera" , 0,4})
AAdd(aRotina, {"Excluir" ,"AxDeleta" , 0,5})

DBSelectArea(cAlias)
DBSetOrder(1)

mBrowse(6, 1, 22, 75, cAlias)

Return Nil

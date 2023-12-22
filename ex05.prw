#include 'Totvs.ch'
#include "Protheus.ch"

/*
Para fazer uma posicione 

IF(!EMPTY(Z0_CODVEN), POSICIONE("SA3",1,XFILIAL("SA3")+SZ0->Z0_CODVEN,"A3_NOME") ,"PREEENCHA O CODIGO")    
Se o campo codigo for vazio, vai aparecer preencha o codigo no campo nome vendedor
Se o campo for preenchido ira buscar o valor e preencher o campo nome
Precisa ser coloca no inicializador padrão dessa forma pois como o campo e virtual nao preenche quando vai alterar

Coloque o codigo abaixo no campo Formato e ficara tudo maiusculo sempre

!@   

Em validaçoes ele verifica se o codigo ja existe na tabela que salvara

EXISTCHAV("SZ0", "Z0_CODVEN", 2)     

nao deixa digitar valor que nao esteja cadastrado

ExistCpo("SA3", M->Z0_CODVEN)
ExistChav("SA3")
ExistChav("SA3", M->Z0_CODVEN, 1)

Torna o campo autoincrement, preimeira parametro e nome da tabela e o segundo o nome do campo

GETSXENUM("SZ0", "Z0_DESCRIC")                                                                                                  
*/

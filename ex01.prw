#include 'Totvs.ch'

User Function TMichel()
    //comandos de criação da tabela no banco
    //DBSelectArea("SZ0")
    //ChkFile("SZ0")
    Local resultado := 0

    if U_Ex003(10, 10, "Soma", @resultado)
        alert("Fez a conta, o valor de é: " + cValToChar(resultado) + ".")
    endif

Return 

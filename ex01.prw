#include 'Totvs.ch'

User Function TMichel()
    //comandos de criação da tabela no banco
    //DBSelectArea("SZ0")
    //ChkFile("SZ0")
    Local resultado := 0
    Local n1 := 25
    Local n2 := 35
    Local op := "Soma"

    if U_Ex003(@n1, @n2, @op, @resultado)
        alert("Fez a conta, o valor de é: " + cValToChar(resultado) + ".")
    endif

Return 

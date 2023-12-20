#include "Protheus.ch"

User Function Ex001(numero)

    Local eNumero := 5
    Default numero := 0

    if numero > eNumero
        Alert("É maior")
    else
        Alert("É igual ou menor")
    endif

     Ex001A()

Return

User Function Ex002(numero)

    Local eNumero := 5
    Default numero := 0

    if numero > eNumero
        Alert("É maior")
    else
        Alert("É igual ou menor")
    endif

Return
User Function Ex003(n1, n2, op, resultado)

    Local fezConta := .F.
    Default n1 := 0
    Default n2 := 0
    Default op := ""

    if !empty(op)
        if op == "Soma"
        resultado := n1 + n2
        fezConta := .T.
        endif
    endif

Return fezConta

Static Function Ex001A()

    alert("Static Funtion")

Return


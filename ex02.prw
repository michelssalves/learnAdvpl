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

Static Function Ex001A()

    alert("Static Funtion")

Return


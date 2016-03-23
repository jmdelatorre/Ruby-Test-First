def translate(word)
    palabras = word.split(" ")
    final = ""
    palabras.each do |palabra|
        primero_es_vocal = nil
        segunda_es_vocal = nil
        tercera_letra = nil
        primera_letra = palabra[0]
        segunda_letra = palabra[1]
        tercera_letra = palabra[2]

        if primera_letra == "a" || primera_letra == "e" || primera_letra == "i" || primera_letra == "o" || primera_letra ==  "u" then
            primero_es_vocal = true
        else
            primero_es_vocal = false
        end
        if segunda_letra == "a" || segunda_letra == "e" || segunda_letra == "i" || segunda_letra == "o" || segunda_letra ==  "u" then
            segunda_es_vocal = true
        else
            segunda_es_vocal = false
        end

        if primero_es_vocal
            palabra = palabra + "ay"
        else
            palabra = palabra[1, palabra.length] + primera_letra + "ay"
            primero_es_vocal = false
        end

        if primero_es_vocal == false and segunda_es_vocal == false then
            palabra = palabra[0,palabra.length - 2]
            palabra = palabra[1, palabra.length] + segunda_letra + "ay"
        end
    	final = final + palabra + " "

    end
    return final[0, final.length - 1]

end
translate("cherry")
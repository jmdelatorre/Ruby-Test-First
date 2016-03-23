def echo(speak)
    speak
end

def shout (speak)
	return speak.upcase
end

def repeat (speak, time=2)
	phrase = (speak+ " ")*time
	phrase = phrase[0, Integer(phrase.length) -1]
end

def start_of_word(word, long=1)
	phrase = word[0,long]
	return phrase
end

def first_word(word)
	words = word.split(" ")
	return words[0]
end

def titleize(word)
	little_words = ['the','and','is','a','an','over','in','on','of','or']
	palabras = word.split(" ")
	final = ""
	palabras.each do |palabra|
		if ((little_words).include?(palabra))
			final += palabra + " "
		else
			primera_letra = palabra[0]
			primera_letra = primera_letra.upcase
			final += primera_letra + palabra[1,word.length] + " "
		end
	end
	primera_letra = final[0]
	primera_letra = primera_letra.upcase
	return primera_letra + final[1, Integer(final.length ) - 2 ]
end

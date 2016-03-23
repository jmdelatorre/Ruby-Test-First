class Book
  attr_reader :title

  def title=(new_title)
  	words = ["a", "an", "and", "the", "in" ,"of"]
  	titulo = ""
  	frases = new_title.split(" ")
  		frases.each do |palabra|
  			if words.include? palabra 
  				palabra
  			else
  				palabra = palabra[0].capitalize + palabra[1, palabra.length]
  			end
  			titulo += palabra +" "
  		end
  	titulo = titulo[0].capitalize + titulo[1, titulo.length]
  	@title = titulo[0, titulo.length - 1]
  end

end

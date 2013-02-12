class Horse

  def name
				@name
				end
				def name=( value )
				@name = value
				end

end

h = Horse.new
h.name= "Poco Bueno"
puts h.name # => "Poco Bueno"
class Hello
  def initialize(name)
    @name = name
  end
  
  def hello_marc
    puts "hello, " + @name + "!"
  end
  
end

hi = Hellow.new ("Marc")
hi.hello_marc
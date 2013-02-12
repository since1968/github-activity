file = File.open("repos.csv")
file.each { |line| print "#{file.lineno}. ", line}
file.close

puts "--------------------------------"

require 'csv'
repos = CSV.foreach('repos.csv', :headers => true) do |row|
  puts row
end

puts "--------------------------------"


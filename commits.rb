require 'github_api'
require 'csv'
# https://github.com/peter-murach/github

=begin
1. load list of repos externally. this is lame and should be changed later
2. loop through repos and list commits. might need to paginate?
=end

# send password in the command line; assumes first argument. need begin/rescue
github = Github.new :basic_auth => 'since1968:' + ARGV.first

# output to file
CSV.open("commits.csv", "a+")


# load list of repos from text file
repos = CSV.foreach('repos.csv', :headers => true) do |row|
#  puts row
  commits = github.repos.commits.all row[0], row[1], per_page: 5000
#  puts commits
#  file.each { |row| print "{commits}") }
  
  puts '-----------------------------------------'
end

  



=begin

# set up new connection with basic authentication
# list stately commits
res = github.repos.commits.all 'intridea', 'stately'
puts res
puts '-------------------------------------------------------'

puts 'rate limit: ' + github.ratelimit_limit 
puts 'remaining: ' + github.ratelimit_remaining

=end



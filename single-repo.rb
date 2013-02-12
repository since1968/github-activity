require 'github_api'
require 'csv'
# https://github.com/peter-murach/github
# test with password 123Intridea

=begin
1. load list of repos externally. this is lame and should be changed later
2. loop through repos and list commits. might need to paginate?
=end

# send password in the command line; assumes first argument. need begin/rescue
github = Github.new :basic_auth => 'since1968:123Intridea'

commits = github.repos.commits.all "Intridea", "Surfiki", per_page: 2
# puts comm
=begin
puts "Author_______________"
puts "author: " + commits[1].commit.author.name
puts "email: " + commits[1].commit.author.email
puts "date: " + commits[1].commit.author.date
=end

=begin
while commits.has_next_page?
  puts commits.has_next_page?
  puts commits.links.next
  commits.next_page  
end
=end

# puts commits.first




commits.each_page do |page|
  page.each do |commit_container|
    puts "author: " + commit_container.commit.author.name
    puts "email: " + commit_container.commit.author.email
    puts "date: " + commit_container.commit.author.date
  end
end





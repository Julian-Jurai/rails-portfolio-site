3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 Topics  created"


10.times do |blog|
    Blog.create!(
        title: "My blog ##{blog}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
        topic: Topic.all.sample
    )
end

puts "10 Blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "10 Blog posts created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "my title #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "body #{portfolio_item}",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "my title #{portfolio_item}",
        subtitle: "Angular",
        body: "body #{portfolio_item}",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
    )
end

puts "9 Portfolio posts created"

3.times do |technology|
    Portfolio.last.technologies.create!(name: "Technology #{technology}")
end

puts "3 Technologies created"
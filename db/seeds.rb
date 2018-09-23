3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 Topics  created"


10.times do |blog|
    Blog.create!(
        title: "My blog ##{blog}",
        body: "Controls if the diff editor shows changes in leading or trailing whitespace as diffs",
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
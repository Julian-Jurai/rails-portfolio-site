10.times do |blog| 
    Blog.create!(
        title: "My blog ##{blog}",
        body: "Controls if the diff editor shows changes in leading or trailing whitespace as diffs"
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

9.times do |portfolio_item| 
    Portfolio.create!(
        title: "my title #{portfolio_item}",
        subtitle: "subtitle #{portfolio_item}",
        body: "body #{portfolio_item}",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
    )
end 

puts "9 Portfolio posts created"
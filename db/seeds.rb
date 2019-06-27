# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
puts "3Topics added"
10.times do |blog|
  Blog.create!(
      title: "My blog post #{blog}.",
      body: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
      topic_id: Topic.last.id
      )
end

puts "10blog added"

5.times do |skill|
  Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 15+skill,
    )
end

puts "5skills added"

8.times do |port_i|
  Portfolio.create!(
      title: "Portfolio title #{port_i}",
      main_image: "https://via.placeholder.com/600/09f/fff.png",
      thumb_image: "https://via.placeholder.com/300/09f/fff.png",
    )
end

1.times do |port_i|
  Portfolio.create!(
      title: "Portfolio title #{port_i}",
      main_image: "https://via.placeholder.com/600/09f/fff.png",
      thumb_image: "https://via.placeholder.com/300/09f/fff.png",
    )
end

puts "Portfolio added"


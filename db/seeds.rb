require 'random_data'

50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

#Create Questions
100.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end

# #Create Advertisement
# 50.times do
#   Advertisement.create!(
#     title: RandomData.random_sentence,
#     copy: RandomData.random_paragraph,
#     price: RandomData.random_integer
#   )
# end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

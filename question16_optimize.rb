Post.includes(:author).map do |post|
  [post.id, post.author.name]
end

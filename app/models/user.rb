# app/models/user.rb
class User < ApplicationRecord
  has_many :posts
  has_many :comments
end

# app/models/post.rb
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
end

# app/models/comment.rb
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
end

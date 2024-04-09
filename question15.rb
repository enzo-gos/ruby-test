class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :mobile_phone
  validates :name
end

class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :is_public, inclusion: { in: [true, false] }

  scope :public_posts, -> { where(is_public: true) }
end

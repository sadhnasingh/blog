class Comment < ApplicationRecord
  belongs_to :blogger
  has_many :replies
end

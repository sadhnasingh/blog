class Reply < ApplicationRecord
  belongs_to :blogger
  belongs_to :comment
end

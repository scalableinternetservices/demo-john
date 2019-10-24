class Comment < ApplicationRecord
  belongs_to :parent, class_name: 'Comment', optional: true
  belongs_to :submission

  has_many :replies, class_name: 'Comment', dependent: :destroy, foreign_key: 'parent_id'

  validates :message, length: { minimum: 1 }
  validates :parent, presence: { unless: -> { parent_id.blank? } }
end

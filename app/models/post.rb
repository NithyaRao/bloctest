class Post < ActiveRecord::Base
  has_many :comments
  default_scope { order('created_at DESC')}
  scope :order_by_title, -> { order('title')}
  scope :order_by_reverse_created_at, -> { order('created_at').reverse_order}
end

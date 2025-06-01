class Comment < ApplicationRecord
  include CommentVisible

  belongs_to :item

  VALID_COMMENT_STATUSES = [ "public", "private", "archived" ]

  validates :comment_status, inclusion: { in: VALID_COMMENT_STATUSES }

  def archived?
    comment_status == "archived"
  end
end

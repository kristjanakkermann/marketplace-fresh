module CommentVisible
  extend ActiveSupport::Concern

  VALID_COMMENT_STATUSES = [ "public", "private", "archived" ]

  included do
    validates :comment_status, inclusion: { in: VALID_COMMENT_STATUSES }
  end

  class_methods do
    def public_count
      where(comment_status: "public").count
    end
  end

  def archived?
    status == "archived"
  end
end

module ItemVisible
  extend ActiveSupport::Concern

  VALID_ITEM_STATUSES = [ "in sales", "in preparation", "sold" ]
  included do
    validates :item_status, inclusion: { in: VALID_ITEM_STATUSES }
  end

  class_methods do
    def in_sales_count
      where(item_status: "in sales").count
    end
  end

  def sold?
    status == "sold"
  end
end

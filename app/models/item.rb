class Item < ApplicationRecord
  include ItemVisible

  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price,
  presence: true,
  numericality: {
    greater_than_or_equal_to: 0,
    message: "must be a positive number"
  }
  # (optional) enforce at most two decimal places
  validates_format_of :price,
    with: /\A\d+(?:\.\d{1,2})?\z/,
    message: "can have at most two decimals"

  VALID_ITEM_STATUSES = [ "in sales", "in preparation", "sold" ]

  validates :item_status, inclusion: { in: VALID_ITEM_STATUSES }

  def sold?
    item_status == "sold"
  end
end

class Borrow < ApplicationRecord
  belongs_to :item
  belongs_to :recipient

  validates :days_borrowed, :reminders_sent, presence: true
  validates :returned, inclusion: { in: [true, false] }
  validates :days_borrowed, numericality: { only_integer: true, greater_than: 0 }
  validates :reminders_sent, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :lender_scope, -> (current) { joins(item: :lender).where("lender_id = ?", current.id).references(:item) }

end

class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :must_carry_at_least_one_mens_or_womens_apparel

  def must_carry_at_least_one_mens_or_womens_apparel
    if !mens_apparel
      errors.add(:mens_apparel, "Store must have at least one men's apparel")
      if !womens_apparel
      errors.add(:mens_apparel, "Store must have at least one women's apparel")
    end
  end
  end
end

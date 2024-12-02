class Calculation < ApplicationRecord
    # Validation for people_count: must be greater than 0
    validates :people_count, numericality: { greater_than: 0, message: "cannot be zero" }
    # Validation for bill_amount: must be greater than or equal to 0
    validates :bill_amount, numericality: { greater_than_or_equal_to: 0, message: "cannot be negative" }
    # Validation for tip_percentage: must be greater than or equal to 0
    validates :tip_percentage, numericality: { greater_than_or_equal_to: 0, message: "cannot be negative" }
    paginates_per 15 # Optional: Set default items per page for this model
end

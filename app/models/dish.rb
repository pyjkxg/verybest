class Dish < ApplicationRecord
  # Direct associations

  belongs_to :venue,
             :class_name => "Restaurant"

  # Indirect associations

  # Validations

end

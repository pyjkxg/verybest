class Dish < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :class_name => "Favorite",
             :dependent => :destroy

  belongs_to :venue,
             :class_name => "Restaurant"

  # Indirect associations

  has_many   :users,
             :through => :likes,
             :source => :user

  # Validations

end

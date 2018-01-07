class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :foreign_key => "venue_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end

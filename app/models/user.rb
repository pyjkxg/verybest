class User < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :class_name => "Favorite",
             :dependent => :destroy

  # Indirect associations

  has_many   :dishes,
             :through => :likes,
             :source => :dish

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

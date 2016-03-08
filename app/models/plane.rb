class Plane < ActiveRecord::Base
has_many :trips

has_many :pilots, through: :trips
has_many :routes, through: :trips

validates :number, numericality: { only_integer: true}
validates :number, uniqueness: true
end

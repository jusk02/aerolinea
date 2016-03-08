class Route < ActiveRecord::Base
has_many :trips
has_many :pilots, through: :trips
has_many :planes, through: :trips

validates :origin, uniqueness: { scope: :destination, message: "la ruta ya existe"}
end

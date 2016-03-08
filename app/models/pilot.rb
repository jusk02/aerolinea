class Pilot < ActiveRecord::Base
has_many :trips
has_many :routes, through: :trips
has_many :planes, through: :trips

validates :identification, uniqueness: true
end

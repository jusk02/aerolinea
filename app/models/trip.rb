class Trip < ActiveRecord::Base
belongs_to :plane
belongs_to :pilot
belongs_to :route
has_many :passengers

validate :date_time_cannot_be_in_the_past

after_validation :set_landing_time, on: [ :create, :update ]

	def set_landing_time
	@fecha= self.date_time + (self.route.duration * 3600)

	self.landing_time= @fecha
	end

	def date_time_cannot_be_in_the_past
		if date_time < Date.today
			
			errors.add(:date_time, "el viaje no puede estar en el pasado")
		end
	end


end

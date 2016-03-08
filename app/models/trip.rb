class Trip < ActiveRecord::Base
belongs_to :plane
belongs_to :pilot
belongs_to :route
has_many :passengers

validate :date_time_cannot_be_in_the_past

	def date_time_cannot_be_in_the_past
		if date_time < Date.today
			
			errors.add(:date_time, "el viaje no puede estar en el pasado")
		end
	end

before_save :set_landing_time, on: [ :create, :update ]


	def float_to_time

	end
	def set_landing_time
	@fecha= Time.date_time.to_f
	self.landing_time= @fecha
	end
end

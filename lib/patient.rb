class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |song|
      song.patient == self
    end
  end
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
end
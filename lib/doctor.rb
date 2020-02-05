class Doctor
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
    Song.all.select do |song|
      song.appointment == self
    end
  end
  
  def new_appointment(date, patient)
    Appointment.new(name, self, genre)
  end
  
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end
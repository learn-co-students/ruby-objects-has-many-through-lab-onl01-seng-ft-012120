class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name)
    self.name = name
    self.save
  end
  def save
    @@all << self
  end

  def self.all 
    @@all
  end

  def appointments
    Appointment.all.select{|a| a.doctor == self}
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients 
    self.appointments.collect{|a| p a.patient}
  end



end
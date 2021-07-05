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
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(patient, date)
    new_appointment = Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.collect do |appointment|
      appointment.doctor == self
      appointment.patient
    end
  end
end

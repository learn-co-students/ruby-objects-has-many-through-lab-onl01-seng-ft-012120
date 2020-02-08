require 'pry'
class Patient

  attr_accessor :name, :appointment, :doctor, :all
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |element|
      element.patient == self
    end
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

end 
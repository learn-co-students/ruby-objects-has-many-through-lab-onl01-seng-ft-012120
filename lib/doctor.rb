require "pry"
class Doctor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.each {|apt| apt.doctor == self}
    end

    def patients
        self.appointments.collect {|x| x.patient}
    end
end

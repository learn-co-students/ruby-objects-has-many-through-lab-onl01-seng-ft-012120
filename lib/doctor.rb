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
        Appointment.all.select{|i| i.doctor == self}
    end

    def new_appointment(patient, date)
        new_appointment = Appointment.new(date, patient, doctor=self)
        #puts " in Dr. class, date is #{date} patient is #{patient} doctor is #{doctor}"
        new_appointment 
    end

    def patients
        appointments.map{|i| i.patient}
    end


end

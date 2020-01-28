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

    def new_appointment(doctor, date)
        new_appointment = Appointment.new(date, patient=self, doctor)
        #puts "In  patient class, date is #{date} patient is #{patient} doctor is #{doctor}"
        new_appointment
    end

    def appointments
        Appointment.all.select{|i| i.patient == self }
    end

    def doctors
        appointments.map{|i| i.doctor}
    end



end

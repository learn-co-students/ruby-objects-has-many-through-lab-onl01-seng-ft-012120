class Patient

    @@all = []

    def self.all 
        @@all 
    end

    def initialize(name)
        @name = name
        @@all << self 
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appt| appt.patient == self}
    end

    def doctors
        doctor_array = []
        Appointment.all.each do |appt|
            if appt.patient == self 
                doctor_array << appt.doctor 
            end
        end
        doctor_array 
    end

end
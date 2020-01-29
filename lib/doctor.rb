class Doctor
    attr_reader :name 

    @@all = []

    def self.all
        @@all 
    end

    def initialize(name)
        @name = name
        @@all << self 
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appts| appts.doctor == self}
    end

    def patients
        patient_array = []
        Appointment.all.each do |appt|
            if appt.doctor == self 
                patient_array << appt.patient 
            end
        end
        patient_array 
    end
end
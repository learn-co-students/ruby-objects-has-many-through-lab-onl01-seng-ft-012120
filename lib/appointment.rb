class Appointment
    attr_accessor :date, :patient, :doctor
    
    @@all = []
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all 
    end
end


    #These should go in the doctor/patient classes, they each have many appointments, and appointments belong to them
    # def patient
    #     patient = Patient.new(patient)
    #     patient.appointments = self
    #     patient
    # end

    # def doctor
    #     doctor = Doctor.new(doctor)
    #     doctor.appointment = self
    # end



#end

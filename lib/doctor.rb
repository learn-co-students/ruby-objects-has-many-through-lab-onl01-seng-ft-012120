class Doctor
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    # save
  end   
  
  def self.all
    @@all 
  end
  
  # def save
  #   @@all << self
  # end   
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end 
  
  def appointments 
    Appointment.all.select {|appointment| appointment.doctor == self}
  end 
  
  def patients
    #appointments.collect {|appointment| appointment.patient}
    array = []
    appointments.each do |appointment|
      array << appointment.patient 
    end 
    array 
  end 
  
end   
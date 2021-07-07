class Patient
  
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
  
  def new_appointment(doctor, date) 
    Appointment.new(date, self, doctor)
  end 
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end   
  
  def doctors 
    appointments.collect {|appointment| appointment.doctor}
    # array = []
    # appointment.each do |appointment|
    #   array << appointment.doctor
    # end 
    # array 
  end 
  
end 
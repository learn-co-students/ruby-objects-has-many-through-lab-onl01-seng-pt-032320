class Patient
  attr_accessor :name 
  @@all=[]
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_appointment(date,doctor)
    ## creates a new Appointment. The Appointment should know that it belongs to the patient.
    Appointment.new(date,self,doctor)
  end 
  
  def appointments
    Appointment.all.select{|appoint| appoint.patient==self}
  end 
  
  def doctors
    ## that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.
    
    appoints= Appointment.all.select{|appoint| appoint.patient  ==self}
    appoints.map{|appoint| appoint.doctor}
    
  end
end 
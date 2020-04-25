class Patient
  
  attr_accessor :name
  
  @@all = []


  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select{ |a| a.patient == self}
  end
  
  def doctors
    Appointment.all.collect{ |a| a.doctor if a.patient == self }
  end
end

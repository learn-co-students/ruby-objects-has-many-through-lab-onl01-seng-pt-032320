class Patient
  attr_accessor :name
  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor,date)
  new_app = Appointment.new(doctor,self,date)
  end

  def appointments
    Appointment.all.select {|e| e.patient == self}
  end

  def doctors
    appointments.collect{|appointment| appointment.doctor}
  end


  def self.all
    @@all
  end

end
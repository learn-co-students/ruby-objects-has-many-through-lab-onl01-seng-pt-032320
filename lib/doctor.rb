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
    Appointment.all.select { |name| name.doctor == self}
  end
  
  def new_appointment(name, genre)
    Appointment.new(name, genre, self)
  end
  
  def patients
    arr = []
    appointments.each { |name| arr << name.patient}
    arr
  end
end
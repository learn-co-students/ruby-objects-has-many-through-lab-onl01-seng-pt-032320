class Appointment
  attr_accessor :date, :doctor, :patient

  @@all = Array.new

  def initialize(date,doctor,patient)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end



  def self.all
    @@all
  end

end

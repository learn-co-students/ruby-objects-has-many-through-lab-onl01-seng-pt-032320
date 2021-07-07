class Appointment
  attr_accessor :date, :doctor, :patient

  @@all = Array.new

  def initialize(date,patient,doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

end
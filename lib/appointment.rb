require "pry"
class Appointment
    attr_accessor :patient, :doctor, :date
  
    @@all = []
  
    def initialize(date, patient, doctor)
      @date = date
      @patient = patient
      @doctor = doctor
      @@all << self
    end
  
    def self.all  #Appointment.all bc class
      @@all

    end
  end
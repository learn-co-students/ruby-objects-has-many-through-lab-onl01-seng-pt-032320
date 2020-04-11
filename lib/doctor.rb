require 'pry'

class Doctor

  attr_accessor :name, :patient, :appointment

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all<<self
  end



  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(patient,date)
  new_app = Appointment.new(patient,self,date)
  end

  def patients
    # Appointment.all.select do |patient|
    #   patient.appointments
    # end
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

  def self.all
    @@all
  end


end

require 'pry'

class Doctor
  attr_reader :name
  attr_accessor :appointments

  @@all = Array.new

  def initialize(name)
    @name = name
    @appointments = appointments
    @@all<<self
  end

  def new_appointment(patient,date)
    Appointment.new(patient,self,date)
  end

  def appointments

    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    Appointment.all.select do |app|
      patient.appointments
    end
  end

  def self.all
    @@all
  end


end

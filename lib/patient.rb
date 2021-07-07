class Patient
    attr_accessor :name, :appointments

    @@all = []

    def initialize(name)
      @name=name
      @@all << self 
    end

    def self.all
        @@all #class variable 
    end
    
     def new_appointment(doctor, date)
      Appointment.new(doctor, self, date) #self is the patient 
    end
  
    def appointments
      Appointment.all.select do |appointment|
        appointment.patient == self
      end
    end
  
    def doctors
        self.appointments.map {|appt| appt.doctor} #looking for all the doctors on that app that match self 
    end
    
  end
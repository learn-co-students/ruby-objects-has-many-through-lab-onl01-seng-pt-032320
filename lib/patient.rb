class Patient
    attr_accessor :name
      @@all = []

    def initialize(name)
      @name = name
      @appointments = []
      @@all << self
    end

    def self.all
      @@all
    end

    def new_appointment(date, patient=self, doctor)
      Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appt| appt.patient == self}
    end

    def doctors
      Appointment.all.collect do |appt|
        if appt.patient == self
          @appointments << appt.doctor
        end
      end
      @appointments
    end 

end

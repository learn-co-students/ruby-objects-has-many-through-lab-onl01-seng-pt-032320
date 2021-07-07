class Doctor
    attr_accessor :name, :appointments, :patients 
    #get whatever we have set 
    #lays groundwork so we can set the variable 
    @@all = [] #set empty array class variable #place to store everything #in class scope #we are gonna need a container for all the docs
  #jar analogy
    def initialize(name) #instantianting a new object #pull name from attr_accessor 
      @name = name #creates a new instance with name
      @@all << self #self is at that point 
      #shovels all instances into @@all bc it wants all the collections of doctors available 
    end

    def self.all #class getter = calls the array you made #gets everything that you put into the top array
        @@all
      end
    
    def appointments #instance method = we call it on an instance/ or whatever object
        Appointment.all.select {|appt| appt.doctor == self} # .each do end part instead #self is general
    end #pulls from @@all array 
    #Appointment = look in appointment class
    #Appointment.all = returns @@all array 
    #we need to iterate through array = using .select 
    #.select = goes thru everything in every array your calling it on and does exactly what you do bw do and end
    #goes thru every appointment 

    # sam = Doctor.new("Sam")
    # maria = Doctor.new("maria")

    # sam.appointment
    # maria.appointment

    def new_appointment(date, patient)
        Appointment.new(date, patient, self) #self = whatever doc your calling it on
    end
    def patients 
        self.appointments.collect {|appt| appt.patient} #collect returns a new arrray that see if patient matches in the appt
        #establshing has many, has many through relationships
        #we have to go thru appt class thru patients 
        #collect/map = is a loop iterator 
        #sam = Doctor.new(“Sam”) sam new instance of the Doctor class sam is also a new object of the Doctor class 
    #iterating what def appointments give you 
    end
end 
  



#     def self.new
#        @appointments << self 
#     end
#     def add_appointment(appointment)
#       @appointments << appointment
#     end
  
#     def appointments
#       @appointments
#     end
  
#     def patients
#       self.appointments.collect {|appointment| appointment.patient}
#     end
#   end
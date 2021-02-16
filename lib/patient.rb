class Patient
    @@all = []
    attr_accessor :name
  
    def initialize(name)
      @name=name
      @@all << self
    end
  
    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |app|
            app.patient==self
        end
    end
  
    def new_appointment(appointment, doctor)
        Appointment.new(appointment, self, doctor)
    end
  
    def doctors
        appointments.collect do |appt|
            appt.doctor
        end
    end
  end
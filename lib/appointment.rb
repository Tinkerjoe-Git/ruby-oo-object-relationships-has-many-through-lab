class Appointment
    @@all=[]
    attr_accessor :patient, :doctor, :appointment

    def initialize(appointment, patient, doctor)
        @appointment=appointment
        @patient=patient
        @doctor=doctor
        @@all << self
    end
    
    def self.all
        @@all
    end
end

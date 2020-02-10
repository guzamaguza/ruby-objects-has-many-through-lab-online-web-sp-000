class Doctor
  @@all = []
  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    #@appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date,patient)
    appt = Appointment.new(date,patient,self)
    #@appointments << appt
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patients
    end
  end

end

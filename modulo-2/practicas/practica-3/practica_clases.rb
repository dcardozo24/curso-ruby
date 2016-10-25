class Persona
  #Persona debe tener atributos: nombre y apellido y deben ser accesibles
  #Persona debe almacenar todas sus instancias para poder hacer seguimiento
attr_accessor :nombre, :apellido
@@cont_persona = []
  #Inicializador de instancias
  def initialize(nombre,apellido)#Debe recibir dos parametros: nombre y apellido
	@nombre = nombre
	@apellido = apellido
	@@cont_persona.push self
  end

  #La clase debe tener tener un search por apellido
  def self.search(apellido)
	@@cont_persona.select {|i| i.apellido == apellido}
  end

  #Tener un método que retorne el nombre y el apellido de la persona.
  def to_s
     "nombre: #{nombre} apellido: #{apellido}"
  end
end

#Esto es lo que va a hacer el rspec comentar para correr
dp1 = Persona.new("Juan", "Perez")
p2 = Persona.new("Juan", "Benitez")
p3 = Persona.new("Juana", "Perez")
p4 = Persona.new("Romina", "Benitez")

puts Persona.search("Perez")

# Debería imprimir
# => Juan Perez
# => Juana Perez

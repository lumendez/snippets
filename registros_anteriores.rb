def self.registros_anteriores(usuario)
  registro_anterior_ingles = InscripcionRegistro.where(user_id: usuario, idioma: "Inglés").last
  registro_anterior_frances = InscripcionRegistro.where(user_id: usuario, idioma: "Francés").last
  registro_anterior_italiano = InscripcionRegistro.where(user_id: usuario, idioma: "Italiano").last
end

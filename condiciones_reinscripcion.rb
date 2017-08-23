registro_anterior_ingles = InscripcionRegistro.where(user_id: current_user.id, idioma: 'Inglés').last
registro_anterior_frances = InscripcionRegistro.where(user_id: current_user.id, idioma: 'Francés').last
registro_anterior_italiano = InscripcionRegistro.where(user_id: current_user.id, idioma: 'Italiano').last

def condiciones_reinscripcion
  if registro_anterior_ingles.present? && registro_anterior_frances.blank? && registro_anterior_italiano.blank?
    # Rutina solo para ingles
  elsif registro_anterior_ingles.blank? && registro_anterior_frances.present? && registro_anterior_italiano.blank?
    # Rutina solo para frances
  elsif registro_anterior_ingles.blank? && registro_anterior_frances.blank? && registro_anterior_italiano.present?
    # Rutina solo para italiano
  elsif registro_anterior_ingles.present? && registro_anterior_frances.present? && registro_anterior_italiano.blank?
    # rutina de inglés y francés
  elsif registro_anterior_ingles.present? && registro_anterior_frances.blank? && registro_anterior_italiano.present?
    # rutina de inglés e italiano
  elsif registro_anterior_ingles.blank? && registro_anterior_frances.present? && registro_anterior_italiano.present?
    # rutina para italiano y fracés
  elsif registro_anterior_ingles.present? && registro_anterior_frances.present? && registro_anterior_italiano.present?
    # rutina para los tres idiomas
  end
end

def reinscripcion_ingles
  # Si reprobó básico 1
  if registro_anterior_ingles.promedio < 80 && registro_anterior_ingles.nivel == "Básico 1"
    @grupos = grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  # Si aprobó básico 1
  elsif registro_anterior_ingles.promedio >= 80 && registro_anterior_ingles.nivel == "Básico 1"
    @grupos = grupos_ingles.where(nivel: "Básico 2").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  # Si reprobó básico 2
  elsif registro_anterior_ingles.promedio < 80 && registro_anterior_ingles.nivel == "Básico 2"
    @grupos = grupos_ingles.where(nivel: "Básico 2").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  # Si aprobó básico 2
  elsif registro_anterior_ingles.promedio >= 80 && registro_anterior_ingles.nivel == "Básico 2"
    @grupos = grupos_ingles.where(nivel: "Básico 3").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  # Si reprobó el básico 3
  elsif registro_anterior_ingles.promedio < 80 && registro_anterior_ingles.nivel == "Básico 3"
    @grupos = grupos_ingles.where(nivel: "Básico 3").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  # Si aprobó el básico 3
  elsif registro_anterior_ingles.promedio >= 80 && registro_anterior_ingles.nivel == "Básico 3"
    @grupos = grupos_ingles.where(nivel: "Básico 4").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  # Si reprobó el básico 4
  elsif registro_anterior_ingles.promedio < 80 && registro_anterior_ingles.nivel == "Básico 4"
    @grupos = grupos_ingles.where(nivel: "Básico 4").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  # Si aprobó el básico 4
  elsif registro_anterior_ingles.promedio >= 80 && registro_anterior_ingles.nivel == "Básico 4"
    @grupos = grupos_ingles.where(nivel: "Básico 5").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  # Si reprobó el básico 5
  elsif registro_anterior_ingles.promedio < 80 && registro_anterior_ingles.nivel == "Básico 5"
    @grupos = grupos_ingles.where(nivel: "Básico 5").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  # Si aprobó el básico 5
  elsif registro_anterior_ingles.promedio >= 80 && registro_anterior_ingles.nivel == "Básico 5"
    @grupos = grupos_ingles.where(nivel: "Intermedio 1").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))

end

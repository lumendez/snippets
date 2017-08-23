
if registro_anterior_ingles.blank? && registro_anterior_frances.blank? && registro_anterior_italiano.blank?
  if examen_anterior_ingles.blank? && examen_anterior_frances.blank? && examen_anterior_italiano.blank?
    @grupos = grupos_ingles.where(nivel: "%Básico 1%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  end
elsif registro_anterior_ingles.present? && registro_anterior_frances.blank? && registro_anterior_italiano.blank?
  #lo aprueba
  if registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  #lo reprueba
  elsif registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Básico 1%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Básico 2").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Básico 4%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Básico 4%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 1%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 1%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio >= 80
    @grupos = grupos_ingles.where(nivel: "%Avanzado 5%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio < 80
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  #Hay que revisar el orden de las certificaciones para inscribirse.
  end
elsif registro_anterior_ingles.blank? && registro_anterior_frances.present? && registro_anterior_italiano.blank?
  if registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Básico 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  #lo reprueba
  elsif registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Básico 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Básico 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Básico 2").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Básico 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Básico 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Básico 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Básico 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Básico 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Avanzado 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Intermedio 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Avanzado 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Avanzado 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Avanzado 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Avanzado 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Avanzado 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Avanzado 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio >= 80
    @grupos = grupos_frances.where(nivel: "%Avanzado 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio < 80
    @grupos = grupos_frances.where(nivel: "%Avanzado 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  #Hay que revisar el orden de las certificaciones para inscribirse.
  end
elsif registro_anterior_ingles.blank? && registro_anterior_frances.blank? && registro_anterior_italiano.present?
  if registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Básico 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  #lo reprueba
  elsif registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Básico 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Básico 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Básico 2").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Básico 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Básico 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Básico 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Básico 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Básico 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Avanzado 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Intermedio 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Avanzado 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Avanzado 1%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Avanzado 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Avanzado 2%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Avanzado 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Avanzado 3%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio >= 80
    @grupos = grupos_italiano.where(nivel: "%Avanzado 5%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio < 80
    @grupos = grupos_italiano.where(nivel: "%Avanzado 4%").or(grupos_ingles.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  #Hay que revisar el orden de las certificaciones para inscribirse.
  end
#Ahora tiene registro de Inglés y Francés pero no de Italiano
elsif registro_anterior_ingles.present? && registro_anterior_frances.present? && registro_anterior_italiano.blank?
  #lo aprueba
  #Casos para básico 1
  if (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_frances.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "Básico 1")))
  #lo reprueba
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 1%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_frances.where(nivel: "Básico 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 1%").or(grupos_frances.where(nivel: "Básico 2").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos para básico 2
  elsif (registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_frances.where(nivel: "Básico 3").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_frances.where(nivel: "Básico 2").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_frances.where(nivel: "Básico 2").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_frances.where(nivel: "Básico 3").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos para básico 3
  elsif (registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 4%").or(grupos_frances.where(nivel: "Básico 4").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_frances.where(nivel: "Básico 3").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_frances.where(nivel: "Básico 2").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_frances.where(nivel: "Básico 4").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos para básico 4
  elsif (registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_frances.where(nivel: "Básico 5").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 4%").or(grupos_frances.where(nivel: "Básico 4").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_frances.where(nivel: "Básico 4").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 4%").or(grupos_frances.where(nivel: "Básico 5").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos para básico 5
  elsif (registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 1%").or(grupos_frances.where(nivel: "Intermedio 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_frances.where(nivel: "Básico 5").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "Intermedio 1").or(grupos_frances.where(nivel: "Básico 5").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_frances.where(nivel: "Intermedio 1").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos para Intermedio 1
  elsif (registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_frances.where(nivel: "Intermedio 2").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 1%").or(grupos_frances.where(nivel: "Intermedio 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_frances.where(nivel: "Intermedio 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 1%").or(grupos_frances.where(nivel: "Intermedio 2").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos Intermedio 2
  elsif (registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_frances.where(nivel: "Intermedio 3").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_frances.where(nivel: "Intermedio 2").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_frances.where(nivel: "Intermedio 2").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_frances.where(nivel: "Intermedio 3").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos Intermedio 3
  elsif (registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_frances.where(nivel: "Intermedio 4").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_frances.where(nivel: "Intermedio 3").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_frances.where(nivel: "Intermedio 3").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_frances.where(nivel: "Intermedio 4").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos de Intermedio 4
  elsif (registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_frances.where(nivel: "Intermedio 5").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_frances.where(nivel: "Intermedio 4").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_frances.where(nivel: "Intermedio 4").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_frances.where(nivel: "Intermedio 5").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos Intermedio 5
  elsif (registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_frances.where(nivel: "Avanzado 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_frances.where(nivel: "Intermedio 5").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_frances.where(nivel: "Intermedio 5").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_frances.where(nivel: "Avanzado 1").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos Avanzado 1
  elsif (registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_frances.where(nivel: "Avanzado 2").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_frances.where(nivel: "Avanzado 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_frances.where(nivel: "Avanzado 1").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_frances.where(nivel: "Avanzado 2").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos Avanzado 2
  elsif (registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_frances.where(nivel: "Avanzado 3").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_frances.where(nivel: "Avanzado 2").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_frances.where(nivel: "Avanzado 2").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_frances.where(nivel: "Avanzado 3").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos Avanzado 3
  elsif (registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_frances.where(nivel: "Avanzado 4").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_frances.where(nivel: "Avanzado 3").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_frances.where(nivel: "Avanzado 3").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_frances.where(nivel: "Avanzado 4").or(grupos_italiano.where(nivel: "Básico 1")))
  #Casos Avanzado 4
  elsif (registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 5%").or(grupos_frances.where(nivel: "Avanzado 5").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_frances.where(nivel: "Avanzado 4").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 5%").or(grupos_frances.where(nivel: "Avanzado 4").or(grupos_italiano.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_frances.where(nivel: "Avanzado 5").or(grupos_italiano.where(nivel: "Básico 1")))
  #Hay que revisar el orden de las certificaciones para inscribirse.
  end
#Ahora tiene registro de Inglés y de Italiano pero no de Francés
elsif registro_anterior_ingles.present? && registro_anterior_frances.blank? && registro_anterior_italiano.present?
  #lo aprueba
  #Casos para básico 1
  if (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "%Básico 2%").or(grupos_frances.where(nivel: "Básico 1")))
  #lo reprueba
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 1%").or(grupos_italiano.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "Básico 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 1%").or(grupos_italiano.where(nivel: "Básico 2").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos para básico 2
  elsif (registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 3").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "Básico 2").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 2").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "Básico 3").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos para básico 3
  elsif (registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 4%").or(grupos_italiano.where(nivel: "Básico 4").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 3").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 2").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 4").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos para básico 4
  elsif (registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_italiano.where(nivel: "Básico 5").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 4%").or(grupos_italiano.where(nivel: "Básico 4").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_italiano.where(nivel: "Básico 4").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 4%").or(grupos_italiano.where(nivel: "Básico 5").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos para básico 5
  elsif (registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 1%").or(grupos_italiano.where(nivel: "Intermedio 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_italiano.where(nivel: "Básico 5").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "Intermedio 1").or(grupos_italiano.where(nivel: "Básico 5").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 5%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 5%").or(grupos_italiano.where(nivel: "Intermedio 1").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos para Intermedio 1
  elsif (registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_italiano.where(nivel: "Intermedio 2").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 1%").or(grupos_italiano.where(nivel: "Intermedio 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_italiano.where(nivel: "Intermedio 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 1%").or(grupos_italiano.where(nivel: "Intermedio 2").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos Intermedio 2
  elsif (registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_italiano.where(nivel: "Intermedio 3").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_italiano.where(nivel: "Intermedio 2").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_italiano.where(nivel: "Intermedio 2").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 2%").or(grupos_italiano.where(nivel: "Intermedio 3").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos Intermedio 3
  elsif (registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_italiano.where(nivel: "Intermedio 4").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_italiano.where(nivel: "Intermedio 3").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_italiano.where(nivel: "Intermedio 3").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 3%").or(grupos_italiano.where(nivel: "Intermedio 4").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos de Intermedio 4
  elsif (registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_italiano.where(nivel: "Intermedio 5").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_italiano.where(nivel: "Intermedio 4").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_italiano.where(nivel: "Intermedio 4").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 4%").or(grupos_italiano.where(nivel: "Intermedio 5").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos Intermedio 5
  elsif (registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_italiano.where(nivel: "Avanzado 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_italiano.where(nivel: "Intermedio 5").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_italiano.where(nivel: "Intermedio 5").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Intermedio 5%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Intermedio 5%").or(grupos_italiano.where(nivel: "Avanzado 1").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos Avanzado 1
  elsif (registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_italiano.where(nivel: "Avanzado 2").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_italiano.where(nivel: "Avanzado 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_italiano.where(nivel: "Avanzado 1").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 1%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 1%").or(grupos_italiano.where(nivel: "Avanzado 2").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos Avanzado 2
  elsif (registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_italiano.where(nivel: "Avanzado 3").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_italiano.where(nivel: "Avanzado 2").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_italiano.where(nivel: "Avanzado 2").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 2%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 2%").or(grupos_italiano.where(nivel: "Avanzado 3").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos Avanzado 3
  elsif (registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_italiano.where(nivel: "Avanzado 4").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_italiano.where(nivel: "Avanzado 3").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_italiano.where(nivel: "Avanzado 3").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 3%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 3%").or(grupos_italiano.where(nivel: "Avanzado 4").or(grupos_frances.where(nivel: "Básico 1")))
  #Casos Avanzado 4
  elsif (registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 5%").or(grupos_italiano.where(nivel: "Avanzado 5").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_italiano.where(nivel: "Avanzado 4").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 5%").or(grupos_italiano.where(nivel: "Avanzado 4").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Avanzado 4%" && registro_anterior_ingles.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Avanzado 4%").or(grupos_italiano.where(nivel: "Avanzado 5").or(grupos_frances.where(nivel: "Básico 1")))
  #Hay que revisar el orden de las certificaciones para inscribirse.
  end
  #Italiano y Francés están presentes pero Inglés no.
elsif registro_anterior_ingles.blank? && registro_anterior_frances.present? && registro_anterior_italiano.present?
  #lo aprueba
  #Casos para básico 1
  if (registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "%Básico 2%").or(grupos_ingles.where(nivel: "Básico 1")))
  #lo reprueba
  elsif (registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Básico 1%").or(grupos_italiano.where(nivel: "Básico 1").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "Básico 1").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Básico 1%").or(grupos_italiano.where(nivel: "Básico 2").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos para básico 2
  elsif (registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 3").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "Básico 2").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 2").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 2%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "Básico 3").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos para básico 3
  elsif (registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Básico 4%").or(grupos_italiano.where(nivel: "Básico 4").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 3").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 2").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 3%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Básico 3%").or(grupos_italiano.where(nivel: "Básico 4").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos para básico 4
  elsif (registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Básico 5%").or(grupos_italiano.where(nivel: "Básico 5").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Básico 4%").or(grupos_italiano.where(nivel: "Básico 4").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Básico 5%").or(grupos_italiano.where(nivel: "Básico 4").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 4%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Básico 4%").or(grupos_italiano.where(nivel: "Básico 5").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos para básico 5
  elsif (registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 1%").or(grupos_italiano.where(nivel: "Intermedio 1").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Básico 5%").or(grupos_italiano.where(nivel: "Básico 5").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "Intermedio 1").or(grupos_italiano.where(nivel: "Básico 5").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Básico 5%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 5%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Básico 5%").or(grupos_italiano.where(nivel: "Intermedio 1").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos para Intermedio 1
  elsif (registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 2%").or(grupos_italiano.where(nivel: "Intermedio 2").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 1%").or(grupos_italiano.where(nivel: "Intermedio 1").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 2%").or(grupos_italiano.where(nivel: "Intermedio 1").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 1%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 1%").or(grupos_italiano.where(nivel: "Intermedio 2").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos Intermedio 2
  elsif (registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 3%").or(grupos_italiano.where(nivel: "Intermedio 3").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 2%").or(grupos_italiano.where(nivel: "Intermedio 2").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 3%").or(grupos_italiano.where(nivel: "Intermedio 2").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 2%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 2%").or(grupos_italiano.where(nivel: "Intermedio 3").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos Intermedio 3
  elsif (registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 4%").or(grupos_italiano.where(nivel: "Intermedio 4").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 3%").or(grupos_italiano.where(nivel: "Intermedio 3").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 4%").or(grupos_italiano.where(nivel: "Intermedio 3").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 3%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 3%").or(grupos_italiano.where(nivel: "Intermedio 4").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos de Intermedio 4
  elsif (registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 5%").or(grupos_italiano.where(nivel: "Intermedio 5").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 4%").or(grupos_italiano.where(nivel: "Intermedio 4").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 5%").or(grupos_italiano.where(nivel: "Intermedio 4").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 4%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 4%").or(grupos_italiano.where(nivel: "Intermedio 5").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos Intermedio 5
  elsif (registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 1%").or(grupos_italiano.where(nivel: "Avanzado 1").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 5%").or(grupos_italiano.where(nivel: "Intermedio 5").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 1%").or(grupos_italiano.where(nivel: "Intermedio 5").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Intermedio 5%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Intermedio 5%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Intermedio 5%").or(grupos_italiano.where(nivel: "Avanzado 1").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos Avanzado 1
  elsif (registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 2%").or(grupos_italiano.where(nivel: "Avanzado 2").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 1%").or(grupos_italiano.where(nivel: "Avanzado 1").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 2%").or(grupos_italiano.where(nivel: "Avanzado 1").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 1%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 1%").or(grupos_italiano.where(nivel: "Avanzado 2").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos Avanzado 2
  elsif (registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 3%").or(grupos_italiano.where(nivel: "Avanzado 3").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 2%").or(grupos_italiano.where(nivel: "Avanzado 2").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 3%").or(grupos_italiano.where(nivel: "Avanzado 2").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 2%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 2%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 2%").or(grupos_italiano.where(nivel: "Avanzado 3").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos Avanzado 3
  elsif (registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 4%").or(grupos_italiano.where(nivel: "Avanzado 4").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 3%").or(grupos_italiano.where(nivel: "Avanzado 3").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 4%").or(grupos_italiano.where(nivel: "Avanzado 3").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 3%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 3%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 3%").or(grupos_italiano.where(nivel: "Avanzado 4").or(grupos_ingles.where(nivel: "Básico 1")))
  #Casos Avanzado 4
  elsif (registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 5%").or(grupos_italiano.where(nivel: "Avanzado 5").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 4%").or(grupos_italiano.where(nivel: "Avanzado 4").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 5%").or(grupos_italiano.where(nivel: "Avanzado 4").or(grupos_ingles.where(nivel: "Básico 1")))
  elsif (registro_anterior_frances.nivel == "%Avanzado 4%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Avanzado 4%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_frances.where(nivel: "%Avanzado 4%").or(grupos_italiano.where(nivel: "Avanzado 5").or(grupos_ingles.where(nivel: "Básico 1")))
  #Hay que revisar el orden de las certificaciones para inscribirse.
  end
elsif registro_anterior_ingles.present? && registro_anterior_frances.present? && registro_anterior_italiano.present?
  if (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio >= 80) && registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "%Básico 2%").or(grupos_frances.where(nivel: "Básico 2")))
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio < 80) && registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 1%").or(grupos_italiano.where(nivel: "%Básico 1%").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio >= 80) && registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "%Básico 1%").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio >= 80) && registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "%Básico 1%").or(grupos_frances.where(nivel: "Básico 2 ")))
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio >= 80) && registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio < 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio < 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 2%").or(grupos_italiano.where(nivel: "%Básico 2%").or(grupos_frances.where(nivel: "Básico 1")))
  elsif (registro_anterior_ingles.nivel == "%Básico 1%" && registro_anterior_ingles.promedio < 80) && registro_anterior_frances.nivel == "%Básico 1%" && registro_anterior_frances.promedio >= 80) && (registro_anterior_italiano.nivel == "%Básico 1%" && registro_anterior_italiano.promedio >= 80)
    @grupos = grupos_ingles.where(nivel: "%Básico 1%").or(grupos_italiano.where(nivel: "%Básico 2%").or(grupos_frances.where(nivel: "Básico 2")))

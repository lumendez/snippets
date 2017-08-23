grupos.each do |profesor_id, relacion_grupos|
  puts profesor_id
  contador_ingles = 0
  contador_frances = 0
  contador_italiano = 0
  relacion_grupos.each do |grupo|
    if grupo.idioma == "Inglés"
      contador_ingles = contador_ingles + 1
    elsif grupo.idioma == "Francés"
      contador_frances = contador_frances + 1
    elsif grupo.idioma == "Italiano"
      contador_italiano = contador_italiano + 1
    end
  end
  puts "#{contador_ingles} cursos del idioma Inglés"
  puts "#{contador_frances} cursos del idioma Francés"
  puts "#{contador_frances} cursos del idioma Italiano"
end

require 'colorize'

opciones = ["piedra", "papel", "tijera"]
hay_ganador = false
$victorias_usuario = 0
$victorias_cpu = 0

def marcador()
    puts "==========Marcador==========".yellow
    puts "Usuario: #{"✓".green * $victorias_usuario} CPU:#{"✓".red * $victorias_cpu} "
end

until hay_ganador 
    puts "Elije piedra, papel o tijera: "
    marcador()
    usuario_opcion = gets.chomp
    cpu_opcion = opciones.sample

    puts "El usuario eligió #{usuario_opcion}"
    puts "La CPU eligió #{cpu_opcion}"

    if usuario_opcion == "piedra" && cpu_opcion == "papel"

        puts "La CPU ganó".red
        $victorias_cpu += 1
        puts "-----------------------------".yellow
    elsif usuario_opcion == "piedra" && cpu_opcion == "tijera"

        puts "El usuario ganó".green
        $victorias_usuario += 1
        puts "-----------------------------".yellow
    elsif usuario_opcion == "papel" && cpu_opcion == "piedra"

        puts "El usuario ganó".green
        $victorias_usuario += 1
        puts "-----------------------------".yellow
    elsif usuario_opcion == "papel" && cpu_opcion == "tijera"

        puts "La CPU ganó".red
        $victorias_cpu += 1
        puts "-----------------------------".yellow
    elsif usuario_opcion == "tijera" && cpu_opcion == "piedra"

        puts "La CPU ganó".red
        $victorias_cpu += 1
        puts "-----------------------------".yellow
    elsif usuario_opcion == "tijera" && cpu_opcion == "papel"

        puts "El usuario ganó".green
        $victorias_usuario += 1
        puts "-----------------------------".yellow
    else
        puts "Empate".blue
        puts "-----------------------------".yellow
    end
    
    if $victorias_usuario == 3 || $victorias_cpu ==3
        hay_ganador = true
    end
end



if $victorias_usuario == 3
    puts "Has ganado!".green
end

if $victorias_cpu == 3
    puts "Perdiste :( ".red
end
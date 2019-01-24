require 'controller'

class Router
  attr_reader :controller
  def initialize
    @controller =  Controller.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts "BIENVENUE DANS THE MORPION PROJECT"
    while true

      #on affiche le menu
      puts "Que veux tu faire ?"
      puts "1. JOUER AU MORPION"
      puts "2. QUITTER LE PROGRAMME"

      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts "Tu as choisi de lancer une partie"
        @controller.ask_name
        @controller.create_game
        @controller.play
        #@controller.empty_game
      when 2
        puts "À bientôt !"
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
      else
        puts "Ce choix n'existe pas, merci de ressayer" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end

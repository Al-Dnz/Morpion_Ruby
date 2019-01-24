require 'view'
require 'player'

class Controller
  attr_accessor :played_cases , :view, :player0 , :player1

  def initialize
  @view = View.new
  @played_cases =[]
  end

# DEMANDE DU NOM ET STOCKAGE DANS DES VARIABLES D'INSTANCE DE LA CLASSE PLAYER
  def ask_name
    puts "Quel est le nom du joueur 1 ?"
    name_player0 = gets.chomp
    tok0 = "X"
    player0 =Player.new(name_player0,tok0)
    @player0 = player0
    puts "OK , #{player0.name} jouera avec les #{player0.token} "
    puts "Quel est le nom du joueur 2 ?"
    name_player1 = gets.chomp
    tok1 = "O"
    player1 = Player.new(name_player1,tok1)
    @player1 = player1
    puts "OK , #{player1.name} jouera avec les #{player1.token} "
  end

  def create_game
    @view.primary_board
  end

#VERIFICATION SI LE TABLEAU EST REMPLI
  def isfull?
    if @played_cases.length == 9
      return true
    else
      return false
    end
  end

#VERIFICATION DES VALEURS DÉJA JOUÉES
  def not_played?(value)
    if @played_cases.include?(value)
      puts "Cette case a déjà été jouée , reessaye avec une autre"
      return false
    else
      return true
    end
  end

# BLOCAGE DES MAUVAISES ENTRÉES
  def case_authorization?(value)
    possibilities =["A0","A1","A2","B0","B1","B2","C0","C1","C2"]
    if possibilities.include?(value)
      return true
    else
      puts "Cette case ne figure pas dans la table de jeu \nTu dois entrer une valeur correcte "
      return false
    end
  end

# EMPTYGAME NETTOIE LA MATRICE , AFFICHE UN TABLEAU VIERGE ET VIDE L'ARRAY DES  VALEURS DÉJA JOUÉES
  def empty_game
    @view.matrice =  [ [" "," "," "] , [" "," "," "] , [" "," "," "] ]
    @played_cases =[]
    @view.primary_board
  end

# ALGORYTHME DE JEU JOUEUR PAR JOUEUR
  def play
    state = 0
    empty_game
    while true
      if state == 0
          puts "C'est à #{@player0.name} de jouer (jeton #{@player0.token})"
          puts "Quelle case veux tu cocher #{@player0.name} ?"
          n = gets.chomp.upcase

          until not_played?(n) && case_authorization?(n)
            n = gets.chomp.upcase
          end
          @played_cases << n
          @view.play("player0",n)

         if @view.iswin?(@player0.token)
           puts "#{@player0.name} a gagné."
           puts "FÉLICITATIONS #{@player0.name}!"
           puts" "
           @player0.score += 1
           break
         elsif isfull?
           puts "Match nul !"
           break
         else
           state = 1 - state
         end
      else
          puts "C'est à #{@player1.name} de jouer (jeton #{@player1.token})"
          puts "Quelle case veux tu cocher #{@player1.name} ?"
          n = gets.chomp.upcase

          until not_played?(n) && case_authorization?(n)
            n = gets.chomp.upcase
          end

          @played_cases << n
          @view.play("player1",n)

          if @view.iswin?(@player1.token)
            puts "#{@player1.name} a gagné."
            puts "FÉLICITATIONS #{@player1.name}!"
            puts" "
            @player1.score += 1
            break
          elsif isfull?
            puts "Match nul !"
            break
          else
           state = 1 - state
          end
       end
     end
   end


end

require 'player'

class View

  attr_accessor :matrice

#LA MATRICE DEFINIT LE TABLEAU DE JEU SOUS FORME D'UN ARRAY
  def initialize
    @matrice = [ [" "," "," "] , [" "," "," "] , [" "," "," "] ]
  end

#AFFICHE LE TABLEAU VIDE
  def primary_board
    launch_board(@matrice)
  end

#FONCTION AFFICHANT LE TABLEAU EN FONCTION DE LA MATRICE
 def launch_board(arr)
   puts `clear`
   puts "     0 1 2  "
   puts ""
   puts "A   |#{arr[0][0]}|#{arr[0][1]}|#{arr[0][2]}|"
   puts "B   |#{arr[1][0]}|#{arr[1][1]}|#{arr[1][2]}|"
   puts "C   |#{arr[2][0]}|#{arr[2][1]}|#{arr[2][2]}|"
   puts " "
 end

# MODIFIE LA MATRICE EN FONCTION DU PLAYER ET DE LA POSITION DU PION
#AFFICHE LE TABLEAU UNE FOIS LA MATRICE MODIFIÉE
 def play(player ,position)
    position = position.upcase
    if player == "player0"
      z = "X"
    elsif player == "player1"
      z = "O"
    end

    if position[0] == "A"
        i = 0
    elsif position[0] == "B"
        i = 1
    elsif position[0] == "C"
        i = 2
    end
     @matrice[i][position[1].to_i] = z
    return launch_board(@matrice)
 end

# CONDITION DE VICTOIRE EN FONCTION DU TOKEN DU PLAYER
def iswin?(token)
  if (@matrice[0][0] == @matrice[0][1] && @matrice[0][1] == @matrice[0][2] && @matrice[0][0] == token) || (@matrice[1][0] == @matrice[1][1] && @matrice[1][1] == @matrice[1][2] && @matrice[1][0] == token) || (@matrice[2][0] == @matrice[2][1] && @matrice[2][1] == @matrice[2][2] && @matrice[2][0] == token) || (@matrice[0][0] == @matrice[1][0] && @matrice[1][0] == @matrice[2][0] && @matrice[0][0] == token) || (@matrice[0][1] == @matrice[1][1] && @matrice[1][1] == @matrice[2][1] && @matrice[0][1] == token) || (@matrice[0][2] == @matrice[1][2] && @matrice[1][2] == @matrice[2][2] && @matrice[0][2] == token) || (@matrice[0][0] == @matrice[1][1] && @matrice[1][1] == @matrice[2][2] && @matrice[0][0] == token) || (@matrice[0][2] == @matrice[1][1] && @matrice[1][1] == @matrice[2][0] && @matrice[0][2] == token)
    return true
  else
    return false
  end
end

end

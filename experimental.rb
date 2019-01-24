
#MATRICE DE JEU
tab = [ ["O","O","O"] , ["O","X","O"] , ["O"," "," "] ]

# FONCTION INTERFACE GRAPHIQUE
def grafik(arr)
 puts `clear`
 puts "     0 1 2  "
 puts ""
 puts "A   |#{arr[0][0]}|#{arr[0][1]}|#{arr[0][2]}|"
 puts "B   |#{arr[1][0]}|#{arr[1][1]}|#{arr[1][2]}|"
 puts "C   |#{arr[2][0]}|#{arr[2][1]}|#{arr[2][2]}|"
 puts " "
end

grafik(tab)

def play(arr , player ,position)
  position=position.upcase
  if player == "player1"
   z = "X"
  elsif player == "player2"
    z = "O"
  end
   if position[0] == "A"
     i = 0
   elsif position[0] == "B"
     i = 1
   elsif position[0] == "C"
     i = 2
   end
  arr[i][position[1].to_i] = z
  return arr
end

# play(tab,"player1", "A2")
# grafik(play(tab,"player1", "C1"))


def whowin(arr)
  for i in (0...2)
    if (arr[i][0] == arr[i][1]) && (arr[0][1] == arr[i][2])
      if arr[i][0] == "X"
        puts "yolo X a gagné "
        break
      elsif arr[i][0] == "O"
        puts "yolo O a gagné "
        break
      end
    end
  end
end



# CONDITION DE VICTOIRE DE X
if (tab[0][0] == tab[0][1] && tab[0][1] == tab[0][2] && tab[0][0] == "X") || (tab[1][0] == tab[1][1] && tab[1][1] == tab[1][2] && tab[1][0] == "X") || (tab[2][0] == tab[2][1] && tab[2][1] == tab[2][2] && tab[2][0] == "X") || (tab[0][0] == tab[1][0] && tab[1][0] == tab[2][0] && tab[0][0] == "X") || (tab[0][1] == tab[1][1] && tab[1][1] == tab[2][1] && tab[0][1] == "X") || (tab[0][2] == tab[1][2] && tab[1][2] == tab[2][2] && tab[0][2] == "X") || (tab[0][0] == tab[1][1] && tab[1][1] == tab[2][2] && tab[0][0] == "X") || (tab[0][2] == tab[1][1] && tab[1][1] == tab[2][0] && tab[0][2] == "X")
puts "yolo X"
end

# CONDITION DE VICTOIRE DE O
if (tab[0][0] == tab[0][1] && tab[0][1] == tab[0][2] && tab[0][0] == "O") || (tab[1][0] == tab[1][1] && tab[1][1] == tab[1][2] && tab[1][0] == "O") || (tab[2][0] == tab[2][1] && tab[2][1] == tab[2][2] && tab[2][0] == "O") || (tab[0][0] == tab[1][0] && tab[1][0] == tab[2][0] && tab[0][0] == "O") || (tab[0][1] == tab[1][1] && tab[1][1] == tab[2][1] && tab[0][1] == "O") || (tab[0][2] == tab[1][2] && tab[1][2] == tab[2][2] && tab[0][2] == "O") || (tab[0][0] == tab[1][1] && tab[1][1] == tab[2][2] && tab[0][0] == "O") || (tab[0][2] == tab[1][1] && tab[1][1] == tab[2][0] && tab[0][2] == "O")
puts "yolo O"
end






# TRASHES ---------------------------------------------------------------------------------------------
# puts "|#{a0}|#{a1}|#{a2}|"
# puts "|#{b0}|#{b1}|#{b2}|"
# puts "|#{c0}|#{c1}|#{c2}|"

# a0 = "X"
# a1 = "X"
# a2 = "X"
# b0 = "O"
# b1 = "O"
# b2 = "O"
# c0 = "X"
# c1 = "0"
# c2 = "X"

#
# def grafik1 (a , b , c ,d ,e ,f ,g ,h ,i)
# puts "|#{a}|#{b}|#{c}|"
# puts "|#{d}|#{e}|#{f}|"
# puts "|#{g}|#{h}|#{i}|"
# puts " "
# end

#
# def jouer(arr,player,case)
#    case = case.upcase
#   if player == "player1"
#    z = "X"
#   elsif player == "player2"
#     z = "O"
#   end
#    if case[0] == "A"
#      i = 0
#    elsif case[0] == "B"
#      i = 1
#    elsif (case[0] == "C")
#      i = 2
#    end
#    arr[i] = z
# end
#
# jouer(tab,"player1", "A2")


# def iswin?
#  for i in (0...2)
#     if (@matrice[i][0] == @matrice[i][1]) && (@matrice[i][1] == @matrice[i][2]) && (@matrice[i][0] == "X")
#         #puts launch_board(@matrice)
#         return true
#         break
#      elsif (@matrice[i][0] == @matrice[i][1]) && (@matrice[i][1] == @matrice[i][2]) && (@matrice[i][0] == "0")
#         #puts launch_board(@matrice)
#         return true
#         break
#      else
#        return false
#    end
#   end
#  end



#grafik1("X", "X" , "X" , "X" , "X" , "X" , "X" , "X" , "X" )
#grafik1(tab[0][0], tab[0][1] , tab[0][2] , tab[1][0] , tab[1][1] , tab[1][2] , tab[2][0] , tab[2][1] , tab[2][2] )

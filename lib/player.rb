class Player
  attr_reader :name , :token
  attr_accessor :score

  def initialize(nom,jeton)
    @name = nom
    @token = jeton
    @score = 0
  end

end

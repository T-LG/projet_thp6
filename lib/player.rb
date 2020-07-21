require 'pry'

class Player

  attr_accessor :name, :life_points                 #@name (string) @life_points (integer)

  def initialize(name)

    @name = name                                    #player1 = Player.new("jose") player2 = Player.new("josiane")
    @life_points = 10                               
  end

  def show_state
    puts "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level}"
  end

  def gets_damage(damage_received)

    @life_points = life_points - damage_received
    if @life_points > 0
      puts "Le joueur #{name} a #{life_points} points de vie"
    else @life_points <= 0
      puts "Le joueur #{name} a été tué!"
    end
end

  def compute_damage
    return rand(1..6)
  end

  def attacks(player)

    puts "Le joueur #{self.name} attaque le joueur #{player.name}"

    damage_received = player.compute_damage

    puts "Il lui inflige #{damage_received}"

    player.gets_damage(damage_received)
  end

  class HumanPlayer < Player

    attr_accessor :weapon_level

    def initialize(name)

      @name = name
      @life_points = 100
      @weapon_level = 1
    end

  def compute_damage(with_weapon)
    return rand(1..6) * @weapon_level
  end

  #def search_weapon

    #with_weapon = rand(1..6) * @weapon_level

    #puts "Tu as trouvé une arme de niveau #{weapon_level}"

    #if condition
      
    #end

end
end

  
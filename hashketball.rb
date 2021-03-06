require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  
  # points_scored = nil 
  # players = game_hash[:home][:players] + game_hash[:away][:players]
  # players.each do |player|
  #   player
  #     if player_name == player[:player_name]
  #         points_scored = player[:points]
  #     end
  # end
  #points_scored
  
  game_hash.each do |location, team|
    team[:players].each do |player|
      return player[:points] if player[:player_name] == player_name
    end
  end 
end
  
#  Build a method, `num_points_scored` that takes in an argument of a player's
# name and returns the number of points scored for that player.


def shoe_size(player_name)
  # shoe_size = nil 
  # players = game_hash[:home][:players] + game_hash[:away][:players]
  # players.each do |player|
  #   player
  #     if player_name == player[:player_name]
  #         shoe_size = player[:shoe]
  #     end
  # end
  # shoe_size
  
  game_hash.each do |location, team|
    team[:players].each do |player|
      return player[:shoe] if player[:player_name] == player_name
    end 
  end 
end 

# * Build a method, `shoe_size`, that takes in an argument of a player's name and
#   returns the shoe size for that player.

#   * Think about how you will find the shoe size of the correct player. How can
#     you check and see if a player's name matches the name that has been passed
#     into the method as an argument?
  
def team_colors(team_name)
 case team_name
 when game_hash[:home][:team_name]
    game_hash[:home][:colors]
  when game_hash[:away][:team_name]
    game_hash[:away][:colors]
  end 
end 

# * Build a method, `team_colors`, that takes in an argument of the team name and
#   returns an `Array` of that team's colors.

def team_names
  #[game_hash[:home][:team_name], game_hash[:away][:team_name]]
  game_hash.map do |location, team|
    team[:team_name]
  end 
end 

# * Build a method, `team_names`, that operates on the game `Hash` to return an
#   `Array` of the team names.

def player_numbers(team_name)
  
  #new_array = []
  # game_hash.each do |k, v|
  #   if v[:team_name] == team_name
  #     v[:players].each do |player|
  #       new_array << player[:number]
  #     end 
  #   end 
  # end 
  # new_array
  
  number_array = []
  game_hash.each do |location, team|
    if team[:team_name] == team_name
      team[:players].map do |player|
        number_array << player[:number]
      end 
    end
  end
  number_array
end 

# * Build a method, `player_numbers`, that takes in an argument of a team name and
#   returns an `Array` of the jersey numbers for that team.

def player_stats(player_name)
  # stats = nil 
  # players = game_hash[:home][:players] + game_hash[:away][:players]
  # players.each do |player|
  #   player[:player_name]
  #     if player_name == player[:player_name]
  #         stats = player
  #     end
  # end
  # stats
  
  game_hash.each do |location, team|
    team[:players].each do |player|
      if player[:player_name] == player_name
        return player 
      end 
    end
  end 
end 

# * Build a method, `player_stats`, that takes in an argument of a player's name
#   and returns a hash of that player's stats.

#   * Check out the following example of the expected return value of the
#     `player_stats` method:

#   ```bash
#   player_stats("Alan Anderson")
#   => {
#         :player_name => "Alan Anderson",
#         :number => 0,
#         :shoe => 16,
#         :points => 22,
#         :rebounds => 12,
#         :assists => 12,
#         :steals => 3,
#         :blocks => 1,
#         :slam_dunks => 1
#       }
#   ```
def big_shoe_rebounds
  # largest_shoe_size = nil
  # rebounds = nil   
  # players = game_hash[:home][:players] + game_hash[:away][:players]
  # players.each do |player|
  #   player[:shoe]
  #     if largest_shoe_size == nil 
  #       largest_shoe_size = player[:shoe]
  #     elsif largest_shoe_size < player[:shoe]
  #       largest_shoe_size = player[:shoe]
  #       rebounds = player[:rebounds]
  #     end 
  # end
  # rebounds 
  
  largest_shoe_size = nil
  rebounds = nil 
  game_hash.each do |location, team|
    team[:players].each do |player|
      player[:shoe]
        if largest_shoe_size == nil 
          largest_shoe_size = player[:shoe]
        elsif largest_shoe_size < player[:shoe]
          largest_shoe_size = player[:shoe]
          rebounds = player[:rebounds]
        end 
    end
  end  
  rebounds 
end   

# * Build a method, `big_shoe_rebounds`, that will return the number of rebounds associated with the player that has the largest shoe size.
# Break this one down into steps:

#   * First, find the player with the largest shoe size
#   * Then, return that player's number of rebounds
#   * Remember to think about return values here.


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
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
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
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def home_team_name
  team = game_hash[:home][:team_name]
  team
end

def get_all_player_hash
  teams_data_array = game_hash.values.map do |team_hash|
    team_hash[:players]
  end
teams_data_array.flatten
end


def num_points_scored(player_name)
  get_all_player_hash.each do |player|
    if player[:player_name] == player_name
      return player[:points]
    end
  end
end

    
def shoe_size(player_name)
  get_all_player_hash.each do |player|
    if player[:player_name] == player_name
      return player[:shoe]
    end
  end
end

def get_team(team_name)
  game_hash.values.find do |team|
    team[:team_name] == team_name
  end
end

def team_colors(team_name)
  team = get_team(team_name)
  team[:colors]
end

def team_names
  team_name_list = game_hash.values.map do |names|
    names[:team_name]
  end
team_name_list
end

def player_numbers(team_name)
  team_data = get_team(team_name)
  jersey_list = team_data[:players].map do |jersey|
    jersey[:number]
  end
jersey_list
end

def player_stats(player_name)
  game_hash.each do |players|
    players[:players].each do |name|
      if name[:player_name] == player_name
        return name
      end
    end
  end
end

def big_shoe_rebounds
  big_feet = 0
  rebounds = 0
  get_all_player_hash.each do |size|
    if size[:shoe] > big_feet
      big_feet = size[:shoe]
      rebounds = size[:rebounds]
    end
  end
rebounds
end

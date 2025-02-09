# write your code here

def game_hash
  stats_hash = {}
  stats_hash[:home] = {
    team_name: 'Brooklyn Nets',
    colors: %w[Black White],
    players:
    [
      {
        player_name: 'Jeff Adrien',
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
        player_name: 'Reggie Evans',
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
        player_name: 'Brook Lopez',
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
        player_name: 'Mason Plumlee',
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
        player_name: 'Jason Terry',
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
  }

  stats_hash[:away] = {
    team_name: 'Charlotte Hornets',
    colors: %w[Turquoise Purple],
    players:
    [
      {
        player_name: 'Jeff Adrien',
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
        player_name: 'Bismack Biyomboo',
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
        player_name: 'DeSagna Diop',
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
        player_name: 'Ben Gordon',
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
        player_name: 'Kemba Walker',
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
  stats_hash
end

def num_points_scored(name)
  hash = game_hash
  hash.each do |home_away, info|
    info[:players].each do |player|
      if player[:player_name] == name
        return player[:points]
      end
    end
  end
end

def shoe_size(name)
  hash = game_hash
  hash.each do |home_away, info|
    info[:players].each do |player|
      if player[:player_name] == name
        return player[:shoe]
      end
    end
  end
end

def team_colors(team_name)
  hash = game_hash
  hash.each do |home_away,info|
    if info[:team_name] == team_name
      return info[:colors]
    end
  end
end

def team_names
  result_array = []
  hash = game_hash
  hash.each do |home_away,info|
    result_array << hash[home_away][:team_name]
  end
  result_array
end

def player_numbers (team_name)
  result_array = []
  game_hash.each do |home_away,info|
    if info[:team_name] == team_name
      info[:players].each do |player|
        result_array << player[:number]
      end 
    end
  end
  return result_array
end


def player_stats (name)
  player_stat_hash = {}
  game_hash.each do |home_away,info|
    info[:players].each do |player|
      if player[:player_name] == name
        player_stat_hash = player.delete_if do |k,v|
          k == :player_name
        end
      end
    end
  end
  player_stat_hash
end


def big_shoe_rebounds
  player_shoe_size = 0
  player_rebound_stats = 0
  game_hash.each do |home_away,info|
    info[:players].each do |player|
      if player[:shoe] > player_shoe_size
          player_shoe_size = player[:shoe]
          player_rebound_stats = player[:rebounds]
      end
    end
  end
  player_rebound_stats
end

p big_shoe_rebounds

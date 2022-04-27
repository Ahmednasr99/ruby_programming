require 'nokogiri'
require 'open-uri'
uri = 'https://finalfantasy.fandom.com/wiki/Final_Fantasy_Tactics_weapons'

html = Nokogiri::HTML(URI.open(uri))
@weapon_data = []

@weapons = {
  axes: [],
  bags: [],
  books: [],
  bows: [],
  cloths: [],
  crossbows: [],
  fell_swords: [],
  flails: [],
  guns: [],
  instruments: [],
  katana: [],
  knives: [],
  knight_swords: [],
  ninja_blades: [],
  poles: [],
  rods: [],
  polearms: [],
  staves: [],
  swords: [],
  throwing_weapons: [],
  other: []
}

html.search('table').each { |table, index|
  arr = []
  table.search('tr').search('th > a > span').each do |e|
    arr << {name: e.content}
  end
  @weapon_data << arr if arr.any?
}

@weapons.keys.each_with_index { |k, i|
  @weapons[k] = @weapon_data[i]
}


p @weapons[:axes]

# p @weapons

# puts html
require 'net/http'

MAP_SIZE = 8

MAPS = {
  miramar: 'v5',
  erangel: 'v11'
}

MAPS.keys.each do |map|
  (0..MAP_SIZE-1).each do |i|
    (0..MAP_SIZE-1).each do |j|
      url = "https://tiles0-v2.pubgmap.net/tiles/#{map}/#{MAPS[map]}/3/#{i}/#{j}.png"
      `curl --silent #{url} > #{map}/tile-#{i}-#{j}.png`
      puts "Saved tile #{url} to #{i}-#{j}.png"
    end
  end
end


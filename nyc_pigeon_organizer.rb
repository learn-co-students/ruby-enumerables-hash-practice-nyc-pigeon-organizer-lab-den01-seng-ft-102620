require "pry"
def nyc_pigeon_organizer(data)
pigeon_list = {}
data.each {|cgl, atr|
atr.each{|key, value|
value.each{|name|

if !pigeon_list[name]
pigeon_list[name] = {}
end

if !pigeon_list[name][cgl]
pigeon_list[name][cgl] = []
end

pigeon_list[name][cgl].push("#{key}")


}
}
}
pigeon_list
end
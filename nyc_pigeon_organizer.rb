require 'pry'

def nyc_pigeon_organizer(data)
  
  data.each_with_object ({}) do | (key, value), accum |
    
    value.each do |inner_key, names|
      names.each do |name|
        if !accum[name]
          accum[name] = {}
        end
        if !accum[name][key]
          accum[name][key] = []
        end
          accum[name][key].push(inner_key.to_s)
      end 
    end  
  end
#  binding.pry
end

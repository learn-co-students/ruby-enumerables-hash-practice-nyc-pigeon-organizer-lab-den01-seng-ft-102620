require 'pry'

def nyc_pigeon_organizer(data)
  new_array = data.each_with_object({}) do |(key, value), new_array|
      value.each do |inner_key, names|
        names.each do |name|
      if !new_array[name]
        new_array[name] = {}
      end
      if !new_array[name][key]
        !new_array[name][key] = []
      end
      new_array[name][key].push(inner_key.to_s)
    end
      new_array
    end
  end
end



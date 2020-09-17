require 'pry'

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(keys, values), pigeon_list|
    values.each do |key_name, names|
      names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][keys]
          pigeon_list[name][keys] = []
        end
        pigeon_list[name][keys].push(key_name.to_s)
      end
    end
  end
end



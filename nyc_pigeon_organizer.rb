def nyc_pigeon_organizer (data)
  data.each_with_object ({}) do  |(key, value), final_array|
  	value.each  do |inner_key, name1|
  	  name1.each  do |inner_name|
  		  if !final_array[inner_name]
  		  final_array[inner_name] = {}
  		  end
  		  if !final_array[inner_name][key]
  		  final_array[inner_name][key] = []
  		  end
  	     final_array[inner_name][key].push(inner_key.to_s)
  	  end
  	end
  end
end

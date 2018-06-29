def begins_with_r(array)
  array.all? {|word| word.start_with? "r"}
end

def contain_a(array)
  array.select { |word| word.include? "a"}
end

def first_wa(array)
  array.detect { |word| word.to_s.start_with? "wa"}
end

def remove_non_strings(array)
  array.delete_if { |item| item.class != String}
end

def count_elements(array)
  array.uniq.map do |item|
    item[:count] = array.count(item)
    item
end
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|i| i.any? {|k, v| v == "cool"}}
end

def organize_schools(schools)
  locations = {}
  schools.collect {|k,v| locations[v[:location]] = []}
  locations.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator name_arr
    name_arr.map do |name|
        badge_maker name
    end
end

def assign_rooms name_arr
    name_arr.map.with_index do |speaker, i| 
        "Hello, #{speaker}! You'll be assigned to room #{i+1}!"
    end
end

def printer name_arr
    batch_badge_creator(name_arr).each do |person|
        puts person
    end
    assign_rooms(name_arr).each {|person| puts person}
    
end
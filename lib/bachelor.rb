def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    if hash.values.include?("Winner")
      return hash["name"].split(' ')[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, cont_arr|
    cont_arr.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, cont_arr|
    cont_arr.each do |hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, count_arr|
    count_arr.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  data[season].each do |hash|
    age_total += hash["age"].to_f
  end
  (age_total / data[season].length).round
end

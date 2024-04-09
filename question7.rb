def group_by_name (arr_hash)
  grouped_data = arr_hash.group_by { |person| person[:age] }.map do |age, people|
    { age: age, names: people.map { |person| person[:name] } }
  end
end

p group_by_name([{name: 'John', age: 26}, {name: 'charlie', age:28}, {name: 'sophie', age:28}, {name: 'peter', age:26}])

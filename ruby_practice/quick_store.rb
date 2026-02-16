customer_1_order = ["large coke", "large burger", "large fries", "medium juice"]
revenue_for_january_to_march = [800, 638, 563]
available_item = {
  "large coke" => "yes", 
  "large burger" => "yes",
  "large fries" => "no",
  "medium juice" => "no",
}

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end


# p revenue_for_january_to_march.reduce { |sum, number| sum + number}

# p available_item.filter { |item, availability| availability == "yes" }

# p customer_1_order.filter {|item| item.include?("large")}

# p customer_1_order.map { |order| order.gsub("large", "medium")}

# p revenue_for_january_to_march.map { |monthly_revenue| monthly_revenue - 400 }


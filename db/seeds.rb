3.times do |items|
  Item.create!(
      primary: "#{items}",
      main_image: "http://via.placeholder.com/200x200",
      details: "details",
      price: "129.99",
      brand: "Samsung",      
      item_id: "item_#{items}",
      category: "Monitor"
    )  
  end
puts "3 items created"

3.times do |items|
  Item.create!(
      primary: "#{items}",
      main_image: "http://via.placeholder.com/200x200",
      details: "details",
      price: "349.99",
      brand: "Intel",      
      item_id: "item_#{items}",
      category: "CPUs"
    )  
  end
puts "3 items created"

3.times do |items|
  Item.create!(
      primary: "#{items}",
      main_image: "http://via.placeholder.com/200x200",
      details: "details",
      price: "39.99",
      brand: "Logitech",      
      item_id: "item_#{items}",
      category: "keyboard"
    )  
  end
puts "3 items created"

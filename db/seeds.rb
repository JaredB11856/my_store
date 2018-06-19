9.times do |items|
  Item.create!(
      primary: "#{items}",
      main_image: "http://via.placeholder.com/400x400",
      details: "details",
      price: "149.99",
      brand: "Samxung",      
      item_id: "item_#{items}",
      category: "Monitor"
    )  
  end
puts "9 items created"

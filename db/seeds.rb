9.times do |items|
  Item.create!(
      primary: "#{items}",
      main_image: "http://via.placeholder.com/400x400",
      details: "Lorem ipsum dolor sit amet, 
      consectetur adipiscing elit, sed do eiusmod",
      price: "9.99",
      brand: "Niki"
    )  
  end
puts "9 items created"

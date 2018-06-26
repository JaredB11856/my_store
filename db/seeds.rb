3.times do |items|
  Item.create!(
      primary: "#{items}",
      main_image: "http://www.freepngimg.com/thumb/monitor/2-monitor-transparent-lcd-png-image-thumb.png",
      details: "details",
      price: "129.99",
      brand: "Samsung",      
      item_id: "item_#{items}",
      category: "Monitors".downcase
    )  
  end
puts "3 items created"

3.times do |items|
  Item.create!(
      primary: "#{items}",
      main_image: "http://www.freepngimg.com/thumb/cpu/34178-5-cpu-processor-transparent-background-thumb.png",
      details: "details",
      price: "349.99",
      brand: "Intel",      
      item_id: "item_#{items}",
      category: "CPUs".downcase
    )  
  end
puts "3 items created"

3.times do |items|
  Item.create!(
      primary: "#{items}",
      main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
      details: "details",
      price: "39.99",
      brand: "Logitech",      
      item_id: "item_#{items}",
      category: "Keyboards".downcase
    )  
  end
puts "3 items created"

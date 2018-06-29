3.times do |items|
  Item.create!(
      primary: "1920x1080",
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
      primary: "i7",
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
      primary: "Pro X",
      main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
      details: "details",
      price: "39.99",
      brand: "Logitech",      
      item_id: "item_#{items}",
      category: "Keyboards".downcase
    )  
  end
puts "3 items created"

Product.delete_all
Product.create! id: 1, name: "Banana", price: 0.49, active: true
Product.create! id: 2, name: "Apple", price: 0.29, active: true
Product.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
puts '3 Products created'
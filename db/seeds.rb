  Product.delete_all


  Product.create!(
      filter_primary: "1920x1080",
      main_image: "http://www.freepngimg.com/thumb/monitor/2-monitor-transparent-lcd-png-image-thumb.png",
      details: "details",
      price: "129.99",
      brand: "Samsung",      
      category: "Monitors".downcase,
      name: "MonitrX",
      id: 1,
      active: true,
      product_id: "product_1"
    )    

  Product.create!(
      filter_primary: "1920x1080",
      main_image: "http://www.freepngimg.com/thumb/monitor/2-monitor-transparent-lcd-png-image-thumb.png",
      details: "details",
      price: "129.99",
      brand: "Samsung",      
      category: "Monitors".downcase,
      name: "MonitrX",
      id: 2,
      active: true,
      product_id: "product_2"
    )    

  Product.create!(
      filter_primary: "1920x1080",
      main_image: "http://www.freepngimg.com/thumb/monitor/2-monitor-transparent-lcd-png-image-thumb.png",
      details: "details",
      price: "129.99",
      brand: "Samsung",      
      category: "Monitors".downcase,
      name: "MonitrX",
      id: 3,
      active: true,
      product_id: "product_3"
    )  

  Product.create!(
      filter_primary: "i7",
      main_image: "http://www.freepngimg.com/thumb/cpu/34178-5-cpu-processor-transparent-background-thumb.png",
      details: "details",
      price: "349.99",
      brand: "Intel",      
      category: "CPUs".downcase,
      name: "Core i7X",
      id: 4,
      active: true,
      product_id: "product_4"
    )   

  Product.create!(
      filter_primary: "i7",
      main_image: "http://www.freepngimg.com/thumb/cpu/34178-5-cpu-processor-transparent-background-thumb.png",
      details: "details",
      price: "349.99",
      brand: "Intel",      
      category: "CPUs".downcase,
      name: "Core i7X",
      id: 5,
      active: true,
      product_id: "product_5"
    )   

  Product.create!(
      filter_primary: "i7",
      main_image: "http://www.freepngimg.com/thumb/cpu/34178-5-cpu-processor-transparent-background-thumb.png",
      details: "details",
      price: "349.99",
      brand: "Intel",      
      category: "CPUs".downcase,
      name: "Core i7X",
      id: 6,
      active: true,
      product_id: "product_6"
    )  

  Product.create!(
      filter_primary: "Pro X",
      main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
      details: "details",
      price: "39.99",
      brand: "Logitech",      
      category: "Keyboards".downcase,
      name: "Core i7X",
      id: 7,
      active: true,
      product_id: "product_7"
    )  

  Product.create!(
      filter_primary: "Pro X",
      main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
      details: "details",
      price: "39.99",
      brand: "Logitech",      
      category: "Keyboards".downcase,
      name: "Core i7X",
      id: 8,
      active: true,
      product_id: "product_8"
    )  

  Product.create!(
      filter_primary: "Pro X",
      main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
      details: "details",
      price: "39.99",
      brand: "Logitech",      
      category: "Keyboards".downcase,
      name: "Core i7X",
      id: 9,
      active: true,
      product_id: "product_9"
    )  

puts "3 products created"

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
puts '3 Products created'



Product.delete_all

User.create!(
    email: "test@test.com",
    password: "123456",
    name: "test",
    role: "user"
  )
User.create!(
    email: "admin@test.com",
    password: "123456",
    name: "admin",
    role: "admin"
  )
puts "test user created"

Product.create!(
    filter_primary: "1920x1080",
    main_image: "http://www.freepngimg.com/thumb/monitor/2-monitor-transparent-lcd-png-image-thumb.png",
    details: "details",
    price: "129.99",
    brand: "Samsung",      
    category: "Monitors".downcase,
    name: "MonitorX",
    id: 1,
    active: true,
    product_id: "product_1",
    quantity: "10"
  )    

Product.create!(
    filter_primary: "1920x1080",
    main_image: "http://www.freepngimg.com/thumb/monitor/2-monitor-transparent-lcd-png-image-thumb.png",
    details: "details",
    price: "129.99",
    brand: "Samsung",      
    category: "Monitors".downcase,
    name: "MonitorX",
    id: 2,
    active: true,
    product_id: "product_2",
    quantity: "10"
  )    

Product.create!(
    filter_primary: "1920x1080",
    main_image: "http://www.freepngimg.com/thumb/monitor/2-monitor-transparent-lcd-png-image-thumb.png",
    details: "details",
    price: "129.99",
    brand: "Samsung",      
    category: "Monitors".downcase,
    name: "MonitorX",
    id: 3,
    active: true,
    product_id: "product_3",
    quantity: "10"
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
    product_id: "product_4",
    quantity: "10"
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
    product_id: "product_5",
    quantity: "10"
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
    product_id: "product_6",
    quantity: "10"
  )  

Product.create!(
    filter_primary: "Pro X",
    main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
    details: "details",
    price: "39.99",
    brand: "Logitech",      
    category: "Keyboards".downcase,
    name: "Logitech 7X",
    id: 7,
    active: true,
    product_id: "product_7",
    quantity: "10"
  )  

Product.create!(
    filter_primary: "Pro X",
    main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
    details: "details",
    price: "39.99",
    brand: "Logitech",      
    category: "Keyboards".downcase,
    name: "Logitech 7X",
    id: 8,
    active: true,
    product_id: "product_8",
    quantity: "10"
  )  

Product.create!(
    filter_primary: "Pro X",
    main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
    details: "details",
    price: "39.99",
    brand: "Logitech",      
    category: "Keyboards".downcase,
    name: "Logitech 7X",
    id: 9,
    active: true,
    product_id: "product_9",
    quantity: "10"
  )  

puts '9 Products created'


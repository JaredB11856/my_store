


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
    product_id: "product_1"
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
    product_id: "product_2"
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
    name: "Logitech 7X",
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
    name: "Logitech 7X",
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
    name: "Logitech 7X",
    id: 9,
    active: true,
    product_id: "product_9"
  )  

puts "3 products created"

3.times do |invoice|
  User.last.invoices.create!(
      name: "Invoice #{invoice + 1 }",
      tracking: "1Z9Y97F0YN0112988#{invoice}",
      total: "1#{invoice}0"

    )
end
puts "3 Invoices created"  

3.times do |address|
  ShippingAddress.create!(
      name: "Jared Brown", 
      address_line_1:"1#{address}000 W 1800 N", 
      address_line_2: "Po Box #{address}23", 
      city: "Somewhere", 
      state: "ID", 
      zip_code: "83440",
      invoice_id: Invoice.last.id,      
   )
  ShippingAddress.last.update!(shipping_address_id: "#{ShippingAddress.last.id}") 
end
puts "3 Shipping addresses created" 

3.times do |address|
  BillingInformation.create!(
      name: "Jared Brown", 
      address_line_1:"1#{address}000 W 1800 N", 
      address_line_2: "Po Box #{address}23", 
      city: "Somewhere", 
      state: "ID", 
      zip_code: "83440",
      cc_type: "Visa",
      cc_last_four: "1234",
      invoice_id: Invoice.last.id
   )
end
puts "3 Billing informations created" 


OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
puts '3 Products created'


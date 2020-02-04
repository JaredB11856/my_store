Product.delete_all

User.create!(
    email: "test@test.com",
    password: "123456",
    name: "test",
    role: "registered_user"
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
    main_image: "http://placehold.it/400x400",
    details: "Duis pharetra gravida ante in porttitor. Nunc imperdiet efficitur diam vitae maximus. Proin vel suscipit dui. Quisque a nibh ac mi luctus luctus non id sem. Proin quis nulla eget odio commodo consectetur rutrum ut urna. Fusce vitae venenatis diam, quis ornare nibh. Aenean ornare eros vel sapien efficitur, a consequat diam sagittis. Morbi lorem nulla, gravida vitae consectetur vitae, blandit a mi. Suspendisse fermentum egestas nisi mattis vulputate. Donec vel consectetur magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vulputate et neque ac pretium. Phasellus ullamcorper imperdiet lectus, ut tempor dui feugiat vel. Suspendisse potenti. Aliquam in eros nulla.",
    price: "129.99",
    brand: "Samsung",      
    category: "Monitors".downcase,
    name: "Monitor 1",
    id: 1,
    active: true,
    upc: "001",
    quantity: "10"
  )    

Product.create!(
    filter_primary: "1920x1080",
    main_image: "http://www.freepngimg.com/thumb/monitor/2-monitor-transparent-lcd-png-image-thumb.png",
    details: "Duis pharetra gravida ante in porttitor. Nunc imperdiet efficitur diam vitae maximus. Proin vel suscipit dui. Quisque a nibh ac mi luctus luctus non id sem. Proin quis nulla eget odio commodo consectetur rutrum ut urna. Fusce vitae venenatis diam, quis ornare nibh. Aenean ornare eros vel sapien efficitur, a consequat diam sagittis. Morbi lorem nulla, gravida vitae consectetur vitae, blandit a mi. Suspendisse fermentum egestas nisi mattis vulputate. Donec vel consectetur magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vulputate et neque ac pretium. Phasellus ullamcorper imperdiet lectus, ut tempor dui feugiat vel. Suspendisse potenti. Aliquam in eros nulla.",
    price: "129.99",
    brand: "Samsung",      
    category: "Monitors".downcase,
    name: "Monitor 2",
    id: 2,
    active: true,
    upc: "002",
    quantity: "10"
  )    

Product.create!(
    filter_primary: "1920x1080",
    main_image: "http://www.freepngimg.com/thumb/monitor/2-monitor-transparent-lcd-png-image-thumb.png",
    details: "Duis pharetra gravida ante in porttitor. Nunc imperdiet efficitur diam vitae maximus. Proin vel suscipit dui. Quisque a nibh ac mi luctus luctus non id sem. Proin quis nulla eget odio commodo consectetur rutrum ut urna. Fusce vitae venenatis diam, quis ornare nibh. Aenean ornare eros vel sapien efficitur, a consequat diam sagittis. Morbi lorem nulla, gravida vitae consectetur vitae, blandit a mi. Suspendisse fermentum egestas nisi mattis vulputate. Donec vel consectetur magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vulputate et neque ac pretium. Phasellus ullamcorper imperdiet lectus, ut tempor dui feugiat vel. Suspendisse potenti. Aliquam in eros nulla.",
    price: "129.99",
    brand: "Samsung",      
    category: "Monitors".downcase,
    name: "Monitor 3",
    id: 3,
    active: true,
    upc: "003",
    quantity: "10"
  )  

Product.create!(
    filter_primary: "i7",
    main_image: "http://www.freepngimg.com/thumb/cpu/34178-5-cpu-processor-transparent-background-thumb.png",
    details: "Duis pharetra gravida ante in porttitor. Nunc imperdiet efficitur diam vitae maximus. Proin vel suscipit dui. Quisque a nibh ac mi luctus luctus non id sem. Proin quis nulla eget odio commodo consectetur rutrum ut urna. Fusce vitae venenatis diam, quis ornare nibh. Aenean ornare eros vel sapien efficitur, a consequat diam sagittis. Morbi lorem nulla, gravida vitae consectetur vitae, blandit a mi. Suspendisse fermentum egestas nisi mattis vulputate. Donec vel consectetur magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vulputate et neque ac pretium. Phasellus ullamcorper imperdiet lectus, ut tempor dui feugiat vel. Suspendisse potenti. Aliquam in eros nulla.",
    price: "349.99",
    brand: "Intel",      
    category: "CPUs".downcase,
    name: "Core i7",
    id: 4,
    active: true,
    upc: "004",
    quantity: "10"
  )   

Product.create!(
    filter_primary: "i7",
    main_image: "http://www.freepngimg.com/thumb/cpu/34178-5-cpu-processor-transparent-background-thumb.png",
    details: "Duis pharetra gravida ante in porttitor. Nunc imperdiet efficitur diam vitae maximus. Proin vel suscipit dui. Quisque a nibh ac mi luctus luctus non id sem. Proin quis nulla eget odio commodo consectetur rutrum ut urna. Fusce vitae venenatis diam, quis ornare nibh. Aenean ornare eros vel sapien efficitur, a consequat diam sagittis. Morbi lorem nulla, gravida vitae consectetur vitae, blandit a mi. Suspendisse fermentum egestas nisi mattis vulputate. Donec vel consectetur magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vulputate et neque ac pretium. Phasellus ullamcorper imperdiet lectus, ut tempor dui feugiat vel. Suspendisse potenti. Aliquam in eros nulla.",
    price: "349.99",
    brand: "Intel",      
    category: "CPUs".downcase,
    name: "Core i7 2",
    id: 5,
    active: true,
    upc: "005",
    quantity: "10"
  )   

Product.create!(
    filter_primary: "i7",
    main_image: "http://www.freepngimg.com/thumb/cpu/34178-5-cpu-processor-transparent-background-thumb.png",
    details: "Duis pharetra gravida ante in porttitor. Nunc imperdiet efficitur diam vitae maximus. Proin vel suscipit dui. Quisque a nibh ac mi luctus luctus non id sem. Proin quis nulla eget odio commodo consectetur rutrum ut urna. Fusce vitae venenatis diam, quis ornare nibh. Aenean ornare eros vel sapien efficitur, a consequat diam sagittis. Morbi lorem nulla, gravida vitae consectetur vitae, blandit a mi. Suspendisse fermentum egestas nisi mattis vulputate. Donec vel consectetur magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vulputate et neque ac pretium. Phasellus ullamcorper imperdiet lectus, ut tempor dui feugiat vel. Suspendisse potenti. Aliquam in eros nulla.",
    price: "349.99",
    brand: "Intel",      
    category: "CPUs".downcase,
    name: "Core i7 3",
    id: 6,
    active: true,
    upc: "006",
    quantity: "10"
  )  

Product.create!(
    filter_primary: "Pro X",
    main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
    details: "Duis pharetra gravida ante in porttitor. Nunc imperdiet efficitur diam vitae maximus. Proin vel suscipit dui. Quisque a nibh ac mi luctus luctus non id sem. Proin quis nulla eget odio commodo consectetur rutrum ut urna. Fusce vitae venenatis diam, quis ornare nibh. Aenean ornare eros vel sapien efficitur, a consequat diam sagittis. Morbi lorem nulla, gravida vitae consectetur vitae, blandit a mi. Suspendisse fermentum egestas nisi mattis vulputate. Donec vel consectetur magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vulputate et neque ac pretium. Phasellus ullamcorper imperdiet lectus, ut tempor dui feugiat vel. Suspendisse potenti. Aliquam in eros nulla.",
    price: "39.99",
    brand: "Logitech",      
    category: "Keyboards".downcase,
    name: "Logitech 1",
    id: 7,
    active: true,
    upc: "007",
    quantity: "10"
  )  

Product.create!(
    filter_primary: "Pro X",
    main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
    details: "Duis pharetra gravida ante in porttitor. Nunc imperdiet efficitur diam vitae maximus. Proin vel suscipit dui. Quisque a nibh ac mi luctus luctus non id sem. Proin quis nulla eget odio commodo consectetur rutrum ut urna. Fusce vitae venenatis diam, quis ornare nibh. Aenean ornare eros vel sapien efficitur, a consequat diam sagittis. Morbi lorem nulla, gravida vitae consectetur vitae, blandit a mi. Suspendisse fermentum egestas nisi mattis vulputate. Donec vel consectetur magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vulputate et neque ac pretium. Phasellus ullamcorper imperdiet lectus, ut tempor dui feugiat vel. Suspendisse potenti. Aliquam in eros nulla.",
    price: "39.99",
    brand: "Logitech",      
    category: "Keyboards".downcase,
    name: "Logitech 2",
    id: 8,
    active: true,
    upc: "008",
    quantity: "10"
  )  

Product.create!(
    filter_primary: "Pro X",
    main_image: "http://www.freepngimg.com/thumb/keyboard/9-2-keyboard-png-image-thumb.png",
    details: "Duis pharetra gravida ante in porttitor. Nunc imperdiet efficitur diam vitae maximus. Proin vel suscipit dui. Quisque a nibh ac mi luctus luctus non id sem. Proin quis nulla eget odio commodo consectetur rutrum ut urna. Fusce vitae venenatis diam, quis ornare nibh. Aenean ornare eros vel sapien efficitur, a consequat diam sagittis. Morbi lorem nulla, gravida vitae consectetur vitae, blandit a mi. Suspendisse fermentum egestas nisi mattis vulputate. Donec vel consectetur magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vulputate et neque ac pretium. Phasellus ullamcorper imperdiet lectus, ut tempor dui feugiat vel. Suspendisse potenti. Aliquam in eros nulla.",
    price: "39.99",
    brand: "Logitech",      
    category: "Keyboards".downcase,
    name: "Logitech 3",
    id: 9,
    active: true,
    upc: "009",
    quantity: "10"
  )  

puts '9 Products created'


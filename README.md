## My Store

Devise
Bootsrap

##Add pages
Make the homepage have deals and package stuff instead of the regular item layout.

##TODO
Change item to product, like item_id to product_id. And in cases where it makes more sense.
Add item_id rules:
 no spaces 
 no special characters

model/item.rb
items/_form.erb
controller/application_controller.rb Add Devise stuff to own devise_controller.rb 
/items_controller make it say @item.name instead of item_id @page_title = ("My Store| " + @item.item_id)
/items_contorller #@seo_keywords = @item.
layout/application



new home


<div class="container portfolio-container">
    <div class="row">
        <div class="col-md-7">
            <%= image_tag portfolio_img(@portfolio_item.main_image, 'main'), width: '100%' %>
        </div>
        
        <div class="col-md-5">
            <h1><%= @portfolio_item.title %></h1>
            
            <hr>

            <em><%= @portfolio_item.subtitle %></em>
            
            <p><%= @portfolio_item.body %></p>
            
            <hr>
            
            <h2>Technologies Used:</h2>
            
            <% @portfolio_item.technologies.each do |t| %>
            <p><%= t.name %></p>
            <% end %>
            
            <% if logged_in?(:site_admin) %>
                <div>
                    <%= link_to "Edit Item", edit_portfolio_path(@portfolio_item), class: 'btn btn-warning' %>
                </div>
            <% end %>
            </div>
        </div>
    </div>
</div>

Old Home

<h2>User Nav</h2>
  <div>Cart</div>
  <div>User</div>  
<hr>

<h2>Filter Menu</h2>
  <div>Primary</div>
  <div>Secondary</div>
<hr>
<div class="container portfolio-container">
    <div class="row">
        <div class="col-md-6"
        <% @items.each do |item| %>
          <p><%= link_to (image_tag item.main_image ), item_path(item) unless item.main_image.nil?  %></p>
          <p><%= item.brand %> </p>
          <p><%= item.category %> </p>
          <p><%= item.details %> </p>
          <p><%= item.price %> </p>

        <% end %>       
        
    </div>
</div>

Original Filter Menu
<% filter = Array.new %>
<% @items.each do |item| %>                     
  <% filter.push item.brand %>  
  <% filter.push item.primary %>                     
  <% filter.uniq! %>                        
<% end %> 

<% filter.each do |x| %>
  <div class="col-md-3">
    <%  %>
    <%= link_to "#{x}"  %>  
  </div>
<% end %>


Application Layout OLD
<!DOCTYPE html>
<html>
  <head>
    <title><%= @page_title %></title>
    <%= csrf_meta_tags %>

    <meta name="keywords" content="<%= @seo_keywords %>" />

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>    
    <%= render "shared/application_nav" %>
    <p class="notice"><%= notice %></p>
    <p class="alert"><%= alert %></p>

    

    <%= yield %>

    <%= render "shared/application_footer" %>

    <% if session[:source] %>
     <p>Thanks for visiting me from <%= session[:source] %></p>
    <% end %>
  </body>
</html>

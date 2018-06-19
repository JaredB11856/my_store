## My Store

Devise
Bootsrap

##TODO
Add item_id rules:
 no spaces 
 no special characters

model/item.rb
items/_form.erb



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
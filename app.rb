require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end
    
    ####My solution works fine, but they want a very specific output for the page.  I could create a new hash or array and iterate that way, but it's not worth the effort.
    # post '/team' do
    #     @parameters = {}
    #     @parameters = params
    #     erb :team
    # end

    # <%@parameters.each do |key, value| %>
    #     <h2><%="#{key}: #{value}"%></h2>
    #     <% end %>

    post '/team' do
        @name = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @pf = params[:pf]
        @sf = params[:sf]
        @c = params[:c]
        erb :team
      end
end

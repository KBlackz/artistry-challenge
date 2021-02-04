Rails.application.routes.draw do
    #Artist
    get "/artists", to: "artists#index", as: "artists"
    get "/artists/:id/new", to: "artists#new", as: "new_artist"
    post "/artists", to: "artists#create"
    get "/artists/:id", to: "artists#show", as: "artist"
    get "/artists/:id/edit", to: "artists#edit", as: "edit_artist"
    patch "/artist/:id", to: "artists#update"
    delete "/artist/:id", to: "artists#destroy"

    #Instrument

    get "/instruments", to: "instruments#index", as: "instruments"
    get "/instruments/:id/new", to: "instruments#new", as: "new_instrument"
    post "/instruments", to: "instruments#create"
    get "/instruments/:id", to: "instruments#show", as: "instrument"
    get "/instruments/:id/edit", to: "instruments#edit", as: "edit_instrument"
    patch "/instrument/:id", to: "instruments#update"
    delete "/instrument/:id", to: "instruments#destroy"

    #log

    get "/logs/:id/new", to: "logs#new", as: "new_log"
    post "/logs", to: "logs#create"
    get "/logs/:id", to: "logs#show", as: "log"
    get "/logs/:id/edit", to: "logs#edit", as: "edit_log"
    patch "/log/:id", to: "logs#update"
    delete "/log/:id", to: "logs#destroy"
  

  
end

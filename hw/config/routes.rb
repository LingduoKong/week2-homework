Rails.application.routes.draw do

  get("/greet",{:controller => 'greet', :action => 'hello'})

  get("/contact",{:controller => 'contact', :action => 'fill'})

  get("/contact_submitted",{:controller => 'contactsubmitted', :action => 'submitted'})

  get("/rps", {:controller => 'rps', :action => 'play'})

  get("/rps_play", {:controller => 'rpsplay', :action => 'getResult'})

  get("/dice", {:controller => 'intro', :action => 'intr'})

  get("/dice/roll", {:controller => 'play', :action => 'roll'})

end

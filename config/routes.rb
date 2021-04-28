Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors/eldest", {:controller => "directors", :action => "wisest"})
  get("/directors", {:controller => "directors", :action => "index"})
end

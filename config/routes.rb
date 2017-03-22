Rails.application.routes.draw do
  get "/books", controller: "books", action: "index"

  get "/books/new", controller: "books", action: "new"

  post "/books", controller: "books", action: "create"

  get "/books/:id/edit", controller: "books", action: "edit"

  get "/books/:id", controller: "books", action: "find"

  patch "/books/:id", controller: "books", action: "update"

  delete "/books/:id", controller: "books", action: "delete"
end

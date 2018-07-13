defmodule SazeracWeb.Schema.AccountTypes do
  use Absinthe.Schema.Notation

  @desc "A user"
  object :user do
    field :id, :id # clients can get the user id
    field :name, :string # clients can also get the name field
  end
end

defmodule Rocketpay.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "users" do
    field :name, :string
    field :age, :integer
    field :email, :string
    field :password_hash, :string
    field :nickname, :string
  end
end

defmodule PsqlDemo.Schema.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecto.Changeset
  alias PsqlDemo.Schema.{Post, User}

  @type t :: %User{}

  schema "users" do
    field :first_name, :string
    field :last_name, :string

    has_many :posts, Post

    timestamps()
  end

  @spec new(map()) :: Changeset.t()
  def new(params) do
    changeset(%User{}, params)
  end

  @spec changeset(User.t(), map()) :: Changeset.t()
  def changeset(struct, params) do
    struct
    |> cast(params, [:first_name, :last_name])
    |> validate_required([:first_name])
  end
end

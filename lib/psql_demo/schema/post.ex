defmodule PsqlDemo.Schema.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecto.Changeset
  alias PsqlDemo.Schema.{User, Post}

  @type t :: %Post{}

  schema "posts" do
    field :title, :string
    field :body, :string

    belongs_to :user, User

    timestamps()
  end

  @spec new(map()) :: Changeset.t()
  def new(params) do
    changeset(%__MODULE__{}, params)
  end

  @spec changeset(Post.t(), map()) :: Changeset.t()
  def changeset(struct, params) do
    struct
    |> cast(params, [:title, :body, :user_id])
    |> validate_required([:title, :body, :user_id])
    |> foreign_key_constraint(:user_id)
  end
end

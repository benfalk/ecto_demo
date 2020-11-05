defmodule PsqlDemo.Query.UserQuery do
  import Ecto.Query, only: [from: 2]
  alias PsqlDemo.Schema.{User, Post}

  def users_with_post_counts do
    from(
      u in User,
      left_join:
        p in subquery(
          from(
            p in Post,
            group_by: p.user_id,
            select: %{user_id: p.user_id, count: count(p.user_id)}
          )
        ),
      on: u.id == p.user_id,
      select: %{user: u, post_count: p.count}
    )
  end
end

ActiveRecord::Schema.define(version: 20150726150946) do

  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string   "content"
    t.boolean   "is_published"
  end

  create_table "comments", force: :cascade do |t|
    t.string  "body"
  end

  add_foreign_key "posts"
end

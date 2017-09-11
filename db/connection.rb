ApplicationRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "checkpoint_rails"
)

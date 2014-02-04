INTEGRATION_TASKS = %w(
  jumpup:heroku:start
  jumpup:start
  jumpup:bundle_install
  db:migrate
  spec
  jumpup:coverage_verify
  jumpup:finish
  jumpup:heroku:finish
)

# frozen_string_literal: true

task :build_ant_design do
  on roles(:app) do
    within release_path do
      # node_modules
      execute :rm, '-rf node_modules'
      execute :yarn
      # generate dist
      execute :rm, '-rf dist'
      execute :yarn, 'build'
      # replace public with dist
      execute :rm, '-rf public'
      execute :mv, 'dist', 'public'
      # remove index.html
      execute :find, 'public -name index.html -exec rm {} \;'
    end
  end
end

# CODE OPTIMIZATION

The best way to write a code called as code optimization. The best ways is ruby styleguide, rails styleguide, code reusability, without code duplication, without security vulnerabilities and without N+1 queries. The above each and every best ways are have some libraries.

# Installation

Using Bundler:

    group :development do
      gem 'brakeman' # Security Analysis Tool
      gem 'bullet' # Find N+1 Queries
      gem 'overcommit' # Manage and configure Git hooks.
      gem 'rails_best_practices' # Rails Code Analysis Tool
      gem 'rack-mini-profiler' #Query Loading
      gem 'rubocop' # Ruby Static Code Analyser #https://github.com/rubocop-hq/rubocop/edit/master/config/default.yml
      gem 'rubycritic' # Code Reusability and Find Code duplications#
    end

# OVERCOMMIT(Git Hook Manager)

1.  bundle install
2.  overcommit --sign
3.  git add file1,file2,file3
4.  git commit -m "Test message"
5.  Please check below messages are coming or not

Running pre-commit hooks: Example

    Analyze with RailsBestPractices..................[RailsBestPractices] OK
    Analyze with RuboCop........................................[RuboCop] OK
    ✓ All pre-commit hooks passed
    Running commit-msg hooks
    Check text width..........................................[TextWidth] OK
    Check subject capitalization.....................[CapitalizedSubject] WARNING
    
    Subject should start with a capital letter
    Check subject line................................[SingleLineSubject] OK
    Check for trailing periods in subject................[TrailingPeriod] OK
 
    ⚠ All commit-msg hooks passed, but with warnings

# RUBOCOP(STATIC CODE ANALYSIS)

1. `rubocop .` (It will scan whole projects *.rb) 
2. `rubocop file_path` (Analyse only particular .rb file).  
3.  How to auto_correct particular file?

     `rubocop file_path ----safe-auto-correct`


# CODE OPTIMIZATION

The best way to write a code called as code optimization. The best ways is ruby styleguide, rails styleguide, code reusability, without code duplication, without security vulnerabilities and without N+1 queries. The above each and every best ways are have some libraries.

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

# BULLET(N+1 Query)
1.Please config this for below `config/environments/development.rb`

     config.after_initialize do
        Bullet.enable = true
        Bullet.alert = true
        Bullet.bullet_logger = true
        Bullet.console = true
        Bullet.growl = true
        Bullet.rails_logger = true
      end
      
# BRAKEMAN(SECURITY SCANNER FOR ROR APPLICATION)
1. Please chack all useful commands of brakeman

       brakeman
       brakeman -o output_filename.html [It will return output for CSV,JSON OR HTML]
       brakeman -t SQL,ValidationRegex [Only run a certain set of tests]
       brakeman -x DefaultRoutes,Redirect [Can skip particular validation]
       brakeman --skip-files file1,/path1/,path2/ [Do skip certain file OR Directory]
       brakeman --compare old_report.json [We can compare old results with new results]
       Warning Types: https://github.com/presidentbeef/brakeman/tree/master/docs/warning_types
       
# Rack Mini profiler(Middleware that displays speed badge)
1. Middleware that displays speed badge for every html page
2. Designed to work both in production and in development.

# Rails Best Practises(Rails Code Analysis Tool)
1. Please check the useful commands
2. It will check rails principle COC(convention over configuration) and DRY(Dont repeat yourself)

        rails_best_practises --help
        rails_best_practises .

# RubyCritic(Ruby Code quality reporter)
1.Code Reusability and Find Code duplications.This is a combination of Flay,Flog and Reek.

Reek - Reek is a tool that examines Ruby classes, modules and methods and reports any Code Smells it finds.
Flay - Flay analyzes code for structural similarities.
Flog - Flog reports the most tortured code in an easy to read pain report

    rubycritic
    rubycritic lib/foo.rb
    (OR)
    reek 
    flay
    flog


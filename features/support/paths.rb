# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'
    
    when /^the index page for test_questions/i
      '/test_questions'
    
    when /^Sign up$/
      signup_path
      
    when /^the New Question Page$/  then '/questions/new'
    when /^the Question List Page$/  then '/questions'
      
    when /^the Edit Questions Page$/  then '/questions'  
      
    when /^the content declaration page of "(.*)"$/ 
    #then '/questions/#{$1}'
    questions_path Question.find_by_id($1)

    when /^the edit page of "(.*)"$/
      edit_question_path Question.find_by_id($1)

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)

class Template < ActiveRecord::Base
  attr_accessible :title, :body

  def replace_body_attributes(user)
    template_body = body
    template_body = template_body.gsub('<first_name>', "aaron")
    template_body = template_body.gsub('<last_name>', "zipagan")
    puts template_body
    return template_body.strip
  end
end
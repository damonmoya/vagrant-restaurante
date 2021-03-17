require 'rails_helper'

RSpec.describe "hello_world/index.html.erb", type: :view do
  it 'displays index page' do
    render
    expect(rendered).to have_content 'Hello, world!'
  end
end

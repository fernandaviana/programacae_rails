require 'spec_helper'

describe "cursos/edit" do
  before(:each) do
    @curso = assign(:curso, stub_model(Curso,
      :nomecurso => "MyString",
      :numeroperiodo => 1
    ))
  end

  it "renders the edit curso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursos_path(@curso), :method => "post" do
      assert_select "input#curso_nomecurso", :name => "curso[nomecurso]"
      assert_select "input#curso_numeroperiodo", :name => "curso[numeroperiodo]"
    end
  end
end

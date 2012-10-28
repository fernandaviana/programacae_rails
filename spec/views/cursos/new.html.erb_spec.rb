require 'spec_helper'

describe "cursos/new" do
  before(:each) do
    assign(:curso, stub_model(Curso,
      :nomecurso => "MyString",
      :numeroperiodo => 1
    ).as_new_record)
  end

  it "renders new curso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursos_path, :method => "post" do
      assert_select "input#curso_nomecurso", :name => "curso[nomecurso]"
      assert_select "input#curso_numeroperiodo", :name => "curso[numeroperiodo]"
    end
  end
end

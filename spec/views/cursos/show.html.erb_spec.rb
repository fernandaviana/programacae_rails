require 'spec_helper'

describe "cursos/show" do
  before(:each) do
    @curso = assign(:curso, stub_model(Curso,
      :nomecurso => "Nomecurso",
      :numeroperiodo => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomecurso/)
    rendered.should match(/1/)
  end
end

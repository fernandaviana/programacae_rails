require 'spec_helper'

describe "cursos/index" do
  before(:each) do
    assign(:cursos, [
      stub_model(Curso,
        :nomecurso => "Nomecurso",
        :numeroperiodo => 1
      ),
      stub_model(Curso,
        :nomecurso => "Nomecurso",
        :numeroperiodo => 1
      )
    ])
  end

  it "renders a list of cursos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomecurso".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

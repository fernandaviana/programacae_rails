# coding: utf-8

 require 'spec_helper'

 feature 'gerenciar bolsista' do

 scenario 'incluir bolsista' do #, :javascript => true  do

  curso = FactoryGirl.create(:curso, :nomecurso => 'Ensinomédio')

    visit new_bolsista_path
 
    preencher_e_verificar_bolsista

  end

  
   scenario 'alterar bolsista' do #, :javascript => true  do

    curso = FactoryGirl.create(:curso, :nomecurso => 'Ensinomedio')
    
     bolsista = FactoryGirl.create(:bolsista,:curso => curso)

     visit edit_bolsista_path(bolsista)
     
      preencher_e_verificar_bolsista

 	

end

 	

 scenario 'excluir bolsista' do #, :javascript => true  do
	

  curso = FactoryGirl.create(:curso, :nomecurso => 'Ensinomédio')
 
   bolsista = FactoryGirl.create(:bolsista,:curso => curso)

   visit bolsistas_path

   click_link 'Excluir'
	

 end


  def preencher_e_verificar_bolsista

     
     fill_in 'Matricula', :with => "222.222"
     fill_in 'NumeroPasta', :with => 5555
     fill_in 'NomeBolsista', :with => "Francisco"
     fill_in 'Endereço', :with => "Rua Dr.Beda"
     fill_in 'Bairro', :with => "Pq.rosário"
     fill_in 'Cidade', :with => "Campos"
     fill_in 'Estado', :with => "RJ"
     fill_in 'TelefoneResidencial', :with => "27223344"
     fill_in 'TelefoneCelular', :with => "98667788"
     fill_in 'Email', :with => "francisco@gmail.com"
     fill_in 'CPF', :with => "99880077"       
     fill_in 'RG', :with => "11009955"
     fill_in 'Situação', :with => "Ativo"
     fill_in 'NomeBanco', :with => "Brasil"
     fill_in 'NumeroAgencia', :with => "0005"
     fill_in 'NumeroConta', :with => "2345-3"
     fill_in 'SemestreInicialCurso', :with => 1
     fill_in 'AnoInicialCurso', :with => "2012"
     fill_in 'Observação', :with => " "



     select 'Ensinomedio', :on => 'curso'
 
     click_button 'Salvar'

    
    page.should have_content 'Matricula: 222.222'
    page.should have_content 'NumeroPasta: 5555'
    page.should have_content 'NomeBolsista: Francisco'
    page.should have_content 'Endereço: Rua Dr.Beda'
    page.should have_content 'Bairro:Pq. rosário'
    page.should have_content 'Cidade: Campos'
    page.should have_content 'Estado: RJ'
    page.should have_content 'TelefoneResidencial :27223344'
    page.should have_content 'TelefoneCelular: 98667788 '
    page.should have_content 'Email: francisco@gmail.com'
    page.should have_content 'CPF:99880077'
    page.should have_content 'RG:11009955'
    page.should have_content 'Situação: Ativo'
    page.should have_content 'NomeBanco: Brasil'
    page.should have_content 'NumeroAgencia: 0005'
    page.should have_content 'NumeroConta: 2345-3'
    page.should have_content 'SemestreInicialCurso : 1'
    page.should have_content 'AnoInicialCurso: 2012'
    page.should have_content 'Observação : '


    page.should have_content 'curso: Ensinomedio'


  end

end

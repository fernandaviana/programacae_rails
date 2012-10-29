# coding: utf-8

 require 'spec_helper'

 feature 'gerenciar bolsistao' do

 scenario 'incluir bolsistao' do #, :javascript => true  do

  curso = FactoryGirl.create(:curso, :nomecurso => 'Ensino medio')

    visit new_bolsistao_path
 
    preencher_e_verificar_bolsistao

  end

  
   scenario 'alterar bolsistao' do #, :javascript => true  do

    curso = FactoryGirl.create(:curso, :nomecurso => 'Ensino medio')
    
     bolsistao = FactoryGirl.create(:bolsistao,:curso => curso)

     visit edit_bolsistao_path(bolsistao)
     
      preencher_e_verificar_bolsistao

 	

end

 	

 scenario 'excluir bolsistao' do #, :javascript => true  do
	

  curso = FactoryGirl.create(:curso, :nomecurso => 'Ensino medio')
 
   bolsistao = FactoryGirl.create(:bolsistao,:curso => curso)

   visit bolsistaos_path

   click_link 'Excluir'
	

 end


  def preencher_e_verificar_bolsistao

     
     fill_in 'Matricula', :with => "222.222"
     fill_in 'NumeroPasta', :with => "5555"
     fill_in 'NomeBolsista', :with => "Francisco"
     fill_in 'Endereço', :with => "Rua Dr.Beda"
     fill_in 'Bairro', :with => "Pq rosario"
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
     fill_in 'Observação', :with => "Apto a bolsa"



     select 'Ensino medio', :on => 'curso'
 
     click_button 'Salvar'

    
    page.should have_content 'Matricula: 222.222'
    page.should have_content 'NumeroPasta: 5555'
    page.should have_content 'NomeBolsista: Francisco'
    page.should have_content 'Endereço: Rua Dr.Beda'
    page.should have_content 'Bairro: Pq rosario'
    page.should have_content 'Cidade: Campos'
    page.should have_content 'Estado: RJ'
    page.should have_content 'TelefoneResidencial: 27223344'
    page.should have_content 'TelefoneCelular: 98667788 '
    page.should have_content 'Email: francisco@gmail.com'
    page.should have_content 'CPF: 99880077'
    page.should have_content 'RG: 11009955'
    page.should have_content 'Situação: Ativo'
    page.should have_content 'NomeBanco: Brasil'
    page.should have_content 'NumeroAgencia: 0005'
    page.should have_content 'NumeroConta: 2345-3'
    page.should have_content 'SemestreInicialCurso: 1'
    page.should have_content 'AnoInicialCurso: 2012'
    page.should have_content 'Observação: Apto a bolsa'


    page.should have_content 'curso: Ensino medio'


  end

end

feature 'gerenciar Entrega' do

  before(:each) do
    @entrega = create(:entrega)
  end


  let(:dados) do {

    data: "2016-05-04",
    situacao: "caminho",
    pedido:"01"

 
   }
  end

  scenario 'incluir entrega' do #, :js => true  do
    visit new_entregas_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar entrega' do #, :js => true  do

    entrega = FactoryGirl.create(:entrega, pedido: @pedido)

    visit edit_entrega_path(entrega)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir entrega' do #, :js => true  do

    entrega = FactoryGirl.create(:entrega, pedido: @pedido)
    visit entregas_path    
    click_link 'Excluir'
  end

  def preencher(dados)

    fill_in 'Data', with: dados[:data]
    fill_in 'Situação', with: dados[:situacao]
    select dados[:cliente], from: "Cliente"
    

  end

  def verificar(dados)


    page.should have_content "Data: #{dados[:data]}"
    page.should have_content "Situação: #{dados[:situacao]}"
    page.should have_content "Pedido: #{dados[:pedido]}"

  end

end
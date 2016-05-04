
feature 'gerenciar Pedido' do

  before(:each) do
    @cliente = create(:cliente, nome: "Rafaela")
  end


  let(:dados) do {

    data: "04/05",
    situacao: "preparando",
    cliente: "Rafaela"
   }
  end

  scenario 'incluir pedido' do #, :js => true  do
    visit new_pedido_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar pedido' do #, :js => true  do

    pedido = FactoryGirl.create(:pedido, cliente: @cliente )

    visit edit_pedido_path(pedido)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir pedido' do #, :js => true  do

    pedido = FactoryGirl.create(:pedido, cliente: @cliente)
    visit pedidos_path    
    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Data', with: dados[:data:]
    fill_in 'Situação', with: dados[:situacao]
    select dados[:cliente], from: "Cliente"
    

  end

  def verificar(dados)

    page.should have_content "Data: #{dados[:data]}"
    page.should have_content "Situação: #{dados[:situacao]}"
    page.should have_content "Cliente: #{dados[:cliente]}"

  end

end
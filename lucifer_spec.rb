require "lucifer"
require "spec"
require "spec/mocks"

describe Lucifer, "Testando se a classe foi instanciada" do
  
  before do
    @lucifer = Lucifer.new
  end  
  it "iniciando classe" do
      @lucifer.should be_an_instance_of Lucifer
  end
end

describe Lucifer, "Imprimindo resposta para usuarios que nao ativaram o modo resposta" do
  before do
    @lucifer = Lucifer.new
  end
  it "deve trazer uma resposta do tipo string" do
     @lucifer.obter_resposta(1).class.should == String
   end
   
   it "deve ler uma resposta do arquivo respostas.txt" do        
        mock_file = mock('File')
        stub_respostas = ['Tira a mão suja deste teclado!\n','Vai procurar outra coisa para fazer otário!\n'] 
        stub_respostas[0].should_receive(:strip).and_return("Tira a mão suja deste teclado!")
        mock_file.should_receive(:readlines).and_return(stub_respostas)
        File.should_receive(:open).with('respostas.txt','r').and_return(mock_file)
        @lucifer.obter_resposta(0).should == 'Tira a mão suja deste teclado!'
   end
   
   it "deve ler uma segunda resposta" do        
        mock_file = mock('File')
        stub_respostas = ['Tira a mão suja deste teclado!\n','Vai procurar outra coisa para fazer otário!\n'] 
        stub_respostas[1].should_receive(:strip).and_return("Vai procurar outra coisa para fazer otário!")
        mock_file.should_receive(:readlines).and_return(stub_respostas)
        File.should_receive(:open).with('respostas.txt','r').and_return(mock_file)
        @lucifer.obter_resposta(1).should == 'Vai procurar outra coisa para fazer otário!'
   end
   
end
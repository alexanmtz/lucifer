require "lucifer"
require "spec"
require "spec/mocks"

describe Lucifer, "Testando se a classe foi instanciada" do
  
  before do
    @lucifer = Lucifer.new
  end  
  it "iniciando classe" do
      @lucifer.should be_an_instance_of(Lucifer)
  end
end

describe Lucifer, "Imprimindo resposta para usuarios que nao ativaram o modo resposta" do
  before do
    @lucifer = Lucifer.new
  end
  it "deve trazer uma resposta do tipo string" do
     @lucifer.obter_resposta.class.should == String
   end
   
   it "deve ler uma resposta do arquivo respostas.txt" do
        mock_file = mock('File')
        mock_file.should_receive(:read).and_return('resposta')
        File.should_receive(:open).with('respostas.txt','r').and_return(mock_file)
        
        @lucifer.obter_resposta.should == 'resposta'
   end
   
end
RSpec.describe 'CLI' do
  describe 'init' do
    specify do
      expect(`mashina init`).to include('export')
    end
  end

  xdescribe 'install' do
    specify do
      expect(`mashina install`).to eq('')
    end
  end
end

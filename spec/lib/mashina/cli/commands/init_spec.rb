RSpec.describe Mashina::CLI::Commands::Init, '.call' do
  subject { described_class.call }

  specify do
    expect(subject).to include('alias some_alias="command"')
    expect(subject).to include('export SOME_VARIABLE="true"')
  end
end

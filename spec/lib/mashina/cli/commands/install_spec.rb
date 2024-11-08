RSpec.describe Mashina::CLI::Commands::Install, '.call' do
  subject { described_class.call(package_name) }

  let(:package_name) { 'fzf' }

  xspecify do
    expect(subject).to eq(true)
  end
end

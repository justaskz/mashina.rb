RSpec.describe Mashina::Package::Install, '.call' do
  subject { described_class.call(package) }

  let(:package) { Mashina::Package.new('fzf', url, '0.55.0') }
  let(:url) { 'https://github.com/junegunn/fzf/releases/download/v0.55.0/fzf-0.55.0-darwin_arm64.tar.gz' }
  let(:package_download_dir) { '/tmp/mashina/fzf-0.55.0-darwin_arm64' }

  before do
    FileUtils.rm_rf(package_download_dir)
  end

  xspecify do
    expect(File).not_to exist(package_download_dir)
    expect(subject).to eq(true)
    expect(File).to exist(package_download_dir)
  end
end

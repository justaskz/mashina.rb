RSpec.describe Mashina::Package do
  subject { described_class.new(name, url, version) }

  let(:name) { 'fzf' }
  let(:url) { 'https://github.com/junegunn/fzf/releases/download/v0.55.0/fzf-0.55.0-darwin_arm64.tar.gz' }
  let(:version) { '0.55.0' }

  specify do
    # expect(subject.name).to eq('fzf')
    expect(subject.url).to eq(url)
    expect(subject.file_basename).to eq('fzf-0.55.0-darwin_arm64.tar.gz')
    expect(subject.file_name).to eq('fzf-0.55.0-darwin_arm64')
    expect(subject.file_extension).to eq('tar.gz')
    # expect(subject.version).to eq('0.55.0')
    # expect(subject.os).to eq('darwin')
    # expect(subject.arch).to eq('arm')
  end
end

RSpec.describe Mashina::Context do
  subject { described_class.new }

  specify do
    expect(subject.os_darwin?).to eq(true)
    expect(subject.os_linux?).to eq(false)
    expect(subject.arch_arm?).to eq(true)
    expect(subject.arch_x86?).to eq(false)
  end
end

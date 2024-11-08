class Mashina::Registry::Find
  def self.call(name:)
    new(name).run
  end

  attr_reader :name

  def initialize(name)
    @name = name.to_sym
  end

  def run
    url = registry.fetch(name)
    Mashina::Package.new(name, url, '0')
  end

  private

  def registry
    {
      fzf: 'https://github.com/junegunn/fzf/releases/download/v0.55.0/fzf-0.55.0-darwin_arm64.tar.gz',
      helix: 'https://github.com/helix-editor/helix/releases/download/24.07/helix-24.07-aarch64-macos.tar.xz',
    }
  end
end

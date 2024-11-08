class Mashina::CLI::Commands::Install
  include LeanInteractor

  initialize_call :package_name

  def run
    require 'fileutils'

    package = Mashina::Registry::Find.call(name: package_name)

    Mashina::Package::Install.call(package)

    true
  end

  private


  # def run
  #   package_name = package.to_sym
  #   return unless registry.keys.include?(package_name)

  #   repo_name = registry.fetch(package_name).fetch(:github)
  #   index = get_package_url(repo_name)

  #   true
  # end


  # def get_package_url(repo_name)
  #   repo_url = "https://api.github.com/repos/#{repo_name}/releases"
  #   response = Faraday.get(repo_url)
  #   data = JSON.parse(response.body, object_class: OpenStruct)

  #   data.reduce({}) do |index, release|
  #     release.assets.each do |asset|
  #       puts asset.browser_download_url
  #       # index[release.name + asset.browser_download_url] = {
  #       #   version: release.name,
  #       #   url: asset.browser_download_url,
  #       # }
  #     end
  #   end
  # end

  # def registry
  #   {
  #     fzf: { github: 'junegunn/fzf' },
  #     helix: { github: 'helix-editor/helix' },
  #     starship: { github: 'starship/starship' },
  #     tmux: { github: 'tmux/tmux' },
  #   }
  # end
end

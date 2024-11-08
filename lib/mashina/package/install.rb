class Mashina::Package::Install
  include LeanInteractor

  initialize_call :package

  def run
    mashina_tmp_download_dir = Mashina::Config.mashina_tmp_download_dir
    package_download_dir = "#{mashina_tmp_download_dir}/#{package.file_name}"
    FileUtils.mkdir_p(package_download_dir)
    `wget -qnc -P #{package_download_dir} #{package.url}`
    `tar -xf #{package_download_dir}/#{package.file_basename} -C #{package_download_dir}`
    `mv #{package_download_dir}/#{package.file_name} $HOME/.mashina/lib/#{package.name}-#{package.version}`
    `ln -sf $HOME/.mashina/lib/#{package.name}-#{package.version}/#{package.name} $HOME/.mashina/bin/#{package.name}`

    true
  end
end

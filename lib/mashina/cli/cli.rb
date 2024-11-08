class Mashina::CLI::CLI < Thor
  desc 'init', 'NOT IMPLEMENTED'
  def init
    puts Mashina::CLI::Commands::Init.call
  end

  desc 'install PACKAGE_NAME', 'NOT IMPLEMENTED'
  def install(package_name)
    puts Mashina::CLI::Commands::Install.call(package_name)
  end
end

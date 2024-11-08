class Mashina::CLI::Commands::Init
  include LeanInteractor

  initialize_call

  def run
    mashina_config_dir = Mashina::Config.mashina_config_dir
    mashina_config_path = "#{mashina_config_dir}/config.yaml"
    config_json = YAML.load_file(mashina_config_path).to_json
    config = JSON.parse(config_json, object_class: OpenStruct)

    config.init_files.map do |file_path|
      File.read("#{mashina_config_dir}/#{file_path}")
    end.join
  end
end

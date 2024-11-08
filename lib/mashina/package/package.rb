class Mashina::Package
  SUPPORTED_EXTENSIONS = ['tar.gz', 'tar.xz', 'zip']

  attr_reader :name, :url, :version

  def initialize(name, url, version)
    @name = name
    @url = url
    @version = version
  end

  def file_basename
    @file_basename ||= File.basename(url)
  end

  def file_name
    @file_name ||= file_basename.gsub(".#{file_extension}", "")
  end

  def file_extension
    @file_extension ||= SUPPORTED_EXTENSIONS.find { |ext| file_basename.include?(".#{ext}") } || ""
  end
end

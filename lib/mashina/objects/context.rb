class Mashina::Context
  def os_darwin?
    RUBY_PLATFORM.match?(/darwin/)
  end

  def os_linux?
    false
  end

  def arch_arm?
    RUBY_PLATFORM.match?(/arm/)
  end

  def arch_x86?
    false
  end
end

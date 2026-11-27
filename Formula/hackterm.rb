class Hackterm < Formula
  include Language::Python::Shebang

  desc "Cinematic fake-hacking console for your terminal"
  homepage "https://github.com/Farrooss/hackterm"
  url "https://github.com/Farrooss/hackterm/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "2c77c30936955652093f3db77a3c0a9a1fae3cc7a75ff37ee6fc53216d97e74d"
  license "MIT"

  depends_on "python@3.14"

  def install
    rewrite_shebang detected_python_shebang, "hackterm.py"
    bin.install "hackterm.py" => "hackterm"
  end

  test do
    assert_equal "hackterm #{version}", shell_output("#{bin}/hackterm --version").strip
  end
end

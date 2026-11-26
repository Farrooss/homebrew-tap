class Hackterm < Formula
  include Language::Python::Shebang

  desc "Cinematic fake-hacking console for your terminal"
  homepage "https://github.com/Farrooss/hackterm"
  url "https://github.com/Farrooss/hackterm/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "7f2036799128b7e41cd849cb7dff5b992964de797146e1f8d43a60db94239ec0"
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

class Hackterm < Formula
  include Language::Python::Shebang

  desc "Cinematic fake-hacking console for your terminal"
  homepage "https://github.com/Farrooss/hackterm"
  url "https://github.com/Farrooss/hackterm/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "976d9c882e7e46c71e9311149166b4cb573fd32a1d42cc4e7e65a8d5ac28fc9e"
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

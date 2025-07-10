class Goto < Formula
  desc "Simple CLI SSH manager"
  homepage "https://github.com/grafviktor/goto"
  url "https://github.com/grafviktor/goto/releases/download/v1.4.1/goto-v1.4.1.zip"
  sha256 "bb49dd2e1491adf86c9a0e6f7f3c7e5579d3f7da213f9375fd267d13ba6cc6ca"
  license "MIT"

  def install
    arch = Hardware::CPU.arm? ? "arm" : "x86"
    bin.install "gg-mac-#{arch}" => "goto"
  end

  test do
    assert_match "goto", shell_output("#{bin}/goto --help")
  end
end

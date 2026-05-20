class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.16/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "4ba77820324a3d9b44ad78c6bce9d744ebdf517fa49cf2211d3850bc913fbcb6"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.16/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "97231aa0289d46a1dbf49a2b82ceb032a157b851ca9305a2bf8d3ade98fdd787"
    end
  end

  def install
    bin.install "kmpolice"
  end

  test do
    output = shell_output("#{bin}/kmpolice --help")
    assert_match "Usage: kmpolice", output
  end
end

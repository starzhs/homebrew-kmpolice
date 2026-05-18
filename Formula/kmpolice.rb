class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.8/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "a6475af760ec25e6d475cdb9a18f8fdd3dcaf6115f4041f0aeca1ef40da59a94"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.8/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "25a2b3b054527caac49390e221a3d419853c87693717c4c159e0c637c1b66a3a"
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

class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.9/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "c73687c137fb29f2fc96c5f9bdb1e4b74a94c8d9a5c8b93c4313be72c6efd729"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.9/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "31df36efa4fb8684b8900f23a2c9e26d548dd08cbacea5cd46e77b32a74e0365"
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

class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.17/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "9b05092e1afdcee9b8971a037d297ac893cab7716d795a075ab4462223c01b86"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.17/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "5f9fa7a9b97a6bf60c6e8732075a487c85f622842ae36a3bbe2e802f7f1e6fd1"
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

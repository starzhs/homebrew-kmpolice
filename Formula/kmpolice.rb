class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.19/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "8358d725927013e1fd76a765b0e29b80bf38e29f051402b96444e19fed9b808a"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.19/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "9761589159f72f4412621b4ddef80280b950ac39c8853169aec0ed24b77ef3bb"
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

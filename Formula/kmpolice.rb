class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.18/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "39052fadfd55d3447613f960450f52ec6bdb89c7634aad16e9df7cee2822994b"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.18/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "3f16738b52e386e2be480196f438a4dff00e19b1ee94a61353c4c5ca08a85417"
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

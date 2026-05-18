class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.10/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "ed4a9283a91d5fc6c81da8c9514d55e9e05e3b300443a17254c766d34c1a2eb0"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.10/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "42acb00af0998dfd1f0ab5b74bd565b21f136524a90631bcb830747e14b8d486"
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

class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.20/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "66cd8837186904aeb99c271aa1c57eaf18f73b396c673693464a640d9658397e"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.20/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "4cd3da7e42d2ad7d2f878c5eceae53f5110660a04f189e49173459f5c61c99bb"
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

class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.11/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "3f25db30dde8d5deeac7eb019ce47a6f7c3bfeb576ae366bda66b424b1f57a2a"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.11/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "cd2574c8d633535b485d73cbe6916a727566451bdba95c024ad0bf3ab189ff29"
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

class Phoebe < Formula
  desc "A CLI tool for managing events"
  homepage "https://github.com/Ap0ll02/PhoebeEvents"
  url "https://github.com/Ap0ll02/PhoebeEvents/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "652c24f002060390848ed249b3cf1ad7ec22752e3dd6387a9653fe8e523e7d79"
  license "MIT"

  depends_on "go"

  def install
    system "go", "build", "-o", "pb"
    bin.install "pb"
  end

  test do
    system "#{bin}/pb", "--help"
  end
end


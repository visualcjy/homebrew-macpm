class Macpm < Formula
  desc "Rootless performance monitor for Apple Silicon"
  homepage "https://github.com/visualcjy/macpm"
  url "https://github.com/visualcjy/macpm/releases/download/v2.1/macpm-2.1-macos-arm64.tar.gz"
  sha256 "047adf3b9a59954e2d02f774b2386fc93bbdc9c3e75f02612eca0aed94509cf0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "macpm"
    doc.install "README.txt"
  end

  test do
    assert_match "macpm v#{version}", shell_output("#{bin}/macpm --version")
  end
end

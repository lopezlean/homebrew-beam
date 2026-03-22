class Beam < Formula
  desc "Ephemeral terminal-first file sharing"
  homepage "https://github.com/lopezlean/beam"
  url "https://github.com/lopezlean/beam/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "09410677d90145896cdfac68f146e345e0f5b78edb242deda8c903d5665d2748"
  license "MIT"

  depends_on "rust" => :build
  depends_on "cloudflared"

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beam version")
  end
end

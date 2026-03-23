class Beam < Formula
  desc "Ephemeral terminal-first file sharing"
  homepage "https://github.com/lopezlean/beam"
  url "https://github.com/lopezlean/beam/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "586c571e6d09ac911f724ab86b7c4270cadc8516c03eecba7b7dacd1821f57b0"
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

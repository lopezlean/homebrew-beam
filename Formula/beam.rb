class Beam < Formula
  desc "Ephemeral terminal-first file sharing"
  homepage "https://github.com/lopezlean/beam"
  url "https://github.com/lopezlean/beam/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "4dc9fc2978e5294c7e22723c22abda9464f5e5f3adb22e4e9d2bffe6d49d7425"
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

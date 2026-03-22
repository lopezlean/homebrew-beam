class Beam < Formula
  desc "Ephemeral terminal-first file sharing"
  homepage "https://github.com/lopezlean/beam"
  url "https://github.com/lopezlean/beam/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "6a3fa6c9297e5ed54b7e958eea23fdaeab61157feac6c685f415bb07dbe05550"
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

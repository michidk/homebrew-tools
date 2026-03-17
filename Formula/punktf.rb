class Punktf < Formula
  desc "A cross-platform multi-target dotfiles manager"
  homepage "https://github.com/Shemnei/punktf"
  version "3.1.1"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Shemnei/punktf/releases/download/v#{version}/punktf-x86_64-unknown-linux-musl.tar.gz" # url:punktf-x86_64-unknown-linux-musl
      sha256 "0259d2fefe23e5c45ad874a835ed134b14631685e8c7a5a94d28aedebc69b340" # sha:punktf-x86_64-unknown-linux-musl
    end
  end

  conflicts_with "punktf"

  def install
    bin.install "punktf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/punktf --version")
  end
end

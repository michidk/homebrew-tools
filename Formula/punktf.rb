class Punktf < Formula
  desc "A cross-platform multi-target dotfiles manager"
  homepage "https://github.com/Shemnei/punktf"
  url "https://github.com/Shemnei/punktf/releases/download/v1.0.0-alpha/punktf-x86_64-unknown-linux-musl.tar.gz"

  conflicts_with "punktf"

  def install
    bin.install "punktf"
  end
end

class Punktf < Formula
  desc "A cross-platform multi-target dotfiles manager"
  homepage "https://github.com/Shemnei/punktf"
  version "2.0.0"
  url "https://github.com/Shemnei/punktf/releases/download/v2.0.0/punktf-x86_64-unknown-linux-musl.tar.gz"
  sha256 "aeb9ec2446dd1a44aeb3b7a5f1b0a8b3074393ad41dc9dae16b147b34b9ff73c"

  conflicts_with "punktf"

  def install
    bin.install "punktf"
  end
end

class Punktf < Formula
  desc "A cross-platform multi-target dotfiles manager"
  homepage "https://github.com/Shemnei/punktf"
  version "v1.0.1"
  url "https://github.com/Shemnei/punktf/releases/download/#{version}/punktf-x86_64-unknown-linux-musl.tar.gz"
  sha256 "0da89831ba94a0bff05630c624f239b0080d13455bc7392eaa92077e546e82b4"

  conflicts_with "punktf"

  def install
    bin.install "punktf"
  end
end

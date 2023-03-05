class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.2"
    url "https://github.com/michidk/vscli/releases/download/v0.1.2/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "37a0cb2d1b1f4361c5d55a0180e70929b2548bfa58447d390de3e544e0eabd53"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.9"
    url "https://github.com/michidk/vscli/releases/download/v0.1.9/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8560c503ed86ef7078057fcbd87ad246992ad36db86eb6bd5faa4cdd14aba266"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  

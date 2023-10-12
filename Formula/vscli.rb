class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.10"
    url "https://github.com/michidk/vscli/releases/download/v0.1.10/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f009aa1a8274e85775ec720ce522412a7769ee9dafde6800ba61499fe34165c1"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  

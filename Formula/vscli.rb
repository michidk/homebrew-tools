class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.11"
    url "https://github.com/michidk/vscli/releases/download/v0.1.11/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b9e34b90c342eaa4314450d1bc190c810bf53f29ae20d70b5bb553f11178b70e"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  

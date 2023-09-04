class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.5"
    url "https://github.com/michidk/vscli/releases/download/v0.1.5/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "40cdfd731237650f968b0077a363806e68190ee6bd992937dcc3c2b168c0f258"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
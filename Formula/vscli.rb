class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.12"
    url "https://github.com/michidk/vscli/releases/download/v0.1.12/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4c4d7cbc7b00dbd2d7206de5200bbe5ca0a27a3f584e80ffbebf20ae2183ad3d"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  

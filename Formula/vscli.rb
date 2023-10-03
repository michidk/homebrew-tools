class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.6"
    url "https://github.com/michidk/vscli/releases/download/v0.1.6/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2ce10d44ff8068b02ba9fd7c1f4346ab115a2d33d4580d50df9b48090f02c1d4"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  

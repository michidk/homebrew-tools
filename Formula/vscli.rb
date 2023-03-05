class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.3"
    url "https://github.com/michidk/vscli/releases/download/v0.1.3/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "df8bf4034c868a55e73b31e0694f8787a636277c9eec1beee36c812c36b291e5"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
class Vscli < Formula
    desc "A CLI tool to launch vscode projects, which supports devcontainers. "
    homepage "https://github.com/michidk/vscli"
    version "0.1.0"
    url "https://github.com/michidk/vscli/releases/download/v0.1.0/vscli-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e390ccd61dc12ad08d013ed1682d7e615e442b874977d35118563188fe3e0db6"
  
    conflicts_with "vscli"
  
    def install
      bin.install "vscli"
    end
  end
  
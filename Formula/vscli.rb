class Vscli < Formula
  desc "A CLI/TUI that simplifies launching VSCode projects, with a focus on dev containers"
  homepage "https://github.com/michidk/vscli"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-apple-darwin.tar.gz" # url:vscli-x86_64-apple-darwin
      sha256 "50c343ffebd1b51e36197bb41d48aa41c36b77f8bab304e0c2dde7c7aba14b16" # sha:vscli-x86_64-apple-darwin
    elsif Hardware::CPU.arm?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-aarch64-apple-darwin.tar.gz" # url:vscli-aarch64-apple-darwin
      sha256 "16a7803aeda9ca9fb5db53702fc26973eb1d6668fdaacaa89228e9198bfc2b0f" # sha:vscli-aarch64-apple-darwin
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-unknown-linux-musl.tar.gz" # url:vscli-x86_64-unknown-linux-musl
      sha256 "4ffa5878888b0430968dd34beb3bb202c543c7d37de7bf61ff2950a90767faa8" # sha:vscli-x86_64-unknown-linux-musl
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-arm-unknown-linux-gnueabihf.tar.gz" # url:vscli-arm-unknown-linux-gnueabihf
      sha256 "d757a9606d199934b594ca6167cedf4e14dd984063820ff3f6224bfe67b76a1a" # sha:vscli-arm-unknown-linux-gnueabihf
    end
  end

  def install
    bin.install "vscli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vscli --version")
  end
end

class Vscli < Formula
  desc "A CLI/TUI that simplifies launching VSCode projects, with a focus on dev containers"
  homepage "https://github.com/michidk/vscli"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-apple-darwin.tar.gz" # url:vscli-x86_64-apple-darwin
      sha256 "11f6cc7c2103b5b436830976d273d05f98dff3d79df87565dd97d3b83f47d451" # sha:vscli-x86_64-apple-darwin
    elsif Hardware::CPU.arm?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-aarch64-apple-darwin.tar.gz" # url:vscli-aarch64-apple-darwin
      sha256 "d64aa945df33fe20df4fb3d80305d007693bed797f6b41705f5776019de37392" # sha:vscli-aarch64-apple-darwin
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-unknown-linux-musl.tar.gz" # url:vscli-x86_64-unknown-linux-musl
      sha256 "244baa5bba82212eb3a59f261f27805d6511975a88293cd188918c14c5dff301" # sha:vscli-x86_64-unknown-linux-musl
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-arm-unknown-linux-gnueabihf.tar.gz" # url:vscli-arm-unknown-linux-gnueabihf
      sha256 "3ae98e5a1c146d4d533df877b26924d02878f9c95a2aed7e1a6b6e353024800a" # sha:vscli-arm-unknown-linux-gnueabihf
    end
  end

  def install
    bin.install "vscli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vscli --version")
  end
end

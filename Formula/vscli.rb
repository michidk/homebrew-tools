class Vscli < Formula
  desc "A CLI/TUI that simplifies launching VSCode projects, with a focus on dev containers"
  homepage "https://github.com/michidk/vscli"
  version "1.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-apple-darwin.tar.gz" # url:vscli-x86_64-apple-darwin
      sha256 "13286fd5bb560efe800d0c98948c7585143fbda19d82d46f80d9608e9c4b40e6" # sha:vscli-x86_64-apple-darwin
    elsif Hardware::CPU.arm?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-aarch64-apple-darwin.tar.gz" # url:vscli-aarch64-apple-darwin
      sha256 "ffc98c62a66bc0e79c96df653812fe583e1bec273f94ebffbb330c317dd221c0" # sha:vscli-aarch64-apple-darwin
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-x86_64-unknown-linux-musl.tar.gz" # url:vscli-x86_64-unknown-linux-musl
      sha256 "ccc7853560f113607713239886466bf1cce503aa439f96582df960c3a03c65f0" # sha:vscli-x86_64-unknown-linux-musl
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/michidk/vscli/releases/download/v#{version}/vscli-arm-unknown-linux-gnueabihf.tar.gz" # url:vscli-arm-unknown-linux-gnueabihf
      sha256 "61aa96a5f7f277b288e86618a19c3c9cb5c48253b231f8ab7930b56284c4a7c7" # sha:vscli-arm-unknown-linux-gnueabihf
    end
  end

  def install
    bin.install "vscli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vscli --version")
  end
end

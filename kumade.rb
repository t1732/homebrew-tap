class Kumade < Formula
  desc "ChonoHa API CLI"
  homepage "https://github.com/t1732/kumade"
  url "https://github.com/t1732/kumade/archive/v0.0.1.tar.gz"
  version "v0.0.1"
  sha256 "a115ab0faa7e07c405bda1e2a3a967abecaf757822aee081245b905d24bf17d7"
  license "MIT"

  depends_on go: :build

  def install
    system "go", "build", *std_go_args, *build_args
  end

  private

  def build_args
    [
      "-ldflags",
      "-w -s -X github.com/t1732/kumade/cmd.version=#{version} -X github.com/t1732/kumade/cmd.revision=fd9dca9"
    ]
  end

  test do
    system "false"
  end
end

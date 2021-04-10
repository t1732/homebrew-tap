class Kumade < Formula
  desc "ChonoHa API CLI"
  homepage "https://github.com/t1732/kumade"
  url "https://github.com/t1732/kumade/archive/v0.0.2.tar.gz"
  version "v0.0.2"
  sha256 "52920acbe5552e62e5f3a232a213f37918fd8aad53c7993e221bdb44a6c532a0"
  license "MIT"

  depends_on "go" => :build

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

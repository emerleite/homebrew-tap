class D1cli < Formula
  desc "Interactive SQL REPL for Cloudflare D1 databases"
  homepage "https://github.com/emerleite/d1cli"
  url "https://files.pythonhosted.org/packages/6f/af/6b94af734ed6b2a8db2be54b06c88f72a954007d59f28c26b3d07f0e6c3b/cloudflare_d1cli-0.1.4.tar.gz"
  sha256 "263226ae74fb4cef674083f8fe9d154a2acbb27cb9ec38ef4dbd4d522f93ba44"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install "cloudflare-d1cli==0.1.4"
    bin.install_symlink Dir[libexec/"bin/d1cli"]
  end

  test do
    assert_match "d1cli", shell_output("#{bin}/d1cli --version")
  end
end

class D1cli < Formula
  include Language::Python::Virtualenv

  desc "Interactive SQL REPL for Cloudflare D1 databases"
  homepage "https://github.com/emerleite/d1cli"
  url "https://files.pythonhosted.org/packages/ab/1b/22ea233bc77c8be4efff6013c5952f45796df2323c839acaaa0b038f6ec0/cloudflare_d1cli-0.1.5.tar.gz"
  sha256 "66d3baae00a1eaeada80c7fa377dfbc4498a5f11cc0fa4ff0c9e5d78f5a5f6f7"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install "cloudflare-d1cli==0.1.5"
    bin.install_symlink Dir[libexec/"bin/d1cli"]
  end

  test do
    assert_match "d1cli", shell_output("#{bin}/d1cli --version")
  end
end

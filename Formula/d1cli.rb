class D1cli < Formula
  include Language::Python::Virtualenv

  desc "Interactive SQL REPL for Cloudflare D1 databases"
  homepage "https://github.com/emerleite/d1cli"
  url "https://files.pythonhosted.org/packages/da/ad/76bc661f717c63f0251f1ab6974f5db5914a83c8f6c14cbb5e3d7e98c8c1/cloudflare_d1cli-0.1.3.tar.gz"
  sha256 "e05fad41c00c4101c9e2947b585ccf4db180321a27accad9a8049afb3c709381"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "d1cli", shell_output("#{bin}/d1cli --version")
  end
end

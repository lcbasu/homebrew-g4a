class G4a < Formula
  include Language::Python::Virtualenv

  desc "The reasoning layer for AI-written code"
  homepage "https://www.git4aiagents.com"
  url "https://github.com/lcbasu/git4aiagents/archive/bb139229e2bea0b0beb256296083d6fddeab1de2.tar.gz"
  sha256 "17c894e452e7a6d663f1c0aca92d069f544d2489fe6bc872957123d905097aa1"
  version "0.1.1"
  license "CC-BY-4.0"

  depends_on "python@3.13"

  resource "click" do
    url "https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz"
    sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"g4a", "--version"
  end
end

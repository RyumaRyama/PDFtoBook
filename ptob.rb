# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
HOMEBREW_BREWALL_VERSION = '0.0.1'
class Ptob < Formula
	desc ""
	homepage "https://github.com/RyumaRyama/PDFtoBook"
	url "https://github.com/RyumaRyama/PDFtoBook", :tag => "v#{HOMEBREW_BREWALL_VERSION}"
	version HOMEBREW_BREWALL_VERSION
	sha256 ""
	head 'https://github.com/RyumaRyama/homebrew-ptob.git', :branch => 'master'	

	skip_clean 'bin'
	# depends_on "cmake" => :build
	def install
		# ENV.deparallelize  # if your formula fails when building in parallel
		# Remove unrecognized options if warned by configure
		#system "./configure", "--disable-debug",
		#					  "--disable-dependency-tracking",
		#					  "--disable-silent-rules",
		#					  "--prefix=#{prefix}"
		# system "cmake", ".", *std_cmake_args
		#system "make", "install" # if this fails, try separate make/make install steps
		prefix.install 'bin'
		(bin+'brewall').chmod 0755
	end
	#test do
		# `test do` will create, run in and delete a temporary directory.
		#
		# This test will fail and we won't accept that! For Homebrew/homebrew-core
		# this will need to be a test that verifies the functionality of the
		# software. Run the test with `brew test ptob`. Options passed
		# to `brew install` such as `--HEAD` also need to be provided to `brew test`.
		#
		# The installed folder is not in the path, so use the entire path to any
		# executables being tested: `system "#{bin}/program", "do", "something"`.
		#system "false"
	#end
end

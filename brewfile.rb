
cask "overview" do
  version "1.2.2-beta"
  sha256 "757de298e73a7e2ee7405638fafb365f869572f3149e6d4c1d631f09da345660"

  url "https://williampierce.io/overview/releases/v#{version}/Overview.dmg",
      verified: "github.com/williamcpierce/overview/"
  name "overview"
  desc "Screen Capturing Software used for Eve Online or any other Applications"
  homepage "https://williampierce.io/overview/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Overview.app"

  zap trash: [
    "~/Library/Preferences/io.williampierce.Overview.plist",
  ]
end
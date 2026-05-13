cask "med-schedule-tracker" do
  version "0.2.1"
  sha256 "237325743d13e32bf132679c98bb6ce9b48415b8bcefcf8cbea45b9f8b822145"

  url "https://github.com/Jimmy110101013/med-schedule-backend/releases/download/v0.2.1/Med.Schedule.Tracker_0.2.1_aarch64.dmg"
  name "Med Schedule Tracker"
  desc "NYCU Med10 clinical course tracking dashboard"
  homepage "https://github.com/Jimmy110101013/med-schedule-backend"

  app "Med Schedule Tracker.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-cr", "#{appdir}/Med Schedule Tracker.app"],
         sudo: false
  end
end

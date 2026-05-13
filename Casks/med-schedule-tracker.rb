cask "med-schedule-tracker" do
  version "0.2.4"
  sha256 "9f970d576c6b7ef12cfe02b334e937896cd793cc1a27b41ebf203a103d4711d2"

  url "https://github.com/Jimmy110101013/med-schedule-backend/releases/download/v0.2.4/Med.Schedule.Tracker_0.2.4_aarch64.dmg"
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

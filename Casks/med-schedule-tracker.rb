cask "med-schedule-tracker" do
  version "0.1.0"
  sha256 "<placeholder>"

  url "https://github.com/Jimmy110101013/med-schedule-backend/releases/download/v#{version}/Med.Schedule.Tracker_#{version}_aarch64.dmg"
  name "Med Schedule Tracker"
  desc "NYCU Med10 clinical course tracking dashboard"
  homepage "https://github.com/Jimmy110101013/med-schedule-backend"

  app "Med Schedule Tracker.app"
end

import AppKit
import Foundation

final class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationWillFinishLaunching(_ notification: Notification) {
        _ = CompositionRoot.dock
    }

    func applicationDidFinishLaunching(_ notification: Notification) {
        CompositionRoot.virtualMachineAutomaticLauncher.startVirtualMachinesIfNeeded()
    }

    func applicationWillTerminate(_ notification: Notification) {
        CompositionRoot.editorService.stop()
        CompositionRoot.fleet.stop()
    }
}

//
// MacsyZones, macOS system utility for managing windows on your Mac.
// 
// https://macsyzones.com
// 
// Copyright © 2024, Oğuzhan Eroğlu <meowingcate@gmail.com> (https://meowingcat.io)
// 
// This file is part of MacsyZones.
// Licensed under GNU General Public License v3.0
// See LICENSE file.
//

import Foundation

class VerifyResult {
    var isValid: Bool = false
    var owner: String? = nil
    
    init(isValid: Bool = false, owner: String? = nil) {
        self.isValid = isValid
        self.owner = owner
    }
}

class ProLock: ObservableObject {
    @Published var isPro: Bool = true
    @Published var owner: String? = "AlwaysValid"

    private var licenseKey: String = ""

    init() {
        // No validation, always pro
    }

    func load() {
        // No validation, always pro
    }

    func save() {
        // No-op
    }

    func setLicenseKey(_ key: String) -> Bool {
        isPro = true
        owner = "AlwaysValid"
        licenseKey = key
        return true
    }

    private func validateLicenseKey(_ key: String) -> VerifyResult {
        return VerifyResult(isValid: true, owner: "AlwaysValid")
    }

    func verifyMergedLicenseKey(publicKey: SecKey, mergedLicenseKey: String) -> VerifyResult {
        return VerifyResult(isValid: true, owner: "AlwaysValid")
    }
}

---
author: NGA, Brent Michalski
description: MAGE iOS App
date: 2024-07-29 12:00
tags: swift, objective-c, xcode, github, maps, offline, geoint, nga, swiftui
published: true
image: /images/apps/mage_icon.png
imageDescription: MAGE iOS App Icon
---
#  MAGE iOS

<img src="/images/apps/mage_icon.png" style="width: 250px;height:auto;">

---

## MAGE iOS App Description

MAGE (Mobile Awareness GEOINT Environment) is a situational awareness application developed by the National Geospatial-Intelligence Agency (NGA) in collaboration with BIT Systems. The app enables field teams to create and share geotagged reports in real time, providing critical situational awareness capabilities for military, intelligence, and emergency response operations.

MAGE serves as a powerful field data collection and sharing platform, allowing users to capture observations with rich media attachments while maintaining full functionality even in disconnected environments. When network connectivity is restored, all data automatically synchronizes with the server, ensuring no information is lost during field operations.

---

### MAGE Capabilities Include:

- **Geotagged Field Reports**: Create detailed observations with photos, videos, and voice recordings, all automatically tagged with GPS coordinates
- **Real-Time Location Sharing**: Track team member positions and share locations automatically across the network
- **Full Offline Capability**: The app remains fully functional without network connectivity, storing all data locally
- **Automatic Sync**: When connectivity is restored, all observations and locations sync seamlessly with the MAGE server
- **Local Data Layers**: Maps, tiles, and vector data can be downloaded and stored locally for offline access
- **Customizable Events**: Configure different event types with custom forms tailored to specific mission requirements
- **Secure Communications**: All data transmission is encrypted and secured for sensitive operations
- **Cross-Platform Compatibility**: Works seamlessly with MAGE Android and web clients for team-wide collaboration

---

### Roles and Technologies

**Role:** Senior Software Engineer (Technical Lead) at Vega Federal LLC (2024-2025)

**Key Contributions:**

1. **Led Complete App Modernization**: Spearheaded the modernization of the open-source MAGE iOS app, rebuilding authentication, sign-up, and startup flows from legacy Objective-C to modern SwiftUI with OAuth/SSO/biometrics support.

2. **Architectural Leadership**: Migrated 75% of the legacy Objective-C codebase to modern Swift/SwiftUI, implementing caching with offline tile storage and shared MapKit/Core Location components while establishing design patterns and coding standards to boost developer efficiency.

3. **Critical Bug Resolution**: Eliminated three recurring field-operation crashes caused by server sync race conditions, achieving zero crashes post-launch in disconnected/low-bandwidth environments—critical for military and first responder operations.

4. **Cross-Functional Collaboration**: Worked closely with product and engineering teams to enhance real-time tracking and geotagged features, championing Test-Driven Development (TDD) for critical paths.

5. **Open Source Contributor**: Actively contributed to the public GitHub repository to support scalable iOS experiences for government and emergency response users.

**Technologies Used:**
- **Programming Languages:** Swift, SwiftUI, Objective-C
- **Frameworks:** UIKit, SwiftUI, CoreLocation, MapKit, CoreData, AVFoundation
- **Authentication:** OAuth 2.0, SSO, Biometrics (Face ID/Touch ID)
- **Backend Integration:** RESTful APIs, JSON, MAGE Server
- **Offline Storage:** CoreData for local persistence, offline tile caching, sync queue management
- **Mapping:** MapKit, offline tile storage, GeoPackage support, KML/KMZ overlays
- **Media Handling:** Photo capture, video recording, audio notes with GPS tagging
- **Security:** Certificate-based authentication, encrypted data transmission
- **Development Tools:** Xcode, Git, CocoaPods, Swift Package Manager
- **Testing:** XCTest, TDD practices, TestFlight for beta distribution
- **Methodologies:** Agile, Test-Driven Development, Cross-functional collaboration

---

### GitHub Repository

[![MAGE iOS on GitHub](/images/github.png)](https://github.com/ngageoint/mage-ios)

The MAGE iOS app is open source under the Apache 2.0 license. View the source code and contribute on GitHub.

---

### Related Projects

- **MAGE Server**: Backend server for MAGE ecosystem
- **MAGE Android**: Android client for MAGE
- **MAGE Web**: Web-based client for MAGE

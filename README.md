
# **Nbase iOS SDK**
iOS용 채팅 개발을 위한 Ncloud Chat iOS SDK 사용법에 대해 설명합니다. SDK를 설치하고 환경을 구성함으로써 채팅과 대시보드를 연동할 수 있습니다.

## **요구사항**
iOS용 Nbase SDK를 사용하기 위한 요구 사양은 다음과 같습니다.
- iOS 13.0 이상 설치된 실행 가능한 기기
- Swift 5.0 and later
- Xcode 13 이상

## **SDK 설치 방법**
Nbase iOS SDK를 설치한 후, Nbase 대시보드와 연동하고 개발에 필요한 기능을 사용할 
수 있습니다.
### **Swift Package Manager (SPM)**
[Swift Package Manager](https://www.swift.org/package-manager/)는 Swift의 자동 코드 배포 도구이며, Swift 컴파일러에 통합되어 있습니다. 
Swift package 셋업을 마친 뒤, NcloudChat를 dependency로 추가하기 위해, `Package.swift`에 `dependencies` 를 추가 합니다.
```swift
dependencies: [
    .package(url: "https://github.com/nbase-io/NBaseSDK-iOS.git")
]
```


<h3 align="center" style="border-bottom: none; margin-top: -15px; margin-bottom: -15px; font-size: 150%">
<a href="https://nbase.io">Talk to Us to Learn More</a>
</h3>

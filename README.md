
# RandomColor

![Simulator Screen Recording - iPhone 16 Pro - 2025-02-19 at 17 42 59](https://github.com/user-attachments/assets/bd167dcc-8dc3-4fae-b414-8c230d0713e4)


간단한 예제 앱으로, 버튼을 눌러 배경색을 랜덤하게 변경하고 변경된 색상의 RGB 값을 화면에 표시합니다.

## 주요 기능
    •    랜덤 색상 생성: 버튼을 누르면 배경색이 무작위 색상으로 변경됩니다.
    •    RGB 정보 표시: 변경된 색상의 R, G, B 구성 요소를 UILabel에 표시합니다.
    •    초기화 기능: 리셋 버튼을 누르면 배경색과 색상 정보가 기본값으로 복원됩니다.

## 프로젝트 구조
### ViewController.swift

### Extensions
- UIColor: static var random으로 랜덤 색상 생성 로직을 캡슐화
- UILabel: updateColorInfo(using:)를 통해 색상 정보를 UILabel에 업데이트

### Constants
RGBLabelConstants와 ButtonTitleConstants를 통해 하드코딩된 문자열 및 상수 값을 중앙 집중식으로 관리

## 기술 스택
    •    Swift 5
    •    UIKit
    •    Auto Layout

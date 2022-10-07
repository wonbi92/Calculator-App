
# 🧮 계산기

## 📖 목차
1. [팀 소개](#-팀-소개)
2. [Ground Rule](#-ground-rule)
3. [일일 스크럼](#-일일-스크럼)
4. [실행 화면](#-실행-화면)
5. [Diagram](#-diagram)
6. [폴더 구조](#-폴더-구조)
7. [타임라인](#-타임라인)
8. [기술적 도전](#-기술적-도전)
9. [트러블 슈팅](#-트러블-슈팅)
10. [참고 링크](#-참고-링크)


## 🌱 팀 소개
 |[Wonbi](https://github.com/wonbi92)|[애쉬](https://github.com/ash-youu)|
 |:---:|:---:|
| <img width="180px" img style="border: 2px solid lightgray; border-radius: 90px;-moz-border-radius: 90px;-khtml-border-radius: 90px;-webkit-border-radius: 90px;" src="https://avatars.githubusercontent.com/u/88074999?v=4">| <img width="180px" img style="border: 2px solid lightgray; border-radius: 90px;-moz-border-radius: 90px;-khtml-border-radius: 90px;-webkit-border-radius: 90px;" src="https://avatars.githubusercontent.com/u/101683977?v=4">|

- `Wonbi`와 `애쉬` 팀의 계산기입니다.


## 🤙 Ground Rule
- [Ground Rule 보러가기](https://github.com/wonbi92/ios-calculator-app/wiki#-ground-rule)

    
## 📝 일일 스크럼
- [일일 스크럼 보러가기](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%93%9D-%EC%9D%BC%EC%9D%BC-%EC%8A%A4%ED%81%AC%EB%9F%BC)


## 🛠 실행 화면
 |**기본 연산**|**연산 후 =버튼 비활성화**|**0일때 연산자 변경**|
 |:---:|:---:|:---:|
 |![](https://i.imgur.com/fXs4Eqj.gif)|![](https://i.imgur.com/faxfI4T.gif)|![](https://i.imgur.com/HBbmhCU.gif)|
 |**AC버튼**|**CE버튼**|**부호 바꾸기**|
 |![](https://i.imgur.com/3lxfsFQ.gif)|![](https://i.imgur.com/CF26olN.gif)|![](https://i.imgur.com/lv26Pge.gif)|
 |**0일때 0, 00입력 제어**|**소수점 입력**|**0으로 나눌 시 NaN**|
 |![](https://i.imgur.com/ogjl4Wl.gif)|![](https://i.imgur.com/PqQs4EX.gif)|![](https://i.imgur.com/ZnEMGr0.gif)|
 
 
## 👀 Diagram

### 🧬 Class Diagram
![](https://i.imgur.com/09kBUQS.png)


## 🗂 폴더 구조
> Model : 앱 구동 로직에 필요한 모델<br>
> View : 화면을 구성하는 뷰<br>
> Controller : 화면의 이벤트와 전환을 컨트롤하는 컨트롤러
```
Calculator
├── Info
├── Model
│   ├── CalculatorItemQueue
│   ├── ExpressionText
│   ├── LinkedList
│   ├── CalculateItem
│   ├── Operator
│   ├── Formula
│   ├── ExpressionParser
│   └── Extension
│       ├── Double
│       └── String
├── View
│   ├── Main
│   ├── Assets
│   └── LaunchScreen
└── Controller
    ├── AppDelegate
    ├── SceneDelegate
    ├── ViewController
    ├── OperandManager
    └── ComponentMaker
```



## ⏰ 타임라인

### 👟 Step 1
- Queue 자료구조를 구현할 원시구조 결정
- Model 파트 코드 병합
- ViewController 코드 병합

<details>
<summary>Details</summary>
<div markdown="1">

#### **221004**
- Model
  - `Operator` 타입 병합
  - `CalculatorItemQueue` 의 원시구조 결정
    - Linked List ☑️
    - Double Stack Queue
  - `ExpressionPaser` 타입 병합
  - `Formula` 타입 병합
  - `Extension` String 파트 병합
- ViewController 메서드 병합
  - `tapOperatorButton` 
  - `tapSignButton`
  - `tapACButton`
    
</details>

### 👟 Step 2
- 병합한 프로젝트의 리팩토링 진행

<details>
<summary>Details</summary>
<div markdown="1">
    
#### **221005** 
- NumberFormatter 적용 메서드를 extension String으로 이동
- 유닛 테스트 파일 수정
- `CalculatorItemQueue`타입에 `statusQueue` 연산 프로퍼티 구현

#### **221006**
- ViewController 메서드 리팩토링
  - `tapOperatorButton`
  - `tapEqulasButton`
  - `tapSignButton`
  - `tapACButton`, `tapCEButton`
- Name Space 추가
- 리팩토링 이후 발생한 버그 및 오류 수정

#### **221007**
- `IBOutlet`변수와 `IBAction` 메서드 접근제어 적용
    
</div>
</details>

## 🏃🏻 기술적 도전

[단방향 연결 리스트(Linked List) 사용](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%8F%83%F0%9F%8F%BB-%EA%B8%B0%EC%88%A0%EC%A0%81-%EB%8F%84%EC%A0%84#%EF%B8%8F-%EB%8B%A8%EB%B0%A9%ED%96%A5-%EC%97%B0%EA%B2%B0-%EB%A6%AC%EC%8A%A4%ED%8A%B8linked-list-%EC%82%AC%EC%9A%A9)

[제네릭의 사용](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%8F%83%F0%9F%8F%BB-%EA%B8%B0%EC%88%A0%EC%A0%81-%EB%8F%84%EC%A0%84#%EF%B8%8F-%EC%A0%9C%EB%84%A4%EB%A6%AD%EC%9D%98-%EC%82%AC%EC%9A%A9)
    
[TDD](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%8F%83%F0%9F%8F%BB-%EA%B8%B0%EC%88%A0%EC%A0%81-%EB%8F%84%EC%A0%84#%EF%B8%8F-tdd)

## 🚀 트러블 슈팅
    
[LinkedList의 Unit Test](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%9A%80-%ED%8A%B8%EB%9F%AC%EB%B8%94-%EC%8A%88%ED%8C%85#-linkedlist%EC%9D%98-unit-test)

[NumberFormatter의 적용](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%9A%80-%ED%8A%B8%EB%9F%AC%EB%B8%94-%EC%8A%88%ED%8C%85#-numberformatter%EC%9D%98-%EC%A0%81%EC%9A%A9)

[병합 시 테스트 파일 병합에 대한 고민](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%9A%80-%ED%8A%B8%EB%9F%AC%EB%B8%94-%EC%8A%88%ED%8C%85#-%EB%B3%91%ED%95%A9-%EC%8B%9C-%ED%85%8C%EC%8A%A4%ED%8A%B8-%ED%8C%8C%EC%9D%BC-%EB%B3%91%ED%95%A9%EC%97%90-%EB%8C%80%ED%95%9C-%EA%B3%A0%EB%AF%BC)

[제시된 UML에 포함되지 않았던 View Controller 병합의 어려움](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%9A%80-%ED%8A%B8%EB%9F%AC%EB%B8%94-%EC%8A%88%ED%8C%85#-%EC%A0%9C%EC%8B%9C%EB%90%9C-uml%EC%97%90-%ED%8F%AC%ED%95%A8%EB%90%98%EC%A7%80-%EC%95%8A%EC%95%98%EB%8D%98-view-controller-%EB%B3%91%ED%95%A9%EC%9D%98-%EC%96%B4%EB%A0%A4%EC%9B%80)

    
## 🔗 참고 링크

[Swift Language Guide - Protocols](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html)<br>
[Swift Language Guide - Extentions](https://docs.swift.org/swift-book/LanguageGuide/Extensions.html)<br>
[Swift Language Guide - Generics](https://docs.swift.org/swift-book/LanguageGuide/Generics.html)<br> 
[Swift Language Guide - Closures](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)<br>
[Receive messages from a UI object](https://help.apple.com/xcode/mac/11.4/#/dev9662c7670)<br>
[NumberFormatter](https://developer.apple.com/documentation/foundation/numberformatter)<br>
[오토레이아웃 정복하기 - 야곰닷넷](https://yagom.net/courses/autolayout/) 


---

[🔝 맨 위로](#-계산기)


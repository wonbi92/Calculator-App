
# ๐งฎ ๊ณ์ฐ๊ธฐ

## ๐ ๋ชฉ์ฐจ
1. [ํ ์๊ฐ](#-ํ-์๊ฐ)
2. [Ground Rule](#-ground-rule)
3. [์ผ์ผ ์คํฌ๋ผ](#-์ผ์ผ-์คํฌ๋ผ)
4. [์คํ ํ๋ฉด](#-์คํ-ํ๋ฉด)
5. [Diagram](#-diagram)
6. [ํด๋ ๊ตฌ์กฐ](#-ํด๋-๊ตฌ์กฐ)
7. [ํ์๋ผ์ธ](#-ํ์๋ผ์ธ)
8. [๊ธฐ์ ์  ๋์ ](#-๊ธฐ์ ์ -๋์ )
9. [ํธ๋ฌ๋ธ ์ํ](#-ํธ๋ฌ๋ธ-์ํ)
10. [์ฐธ๊ณ  ๋งํฌ](#-์ฐธ๊ณ -๋งํฌ)


## ๐ฑ ํ ์๊ฐ
 |[Wonbi](https://github.com/wonbi92)|[์ ์ฌ](https://github.com/ash-youu)|
 |:---:|:---:|
| <img width="180px" img style="border: 2px solid lightgray; border-radius: 90px;-moz-border-radius: 90px;-khtml-border-radius: 90px;-webkit-border-radius: 90px;" src="https://avatars.githubusercontent.com/u/88074999?v=4">| <img width="180px" img style="border: 2px solid lightgray; border-radius: 90px;-moz-border-radius: 90px;-khtml-border-radius: 90px;-webkit-border-radius: 90px;" src="https://avatars.githubusercontent.com/u/101683977?v=4">|

- `Wonbi`์ `์ ์ฌ` ํ์ ๊ณ์ฐ๊ธฐ์๋๋ค.


## ๐ค Ground Rule
- [Ground Rule ๋ณด๋ฌ๊ฐ๊ธฐ](https://github.com/wonbi92/ios-calculator-app/wiki#-ground-rule)

    
## ๐ ์ผ์ผ ์คํฌ๋ผ
- [์ผ์ผ ์คํฌ๋ผ ๋ณด๋ฌ๊ฐ๊ธฐ](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%93%9D-%EC%9D%BC%EC%9D%BC-%EC%8A%A4%ED%81%AC%EB%9F%BC)


## ๐  ์คํ ํ๋ฉด
 |**๊ธฐ๋ณธ ์ฐ์ฐ**|**์ฐ์ฐ ํ =๋ฒํผ ๋นํ์ฑํ**|**0์ผ๋ ์ฐ์ฐ์ ๋ณ๊ฒฝ**|
 |:---:|:---:|:---:|
 |![](https://i.imgur.com/fXs4Eqj.gif)|![](https://i.imgur.com/faxfI4T.gif)|![](https://i.imgur.com/HBbmhCU.gif)|
 |**AC๋ฒํผ**|**CE๋ฒํผ**|**๋ถํธ ๋ฐ๊พธ๊ธฐ**|
 |![](https://i.imgur.com/3lxfsFQ.gif)|![](https://i.imgur.com/CF26olN.gif)|![](https://i.imgur.com/lv26Pge.gif)|
 |**0์ผ๋ 0, 00์๋ ฅ ์ ์ด**|**์์์  ์๋ ฅ**|**0์ผ๋ก ๋๋ ์ NaN**|
 |![](https://i.imgur.com/ogjl4Wl.gif)|![](https://i.imgur.com/PqQs4EX.gif)|![](https://i.imgur.com/ZnEMGr0.gif)|
 
 
## ๐ Diagram

### ๐งฌ Class Diagram
![](https://i.imgur.com/09kBUQS.png)


## ๐ ํด๋ ๊ตฌ์กฐ
> Model : ์ฑ ๊ตฌ๋ ๋ก์ง์ ํ์ํ ๋ชจ๋ธ<br>
> View : ํ๋ฉด์ ๊ตฌ์ฑํ๋ ๋ทฐ<br>
> Controller : ํ๋ฉด์ ์ด๋ฒคํธ์ ์ ํ์ ์ปจํธ๋กคํ๋ ์ปจํธ๋กค๋ฌ
```
Calculator
โโโ Info
โโโ Model
โ   โโโ CalculatorItemQueue
โ   โโโ ExpressionText
โ   โโโ LinkedList
โ   โโโ CalculateItem
โ   โโโ Operator
โ   โโโ Formula
โ   โโโ ExpressionParser
โ   โโโ Extension
โ       โโโ Double
โ       โโโ String
โโโ View
โ   โโโ Main
โ   โโโ Assets
โ   โโโ LaunchScreen
โโโ Controller
    โโโ AppDelegate
    โโโ SceneDelegate
    โโโ ViewController
    โโโ OperandManager
    โโโ ComponentMaker
```



## โฐ ํ์๋ผ์ธ

### ๐ Step 1
- Queue ์๋ฃ๊ตฌ์กฐ๋ฅผ ๊ตฌํํ  ์์๊ตฌ์กฐ ๊ฒฐ์ 
- Model ํํธ ์ฝ๋ ๋ณํฉ
- ViewController ์ฝ๋ ๋ณํฉ

<details>
<summary>Details</summary>
<div markdown="1">

#### **221004**
- Model
  - `Operator` ํ์ ๋ณํฉ
  - `CalculatorItemQueue` ์ ์์๊ตฌ์กฐ ๊ฒฐ์ 
    - Linked List โ๏ธ
    - Double Stack Queue
  - `ExpressionPaser` ํ์ ๋ณํฉ
  - `Formula` ํ์ ๋ณํฉ
  - `Extension` String ํํธ ๋ณํฉ
- ViewController ๋ฉ์๋ ๋ณํฉ
  - `tapOperatorButton` 
  - `tapSignButton`
  - `tapACButton`
    
</details>

### ๐ Step 2
- ๋ณํฉํ ํ๋ก์ ํธ์ ๋ฆฌํฉํ ๋ง ์งํ

<details>
<summary>Details</summary>
<div markdown="1">
    
#### **221005** 
- NumberFormatter ์ ์ฉ ๋ฉ์๋๋ฅผ extension String์ผ๋ก ์ด๋
- ์ ๋ ํ์คํธ ํ์ผ ์์ 
- `CalculatorItemQueue`ํ์์ `statusQueue` ์ฐ์ฐ ํ๋กํผํฐ ๊ตฌํ

#### **221006**
- ViewController ๋ฉ์๋ ๋ฆฌํฉํ ๋ง
  - `tapOperatorButton`
  - `tapEqulasButton`
  - `tapSignButton`
  - `tapACButton`, `tapCEButton`
- Name Space ์ถ๊ฐ
- ๋ฆฌํฉํ ๋ง ์ดํ ๋ฐ์ํ ๋ฒ๊ทธ ๋ฐ ์ค๋ฅ ์์ 

#### **221007**
- `IBOutlet`๋ณ์์ `IBAction` ๋ฉ์๋ ์ ๊ทผ์ ์ด ์ ์ฉ
    
</div>
</details>

## ๐๐ป ๊ธฐ์ ์  ๋์ 

[๋จ๋ฐฉํฅ ์ฐ๊ฒฐ ๋ฆฌ์คํธ(Linked List) ์ฌ์ฉ](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%8F%83%F0%9F%8F%BB-%EA%B8%B0%EC%88%A0%EC%A0%81-%EB%8F%84%EC%A0%84#%EF%B8%8F-%EB%8B%A8%EB%B0%A9%ED%96%A5-%EC%97%B0%EA%B2%B0-%EB%A6%AC%EC%8A%A4%ED%8A%B8linked-list-%EC%82%AC%EC%9A%A9)

[์ ๋ค๋ฆญ์ ์ฌ์ฉ](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%8F%83%F0%9F%8F%BB-%EA%B8%B0%EC%88%A0%EC%A0%81-%EB%8F%84%EC%A0%84#%EF%B8%8F-%EC%A0%9C%EB%84%A4%EB%A6%AD%EC%9D%98-%EC%82%AC%EC%9A%A9)
    
[TDD](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%8F%83%F0%9F%8F%BB-%EA%B8%B0%EC%88%A0%EC%A0%81-%EB%8F%84%EC%A0%84#%EF%B8%8F-tdd)

## ๐ ํธ๋ฌ๋ธ ์ํ
    
[LinkedList์ Unit Test](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%9A%80-%ED%8A%B8%EB%9F%AC%EB%B8%94-%EC%8A%88%ED%8C%85#-linkedlist%EC%9D%98-unit-test)

[NumberFormatter์ ์ ์ฉ](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%9A%80-%ED%8A%B8%EB%9F%AC%EB%B8%94-%EC%8A%88%ED%8C%85#-numberformatter%EC%9D%98-%EC%A0%81%EC%9A%A9)

[๋ณํฉ ์ ํ์คํธ ํ์ผ ๋ณํฉ์ ๋ํ ๊ณ ๋ฏผ](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%9A%80-%ED%8A%B8%EB%9F%AC%EB%B8%94-%EC%8A%88%ED%8C%85#-%EB%B3%91%ED%95%A9-%EC%8B%9C-%ED%85%8C%EC%8A%A4%ED%8A%B8-%ED%8C%8C%EC%9D%BC-%EB%B3%91%ED%95%A9%EC%97%90-%EB%8C%80%ED%95%9C-%EA%B3%A0%EB%AF%BC)

[์ ์๋ UML์ ํฌํจ๋์ง ์์๋ View Controller ๋ณํฉ์ ์ด๋ ค์](https://github.com/wonbi92/ios-calculator-app/wiki/%F0%9F%9A%80-%ED%8A%B8%EB%9F%AC%EB%B8%94-%EC%8A%88%ED%8C%85#-%EC%A0%9C%EC%8B%9C%EB%90%9C-uml%EC%97%90-%ED%8F%AC%ED%95%A8%EB%90%98%EC%A7%80-%EC%95%8A%EC%95%98%EB%8D%98-view-controller-%EB%B3%91%ED%95%A9%EC%9D%98-%EC%96%B4%EB%A0%A4%EC%9B%80)

    
## ๐ ์ฐธ๊ณ  ๋งํฌ

[Swift Language Guide - Protocols](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html)<br>
[Swift Language Guide - Extentions](https://docs.swift.org/swift-book/LanguageGuide/Extensions.html)<br>
[Swift Language Guide - Generics](https://docs.swift.org/swift-book/LanguageGuide/Generics.html)<br> 
[Swift Language Guide - Closures](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)<br>
[Receive messages from a UI object](https://help.apple.com/xcode/mac/11.4/#/dev9662c7670)<br>
[NumberFormatter](https://developer.apple.com/documentation/foundation/numberformatter)<br>
[์คํ ๋ ์ด์์ ์ ๋ณตํ๊ธฐ - ์ผ๊ณฐ๋ท๋ท](https://yagom.net/courses/autolayout/) 


---

[๐ ๋งจ ์๋ก](#-๊ณ์ฐ๊ธฐ)


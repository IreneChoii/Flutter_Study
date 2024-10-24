# 맥 OS 개발 환경 구축

## Software requirements
**Development tools** : Xcode / CocoaPods <br>
**Text Editor & IDE** : Visual Studio Code / Android Studio / IntelliJ IDEA <br><br>

## Operating System : Rosetta 설치
```
sudo softwareupdate --install-rosetta --agree-to-license
```
![Rosetta](https://github.com/user-attachments/assets/dbf34514-e0c7-40b8-9287-a1e31787128b)

<br>



## Flutter SDK 설치

### 1. Apple Silicon 용 zip 파일을 다운로드 받기
<img src="https://github.com/user-attachments/assets/bd482231-5b0e-402c-9027-83c45715eb35" width="50%">

<br><br>


 ### 2. /User/irene 폴더에 저 zip 파일 압축 풀기
 **경로** : /User/irene/flutter
 <br><br>
 <img src="https://github.com/user-attachments/assets/34c04e2c-b223-4078-a74f-247011ad41ef" width="70%">
 
 **숨김 파일 확인** : shift **+** command **+** .
  <br>
  <img src="https://github.com/user-attachments/assets/59119710-6023-4576-ae2a-23ad3ad8d254" width="70%">


<br>

## 환경변수 설정
### 1. 터미널에서 환경변수 설정으로 들어가기
```
nano ~/.zshrc
```

### 2. 밑에 두줄 추가 
```
# Flutter path
export PATH="$HOME/flutter/bin:$PATH"
```

### 3. 확인 
```
touch ~/.zshrc
open ~/.zshrc
```
<img src="https://github.com/user-attachments/assets/c48c6e19-2258-4ffa-b6d6-b68f47fa163c" width="50%">


### 4. 적용하기
```
source ~/.zshrc
```


### 5. 작동 확인
flutter 위치 확인
```
which flutter
```
<img src="https://github.com/user-attachments/assets/993c6d83-f3f4-4c21-86ef-8d79ac63344b" width="50%">

**flutter doctor** 입력하고 잘 작동하는지 확인
```
flutter doctor
```
<img src="https://github.com/user-attachments/assets/bf66bb0a-8a0a-4fcc-9eee-461aef923fec" width="65%">


## iOS 환경설정
### Xcode 설치

#### 1. App Store에서 설치
#### 2. command-line tools 환경설정 
```
sudo sh -c 'xcode-select -s /Applications/Xcode.app/Contents/Developer && xcodebuild -runFirstLaunch’
```

#### 3. Sign the Xcode license agreement 
```
sudo xcodebuild -license
```


## iOS device 환경설정
### iOS Simulator 설치 
```
xcodebuild -downloadPlatform iOS
```

### Simulator 설치 
```
open -a Simulator
```
<img src="https://github.com/user-attachments/assets/126fc18c-6b27-42d0-b10f-4663b6eb4390" width="40%">
<br>
<img src="https://github.com/user-attachments/assets/31ba9fbd-b0cc-4653-8cbd-b9485bc1de9e" width="40%">


## CocoaPods 설치
### Homebrew 설치
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### rbenv 설치
```
brew install rbenv
```

### rbenv 관련 설정을 ~/.zshrc에 추가
```
첫 번째 명령어 : export PATH="$HOME/.rbenv/bin:$PATH"
두 번째 명령어 : eval "$(rbenv init - zsh)"
```

### 루비 버전 검색
```
rbenv install -l
```
<img src="https://github.com/user-attachments/assets/13beeb6b-bd01-457f-844f-1df313b679a5" width="65%">

### 루비 설치 명령어
```
rbenv install 3.3.5
```
![image](https://github.com/user-attachments/assets/f6d37b60-0a28-4520-b85e-cc051856854d)


### 루비 버전 설정
```
rbenv global 3.3.5
```

### 루비 설치 확인
```
which ruby
```
<img src="https://github.com/user-attachments/assets/bf6f2b5d-2eb8-4be6-a36c-7ff58e6db36d" width="50%">


### Ruby 환경변수 설정
#### ~/.zshrc에 Ruby 환경변수 추가
<br>
<img src="https://github.com/user-attachments/assets/137d291b-85a4-497d-9889-42ac06f8acd1" width="65%">

#### nano ~/.zshrc
<img src="https://github.com/user-attachments/assets/31eead3e-e352-4a47-ae28-8b4e9b1da5c0" width="65%">


### CocoaPods 설치
```
sudo gem install cocoapods
```
<br><br>

## Android Studio에 Flutter 추가
<div>
  <img src="https://github.com/user-attachments/assets/df57e3c7-53c9-4692-af90-ca122c6f431a" width="45%">
  <img src="https://github.com/user-attachments/assets/d37d23e1-d791-4ceb-949d-56e6fbcdaab9" width="45%">
</div>

## 확인
```
flutter --version
```
<img src="https://github.com/user-attachments/assets/4127dfcd-f273-45d4-8fcb-e451d54b60d3" width="60%">


<br><br><br>



  
## 제 4장: 플러터의 핵심은 위젯이다!
- 위젯의 기본 개념을 한 번에 이해할 수 있도록 설명합니다.
<br><br>
  
## 제 5장: 플러터를 위한 다트 기초지식
- 플러터 앱을 만들기 위해서 반드시 알아야하는 프로그래밍 언어인 다트(Dart)의 기본 개념을 핵심만 뽑아서 심플하게 설명합니다.
<br><br>
  
## 제 6장: 플러터 왕초보 탈출하기
- 처음 플러터 앱을 만들 때 템플릿처럼 구성되는 main.dart 페이지의 코드를 완벽하게 이해할 수 있도록 하나하나 설명합니다.
<br><br>
  
## 제 7장: 캐릭터 카드 페이지 앱 만들기
- 플러터의 주요 기본 위젯들을 사용해서 귀여운 캐릭터 카드페이지 앱을 만들어 봅니다.
- [캐릭터 카드페이지 앱](https://github.com/icodingchef/character_page_app)
<br><br>
  
## 제 8장: Animal Sounds 앱 구현하기
좀 더 다양한 위젯들을 사용해서 동물 이미지를 탭(tap)하면 해당 동물의 울음 소리가 구현되는 보다 완성도 높은 앱을 만들어 봅니다.
- [Animal Sounds 앱](https://github.com/icodingchef/animal_book)
<br><br>
  
## 제 9장: Stateless 위젯 vs Stateful 위젯
- 플러터의 핵심인 Stateless 위젯과 Stateful 위젯에 대한 심화학습을 합니다.  
- [부모 위젯이 자식 위젯에게 데이터 전달 예제 앱](https://github.com/icodingchef/data_pass)
- [build() 메서드 호출 예제 앱](https://github.com/icodingchef/stateless_example)
- [setState() 메서드 호출 예제 앱](https://github.com/icodingchef/stateful_ex)
- [final 변수 사용 예제 앱](https://github.com/icodingchef/final_app)
- [Stateful 위젯 인스턴스 재사용 예제 앱](https://github.com/icodingchef/stateful_reinitialize/tree/updated)
- [widget 속성 사용 예제 앱](https://github.com/icodingchef/stateful_widget)
<br><br>
  
## 제 10장: 버튼과 라우트
- 플러터 앱에서 사용되는 버튼들과 페이지 이동 구현 방법을 알아봅니다. 특히 페이지 이동과 관련해서 플러터 입문자들이 가장 어려워 하는 개념중에 하나인 "BuildContext"에 대해서도 알아봅니다.
- [플러터 버튼 예제 앱](https://github.com/icodingchef/buttons)
- [앱화면 이동 예제 앱](https://github.com/icodingchef/navigator_ex)
<br><br>
  
## 제 11장: 로그인 페이지와 코드 리팩토링
- 다양한 애니메이션이 구현되는 깔끔한 로그인 페이지 UI를 만들어 보고, 이와 관련해서 보다 효율적인 유지/보수를 위한 코드 리팩토링 방법도 알아봅니다.
- [로그인 페이지 UI 앱](https://github.com/icodingchef/login_app)
<br><br>
  
## 제 12장: 반응형 레이아웃 앱
- 다양한 기기에 맞추어서 일관된 UI를 구현할 수 있는 기초적인 반응형 레이아웃을 만드는 방법을 알아봅니다.
- [반응형 레이아웃 앱](https://github.com/icodingchef/login_responsive_app)
<br><br>
  
## 제 13장: 로또 앱 구현하기
- 플러터 앱을 만들 때 가장 많이 사용되는 위젯과 기능들을 사용해서 재미있는 로또 앱을 만들어 봅니다.
- [로또 앱 1단계](https://github.com/icodingchef/login_lotto)
- [로또 앱 2단계](https://github.com/icodingchef/login_responsive_lotto2)
- [로또 앱 3단계(최종)](https://github.com/icodingchef/login_lotto2)
<br><br>
  
## 제 14장: Future, async, await
- 거의 모든 앱에서 사용된다고 할 수 있는 "비동기 방식"을 구현하는 기본 방법과 개념에 대해서 충실하게 알아봅니다.
- [Future 데이터 출력 앱](https://github.com/icodingchef/future_example)
- [Stream 데이터 출력 앱](https://github.com/icodingchef/stream_example)
<br><br>
  
## 제 15장: 날씨 앱 구현하기
- Open Weather Map의 API를 사용해서 현재 내가 있는 지역의 날씨를 출력해 주는 실용적인 앱을 만들어 봅니다.
- [날씨 앱 1단계](https://github.com/icodingchef/weather_app_part1)
- [날씨 앱 2단계](https://github.com/icodingchef/weather_app_part2)
<br><br>
  
## 제 16장: 파이어베이스
- 파이어베이스 데이터에이스를 통해서 회원가입과 로그인 기능을 구현할 수 있는 앱을 만들어 봅니다. 특히, 기존의 로또 앱을 사용해서 로그인을 하면 로또 번호를 생성하는 페이지로 이동하는 앱을 만들어 봅니다.
- [Firebase 앱](https://github.com/icodingchef/login_lotto2/tree/login_lotto2_firebase)
<br><br>
  
## 제 17장: 상태 관리 입문
- 플러터 앱을 만들 때 매우 중요한 개념인 상태관리의 개념에 대해서 알아보고, Proiver를 사용한 기초적인 상태관리 방법을 알아봅니다.
- [Provider 위젯을 사용한 상태 관리 앱](https://github.com/icodingchef/provider_app1)
- [ChangeNotifierProivder 위젯을 사용한 상태 관리 앱](https://github.com/icodingchef/provider_app2)
<br><br>






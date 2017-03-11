Aviasales/Jetradar iOS SDK
=================
[![CocoaPods](https://img.shields.io/cocoapods/v/AviasalesSDK.svg)](https://cocoapods.org/pods/AviasalesSDK)
[![CocoaPods](https://img.shields.io/cocoapods/p/AviasalesSDK.svg)](https://cocoapods.org/pods/AviasalesSDK)
[![Travis](https://img.shields.io/travis/KosyanMedia/Aviasales-iOS-SDK/master.svg)](https://travis-ci.org/KosyanMedia/Aviasales-iOS-SDK)
  
####README in [English](https://github.com/KosyanMedia/Aviasales-iOS-SDK/blob/master/README_EN.md)  
  
##Описание


[Aviasales](https://www.aviasales.ru)/[Jetradar](https://www.jetradar.com) iOS SDK — framework, позволяющий добавить поиск полетов в ваше приложение. Когда пользователь покупает билет, вы получаете выплаты. Framework использует поисковые системы Aviasales и Jetradar. Он используется при разработке официальных приложений.

Framework включает в себя:

* библиотеку для интеграции с поисковой системой;
* шаблонный проект с пользовательским интерфейсом.
 
Вы можете использовать шаблонный проект для создания своего собственного поискового приложения. Для того, чтобы отслеживать выплаты, посетите нашу партнерскую сеть — [Travelpayouts.com](https://www.travelpayouts.com/).

Узнайте подробнее о доходах в [Travelpayouts FAQ](https://support.travelpayouts.com/hc/ru/articles/203955613-Комиссия-и-выплаты).

##<a name="usage"></a>Использование шаблонного проекта
### 📲 Установка
1. Скачайте себе последний release (не beta) шаблонного проекта отсюда: [https://github.com/KosyanMedia/Aviasales-iOS-SDK/releases](https://github.com/KosyanMedia/Aviasales-iOS-SDK/releases).
2. Скачайте зависимости, выполнив команду ```pod install``` в каталоге с шаблонным проектом.  
**После этого для работы с проектом используйте файл ```AviasalesSDKTemplate.xcworkspace```**.
3. Подставьте правильные значения партнерского токена и маркера в файле ```JRAppDelegate.m``` в константы ```kJRAPIToken``` и ```kJRPartnerMarker```.
4. Если у вас еще нет партнерского маркера и токена, получите их в [Travelpayouts](https://travelpayouts.com/).

###🔧🌻 Настройка цветов
Для настройки цветовой схемы приложения используются файлы JRColorScheme.h и JRColorScheme.m. В них прописаны все, которые отображаются в шаблонном проекте. Вот список с пояснениями:

#### Фон
|Название|Описание|
|--------|--------|
mainBackgroundColor| Основной цвет фона
lightBackgroundColor| Светлый цвет фона — на экране ожидания поиска iPad
darkBackgroundColor | Тёмный цвет фона — в форме поиска и фильтрах
itemsBackgroundColor | Фоновый цвет ячеек — в результатах поиска
itemsSelectedBackgroundColor | Фоновый цвет выбранной ячейки — в результатах поиска
iPadSceneShadowColor | Цвет тени в iPad

#### Tab Bar
|Название|Описание|
|--------|--------|
tabBarBackgroundColor | Фоновый цвет TabBar — переключатель между сложным и простым поиском
tabBarSelectedBackgroundColor | Фоновый цвет выбранного элемента в TabBar — переключатель между простым и сложным поиском
tabBarHighlightedBackgroundColor | Фоновый цвет нажатого элемента в TabBar — переключатель между простым и сложным поиском

#### Текст
|Название|Описание|
|--------|--------|
darkTextColor | Тёмный цвет текста
lightTextColor | Светлый цвет текста
inactiveLightTextColor | Цвет светлого текста, с коротым не возможно взаимодействовать
labelWithRoundedCornersBackgroundColor | Цвет фона текста со скругленными уголками — используется для количества пересадок
separatorLineColor | Цвет разделителя

#### Кнопки
|Название|Описание|
|--------|--------|
buttonBackgroundColor | Фоновый цвет кнопки
buttonSelectedBackgroundColor | Фон выделенной кнопки
buttonHighlightedBackgroundColor | Фон нажатой кнопки
buttonShadowColor | Цвет тени кнопки

#### Popover
|Название|Описание|
|--------|--------|
popoverTintColor | Фон всплывающего окна со списком — при выборе класса перелета

#### ⭐️⭐️⭐️⭐️⭐️
|Название|Описание|
|--------|--------|
ratingStarDefaultColor | Цвет звезды по умолчанию
ratingStarSelectedColor | Цвет выделенной звезды


### 🤑 Настройка рекламы Appodeal
Для удобства интеграции рекламных сетей мы добавили медиаторную штуку [Appodeal](https://www.appodeal.com/). Для её настройки:

* задайте параметр kAppodealApiKey в файле,
* В файле JRAdvertisementManager задайте параметры ```showsAdDuringSearch``` и ```showsAdOnSearchResults``` у объекта ```JRAdvertisementManager``` если хотите отключить показ рекламы.

По умолчанию отображается:

* видео или interstitial реклама на экране ожидания,
* нативная реклама в поисковой выдаче.

Для тестирования рекламы включите тестовый режим при инициализации рекламного менеджера: строчка ```[adManager initializeAppodealWithAPIKey:appodealAPIKey testingEnabled:NO];```. В тестовом режиме Appodeal будет заполнять все рекламные места своей рекламой и они не будут пустыми. Не забудьте перед выкладкой приложения выключить тестовый режим.

#### Подключение рекламных сетей
Подключение реклмных сетей осуществляется добавлением в проект соответствующих адаптеров от Appodeal: [https://github.com/appodeal/appodeal-ios-sdk-mobile-adapters](https://github.com/appodeal/appodeal-ios-sdk-mobile-adapters). В нашем проекте адаптеры находятся в папке ```Source > Libs > Appodeal > Adapters```. Добавьте туда необходимые и не забудьте добавить их также в Xcode.

По умолчанию мы включили в проект адаптеры, которые весили меньше 20MB, чтобы размер собранного приложения был небольшой:

* APDGoogleAdMobAdapter
* APDAmazonAdsAdapter
* APDPubnativeAdapter
* APDUnityAdapter
* APDVungleAdapter

Будьте аккуратны с адаптером APDStartAppAdapter. Он работает некорректно с видео.

#### 💇 Выключение рекламы от Appodeal
Если вы решили **не пользоваться рекламой от Appodeal**, выключить её можно очень просто:

1. При инициализации ```JRAppLauncher`` в файле JRAppDelegate.m напишите nil вместо ```kAppodealApiKey```

	```objc
	[JRAppLauncher startServicesWithAPIToken:kJRAPIToken
                           partnerMarker:kJRPartnerMarker
                          appodealAPIKey:kAppodealApiKey];
	```
2. Если при этом вам также хочется уменьшить вес приложения — удалите через Xcode адаптеры из папки Source/Libs/Appodeal/Adapters. Главное не удаляйте APDVungleAdapter (без него Appodeal будет выводить ошибки в Xcode при попытке собрать проект 😒).

### 🖇 Deeplinks
Приложение поддерживает кодировку билетов и поиск для передачи с помощью deeplink, а так же раскодировку обратно с помощью объекта ```JRSDKSearchInfoUrlCoder```. Подробнее можно узнать в файле JRAppDelegate.m в методе ```- (void)performUrlOpening:(NSURL *)url```.


## Установка SDK
Легче всего установить AviasalesSDK с помощью [CocoaPods](https://cocoapods.org/pods/AviasalesSDK). Эта система автоматически подключит все нужные фрэймворки и сторонние библиотеки:

```ruby
pod 'AviasalesSDK', '~> 2.0.0'
```

Об интеграции шаблонного проекта в уже существующий проект можно узнать в [русской](TemplateIntegration_RU.md) и [english](TemplateIntegration.md) версии.

Вы так же можете воспользоваться шаблонным проектом с нуля и кастомизировать его под ваши нужды. В разделе [использование шаблонного проекта](#usage) приведены инструкции.

[![GitHub issues](https://img.shields.io/github/issues/BrunoJurkovic/popup_card)](https://github.com/BrunoJurkovic/popup_card/issues)
[![GitHub stars](https://img.shields.io/github/stars/BrunoJurkovic/popup_card)](https://github.com/BrunoJurkovic/popup_card/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/BrunoJurkovic/popup_card)](https://github.com/BrunoJurkovic/popup_card/network)

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h3 align="center">popup_card</h3>

  <p align="center">
    An awesome and simple card-styled dialog with a beautiful animation.
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

![screenshot](https://i.imgur.com/YAbJdXq.gif)

There are many similar dialog projects that display a dialog, but popup_card features a beautiful
transition, Hero style. 

<!-- GETTING STARTED -->
## Getting Started

Follow these steps and you will be up and running in no time!

### Installation

1. Go to the pub.dev link at [https://example.com](https://example.com) and copy the latest version
2. Go to pubspec.yaml and paste:
  ```yaml
  dependencies:
    popup_card: [latest_version]
  ```
3. Run `flutter pub get` in terminal.


<!-- USAGE EXAMPLES -->
## Usage

`popup_card` works in two steps: you wrap the widget with the package's custom gesture detector, and then provide it some info
with a `popUp` property to display the actual popup item.

1. Wrap a widget with a `PopUpItemDetector` and provide it with a `tag`:
  ```dart
  PopupItemLauncher(
        tag: 'test',
        child: Material(
          color: Colors.white,
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          child: const Icon(
            Icons.add_rounded,
            size: 56,
          ),
        ),
        popUp: ...
      ),
  ```
2. Provide the popUp paramater: 
  ```dart
  popUp: PopUpItem(
          padding: EdgeInsets.all(8), // Padding inside of the card
          color: Colors.white, // Color of the card
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)), // Shape of the card
          elevation: 2, // Elevation of the card
          tag: 'test', // MUST BE THE SAME AS IN `PopupItemLauncher`
          child: PopUpItemBody(), // Your custom child widget.
        ),
  ```


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

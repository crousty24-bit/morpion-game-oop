# Morpion Game OOP

Collaborative project:
  - [Allen Koch](https://github.com/crousty24-bit)
  - [Théo Villalba](https://github.com/Meetheora)

## Overview

Morpion (Tic-Tac-Toe) is a classic two-player game implemented using object-oriented programming principles in Ruby. This project demonstrates proper software design patterns, including model separation, game state management, and test-driven development practices.

## Features

- Two-player gameplay with turn-based mechanics
- Object-oriented architecture with well-defined responsibilities
- Board state management and validation
- Game win/draw detection logic
- Comprehensive test coverage
- Interactive command-line interface

## Requirements

- Ruby 2.5 or higher
- Bundler

## Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   bundle install
   ```

## Usage

Start the game by running:
```bash
ruby app.rb
```

Follow the on-screen prompts to play. Players take turns selecting positions on the 3x3 board to place their marks.

## Project Structure

```
lib/
  app/
    board.rb          - Board state and game logic
    board_case.rb     - Individual cell representation
    game.rb           - Game flow and turn management
    player.rb         - Player information and moves
  views/
    show.rb           - Display rendering and output
spec/
  spec_helper.rb      - Test configuration
```

## Student Project Disclaimer

This is a student project created as part of The Hacking Project curriculum. It is intended for educational purposes to demonstrate object-oriented programming concepts and Ruby fundamentals. While the code is functional and tested, it should not be considered production-ready or a reference implementation for enterprise applications.

## Contributing

This is a student project completed as coursework. Modifications and contributions are welcome for educational purposes.

## License

This project is open source and available for educational use.
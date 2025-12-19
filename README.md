# agent

agent is a set of zshell scripts (`chat` and `fim`) for interfacing with [Ollama](https://ollama.com) locally for both chat and fill in the middle code completion.

## Installation

After running the requirements, use the `Makefile`

    $ git clone https://github.com/keegnotrub/agent
    $ cd agent
    $ sudo make install

## Requirements

Install the needed binaries in your package manager of choice.

    # Macports
    $ sudo port install jq ollama

    # Homebrew
    $ brew install jq ollama
    
Setup Ollama to serve codestral

    $ ollama pull codestral

    # Macports
    $ sudo port load ollama

    # Homebrew
    $ brew services start ollama

## Usage `chat`
    
    $ chat <prompt>

    Use prompt to provide the agent with text.

    Text can also be piped to the agent for the prompt.
    $ echo 'code a factorial method in Ruby' | chat

## Usage `fim`
    
    $ fim <cursor>

    Use cursor to provide the position for completion within text.

    Text should be piped to fim for completion.
    $ cat app/models/user.rb | fim 732

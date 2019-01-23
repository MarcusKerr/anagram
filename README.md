# Anagram

An anagram is a word or phrase formed from another by rearranging its letters, ex. SILENT is an anagram of LISTEN.

## Quickstart:

**How to install:**<br>

1. Clone this project `https://github.com/MarcusKerr/anagram.git`
2. Change into the project directory `cd anagram`
3. Run `bundle install` to add depencencies

**How to use:**
<br>
1. In the commant line run `ruby main.rb`

```
$ ruby main.rb
```

2. The app will ask you to enter a file:

```
> Enter a file of words (to exit enter 'STOP'):
> test_words.txt
```

3. You will then be asked to enter your anagram:

```
> Enter your anagram (to exit enter 'STOP'):
> toga
```

4. You will then see a list of the anagrams.

5. Enter 'STOP' at any time to exit the app.

```
> Enter your anagram (to exit enter 'STOP'):
> STOP
```

**Example usage:**
<br>
```
$ ruby main.rb
> Enter a file of words (to exit enter 'STOP'):
> test_words.txt
> Enter your anagram (to exit enter 'STOP'):
> alerts
> artels
> estral
> laster
> salter
> slater
```

**How to run tests:**
<br>
Feature tests and unit tests can both be executed with the command `rspec`:

```
$ rspec
```

### Test coverage:

Simplecov final coverage report:
<img width="1439" alt="screenshot 2019-01-23 at 14 18 59" src="https://user-images.githubusercontent.com/15127871/51612705-e2ba1480-1f19-11e9-98ce-087a5e0cc107.png">


## User Stories:

```
As a feature of an app,
So that I can prevent users from inputting disallowed words.
I would like to check whether or not a word is an anagram of a given set of words.

As a user,
So that I can see if my word is valid,
I would like to be able to be able to input words.

As a user,
So that I know whether or not my word was valid,
I would like a message telling me if my word was an anagram of the included words.
```

## Technologies:

* Ruby
* Rspec - Teating framework for Feature and Unit tests
* Simplecov - Code coverage tool
* Rubocop - For linting Ruby syntax and conforming to a popular style guide


## Brief:

Task: Write a command line app in the language of your choice which satisfies the following user story:

- As a feature of an app, I would like to check whether or not a word is an anagram of a given set of words so that I can prevent users from inputting disallowed words.

## ACCEPTANCE CRITERIA

1. The feature can run as a standalone application
2. It takes a configurable list of words to check against
3. Outputs whether or not input words are an anagram of any word in the list

## My approach:

1. I refined the brief into clear and clear and concise user stories.
2. Sketched a diagram of my current understandig of the system.
3. I focusd on the BDD cycle always writing a feature test first followed by unit tests, followed by business logic.

## Next steps:

- Refactor 'Anagram.find' further into smaller methods with single responsibility .

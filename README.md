# Anagram

An anagram is a word or phrase formed from another by rearranging its letters, ex. SILENT is an anagram of LISTEN.

![scrabble](https://user-images.githubusercontent.com/15127871/51637600-1fa2fd00-1f54-11e9-884b-0084ce25c79d.jpg)


## Quickstart:

**How to install:**
<br>

1. Clone this project `https://github.com/MarcusKerr/anagram.git`
2. Change into the project directory `cd anagram`
3. Run `bundle install` to install the depencencies

**How to use:**
<br>
**1.** In the command line run `ruby main.rb`

```
$ ruby main.rb
```

**2.** The app will ask you to enter a file:

```
> Enter a file of words (to exit enter 'STOP'):
> test_words.txt
```

**3.** You will then be asked to enter your search word:

```
> Enter your search word (to exit enter 'STOP'):
> toga
```

**4.** You will then see a list of the anagrams.

```
> Matched anagrams of 'toga' are:
> goat
```

**5.** Enter 'STOP' at any time to exit the app.

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

> Matched anagrams of 'alerts' are:
> artels
> estral
> laster
> salter
> slater

> Enter your anagram (to exit enter 'STOP'):
> STOP

```

**How to run tests:**<br>
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

## Diagram:
![anagram diagram](https://user-images.githubusercontent.com/15127871/51859837-002f1a00-2330-11e9-90db-dc90388f5b8b.png)

## Technologies:

* Ruby
* Rspec - Teating framework for Feature and Unit tests
* Simplecov - Code coverage tool
* Rubocop - For linting Ruby syntax and conforming to a popular style guide


## Brief:

Task: Write a command line app in the language of your choice which satisfies the following user story:

- As a feature of an app, I would like to check whether or not a word is an anagram of a given set of words so that I can prevent users from inputting disallowed words.

### Acceptance criteria: 

1. The feature can run as a standalone application
2. It takes a configurable list of words to check against
3. Outputs whether or not input words are an anagram of any word in the list

## My approach:

1. I refined the brief into clear and concise user stories.
2. Sketched a diagram of my current understanding of the system.
3. I focusd on the BDD cycle always writing a feature test first followed by unit tests, followed by business logic.

I decided that the steps I wanted to take to solve the problem were:
  - **Sort the list of given words by length** - This would make searching easier.
  - **Set a starting index for the search** - I determined the starting index by finding the index of the first word in           the sorted arry of given words, that was the same length as the user's entered word.
  - **Set an ending index for the search** - Index of the first word that was one greater than the user entered word, or index     of the last item in the array
  - **Search between these two indices** - Searching only between ths starting and ending indices will save time.
  - **Standardize and compare** - I arranged the letters of each word in alphabetical order, and compated this with the user's     entered word. If they matched I added the word to an array.

## Next steps:

- Refactor 'Anagram.find' further into smaller methods with single responsibility.
- I'm going to rename some of the variable names, they are starting to confuse me!

The exercise is as follows:

"To complete in the candidate's own time.

We would like the candidate to build a simple web or command line application, 

which should allow users to enter an arbitrary GitHub username, 

and be presented with a best guess of the GitHub user's favourite programming language.

This can be computed by using the GitHub API to fetch all of the user's public GitHub repos, 

each of which includes the name of the dominant language for the repository.

Documentation for the GitHub API can be found at http://developer.github.com.

Any programming language and technology (within reason) can be used to complete the test."

Plan of action:

- get request Github API (HTTParty)
- parse JSON
- get language for each repository
- find most popular language in array 
- use webmock to test


["Ruby", "Ruby", "Ruby", "Ruby"] (word count week 9 test)

ruby lang_freq.rb
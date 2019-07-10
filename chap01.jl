#Problems (you can use binomial(n,k), instead of composing factorial() calls in julia)
#1-1
#a (12)₄ -> 11,880
ans =  factorial(12)/(factorial(12-4))
#b 12 choose 4 -> 495
ans = factorial(12)/(factorial(4)*factorial(12-4))
#c 100 choose 97 -> 162700
ans =  factorial(big(100))/(factorial(big(97))*factorial(100-97))
#d  12 choose 4,3,5 -> 27720
ans =  factorial(12)/(factorial(4)*factorial(3)*factorial(5))
#e (n)₃ -> n³-3n²+2n as n!/(n-3)! == n(n-1)(n-2)(̶n̶-̶3̶)̶!̶/(̶n̶-̶3̶)̶!̶ ==  n(n-1)(n-2)
#d n choose 3 -> ⅙ n³-3n²+2n where  n!\3!(n-3)! ==  n(n-1)(n-2)(̶n̶-̶3̶)̶!̶/3!(̶n̶-̶3̶)̶!̶ == n³-3n²+2n/3!

#1-2 A function assigns a value from a range of k values to each point in a domain of m points. How many distinct functions can be defined?
#from(nᵏ) k posible states of m items == kᵐ

#1-3 How many code letters can be formed when each letter is represented by a sequence of four or fewer dots and/or dashes? (Some examples of such sequences: ⋯ -, --·, ·-)
ans = 2^1 + 2^2 +2^3 +2^4

#1-4
#a roll of 3 dice (assuming 6 states) and nᵏ
ans = 6 ^ 3

#b the toss of n coins from 2  possible states of n toss/items
#ans = 2ⁿ

#c the designation of four persons from a group of 10 to serve as president, vice-president, secretary, and treasurer.
#from 10 choose 4 order  matters(with duplicates) and without replacement
ans = factorial(10)/factorial(10-4)

#1-5 Consider sequences of ten symbols, each a: '+' or a: '−'
#a How many distinct sequences are possible?
#from nᵏ -> 2 states(+,-) of 10
ans = 2 ^ 10

#b How many of the sequences in (a) have at least eight +’s in them?
ans = factorial(10)/(factorial(2)*factorial(8)) + factorial(10)/(factorial(1)*factorial(9)) + factorial(10)/factorial(10)

#c How many contain exactly five +’s and exactly five—’s?
ans = factorial(10)/(factorial(5)*factorial(5))

#d Of the sequences in (c), how many have at least four +’s in a row?
ans = missing

#c Of the sequences in (c), how many have exactly two +’s to the left of the middle?
ans = missing

# 1-6 Three men and three women are to be seated in a row.
#a In how many different ways can this be done with no other restriction?
ans = missing

#b with men and women alternating?
ans = missing

#c with the men sitting together and the women sitting together? so that two specified people sit together?
ans = missing

# 1-7 Find the number of ways
#a of arranging six diplomats to be seated around a round table.
ans = missing

#b of arranging six keys on a ring. [Assume in (a) that there is no “head” of the table, and in (b) that what counts is which key is between which two keys.]
ans = missing

# 1-8 A deck of playing cards includes 13 cards (ace, king, queen, jack, 10, 9, ..., 2) in each of two black suits (spades, clubs) and each of two red suits (hearts, diamonds).
#a How many distinct poker hands of five cards can be dealt?
ans = factorial(big(52))/(factorial(5)*factorial(big(52-5)))

#b How many of the hands in (a) are all hearts?
ans = (factorial(big(13))/(factorial(5)*factorial(13-5)))

#c How many of the hands in (a) are “straights”—include five cards that can be put in an unbroken sequence (e.g., 8, 9, 10, jack, queen)?
ans = missing

#d How many of the hands in (c) are all of the same suit? How many of the hands in (a) include four cards of the same denomination (“four of a kind”)?
ans = missing

# 1-9 In one state lottery, players try to match six numbers drawn without replacement from the integers 1 to 44. Verify the published report that there are about seven million combinations.
ans = factorial(big(44))/(factorial(6)*factorial(big(44-6)))

# 1-10 A delegation of three of the ten members of a city council is to be chosen to represent the council at a convention.
#a In how many ways can the delegation be chosen?
ans = factorial(10)/(factorial(3)*factorial(10-3))

#b can it be chosen, if two particular members refuse to go together?
ans = (factorial(10)/(factorial(3)*factorial(10-3))) - 2^3

#c can it be chosen if two certain members will either both go or neither?
ans = (factorial(10)/(factorial(3)*factorial(10-3)) - 2^3) -  factorial(10)/(factorial(2)*factorial(10-2)) -3

# 1-11 In how many ways can a group of eight individuals be divided into
#a subcommittees of sizes three, three, and two (with distinct tasks)?
ans = factorial(8)/(factorial(3)*factorial(3)*factorial(2))

#b four pairs, the individuals in a pair to play each other in tennis, on four indistinguishable tennis courts?
ans = (factorial(8)/(factorial(2)*factorial(2)*factorial(2)*factorial(2))) / factorial(4)



# Mavis.jl
Founding the search framework!
Note:
This will not be implemented for a while. I often make the markdown early to gauge interest.
For those not interested in fancy words, please ignore the next section.

### Introduction, hype, Why Mavis? #
Mavis stands for "My arsenal (of, for) very interesting search (algorithms, utility, technique, etc)"!
It also stands in honor of one of the smartest fictional character of all time!
So, let's bring Mavis to the real life! Let Mavis be no more a dream.
Even with an overwhelming odd, strained, Mavis can bring you to the complete victory cuz Mavis is Mavis!
Even only as a computer, no feeling, Mavis is still Mavis, and will always be, for the real power of Mavis
comes not from anything but pure search ability into the future!
So, when things seem dire, use the great "Mavis"! Let "Mavis" find the perfect solution and turn the tide of the battle.
Follow "Mavis" to certain and utter victory!
### Real intro. #
That was a mouthful speech right? Yay... I know.
On a more serious note, welcome to Mavis, the founding search framework for Julia.

### Why Mavis, for real? #
Artificial intelligence has two parts, search and learning. While there is no shortage of learning frameworks such as
Tensorflow, Pytorch, or even the native Flux for Julia, there is certainly a lack of search algorithms.
Protein folding, RNA prediction, Chess, Go, even construction or glass manufacturing can be naturally framed as a search
problem. Even compilers, with many optimization options possible, can be framed as "search" as well.
So, why aren't search algorithms more popular and well-developed? Because it is hard to do.

For example, when searching a simple search, you may want to recur like...
```
search(state, depth) = max(search(i, depth-1) for i in searched_options(state))
```
Doing a minimax search, it would be ```max(min(something))``` instead.
However, explicit recursion is inefficient, so be prepared to take the recursion out and implement it via stack or
something.
Moreover, if you do pruning, extension, heuristics, ordering, lazy-movegen, transposition, etc... your code gonna be VERY COMPLICATED.
and the logic gonna be split across the codebase. Maybe you need to store that knight to f5 was good in one line, to then
use it in another line? Oh, well... your logic gonna be scattered all across codebases. Your code might look like...
```
logic_1, logic_2
logic_1, logic_3 
logic_2, logic_4
logic_1...
loop
	logic_2
	logic_4
	if something
		logic_3
	end
end
```

And worse, because search involves both a "static eval" and the function to generate possible "moves", 
both involving a function call, which makes python unsuitable because "It's a higher-order function and 
python is bad at that!". No numba or cython helps. Check out [This](http://www.stochasticlifestyle.com/why-numba-and-cython-are-not-substitutes-for-julia/).
So, when this is not possible, Julia comes to mind.
With Julia, higher-order function is no issue. Julia's compiler can deal with it.
Metaprogramming will bring the logic in one place so that "killer heuristics" stays in one place and so on.

So, welcome to Mavis.
### Plan #
The program has to "construct" logic for each type of node as well as maintained global structure for you. 
It must then construct the logic of each node, that is, what to do at each node of the search.
(In search logic, of course, not as explicit recursion. There are depth-first, best-first, etc type. It will depend.)
before bringing it all together in a final code which actually
implements the "search" maybe with stack, maybe with queue, maybe via traversing the search tree. It depends.

It sounds crazy, and it is, so it will take a while, but I'm glad if you are with my ambition.
### Contribution # 
When it is ready, you can use it, make feature requests, etc...
Please keep this MIT-licensed. While many of the best searching algorithms open-source are GPL-licensed, this one
is an abstract library. It shall be licensed as such.
You can discuss with me if you are interested in it.
It gonna take a while, and I have not decided on the structure yet, so please discuss with me before we continue.
Perhaps I still don't know what I am doing.
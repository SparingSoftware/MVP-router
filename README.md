Sample project with iOS Navigation / Routing with MVP architecture.

On branch master[link] we have standard aproach with ViewController pushing, presenting or segue'ing to other screens.

On branch router-simple there is implementation of simple Router which extract navigation operations from ViewController. It is injected into Presenter which is able to navigate without calling view's methods.

TODO: Advanced Router -deeplinks -1 router instead of multiple (for each screen)

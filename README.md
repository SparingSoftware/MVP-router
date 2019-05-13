### Sample project with iOS Navigation / Routing with MVP architecture.

On branch [master](https://github.com/SparingSoftware/MVP-router "master") we have standard aproach with ViewController pushing, presenting or segue-ing to other screens.

On branch [router-simple](https://github.com/SparingSoftware/MVP-router/tree/simple-router "router-simple") there is an  implementation of simple Router which extract navigation operations from ViewController. It is injected into Presenter which is able to navigate without calling view's methods.

**TODO**: Advanced Router
- Deeplinks
- One router instead of multiple (for each screen)

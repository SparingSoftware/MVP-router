### Sample project with iOS Navigation / Routing with MVP architecture.

On branch [master](https://github.com/SparingSoftware/MVP-router "master") we have standard aproach with ViewController pushing, presenting or segue-ing to other screens.

On branch [router-simple](https://github.com/SparingSoftware/MVP-router/tree/simple-router "router-simple") there is an  implementation of simple Router which extract navigation operations from ViewController. It is injected into Presenter which is able to navigate without calling view's methods.

**TODO**: Advanced Router
- Deeplinks
- One router instead of multiple (for each screen)

---

### How it works

In standard approach Presenter (or view itself) will call method to navigate:
**In Presener / View:**
```swift
func loginClicked() {
	view?.showMainScreen(user: User(name: "Piotr"))
}
```
```swift
func showMainScreen(user: User?) {
	// use storyboard init
	let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
	if let nav = storyboard.instantiateViewController(withIdentifier: "MainTabNav") as? UINavigationController {
		if let vc = nav.children.first as? MainTabViewController {
			vc.loggedUser = user
			self.present(nav, animated: true, completion: nil)
		}
	}
}
```

With Router we move navigation method to seperate module:
```swift
class LoginRouter: IRouter {

	// ...

	func navigate(to destination: Destination) {
		switch destination {
		case .Main(let user):
		// ...
		// viewController?.present(nav, animated: true, completion: nil)
		break

		default: break
		}
	}
}
```
And a call is as simple as:
```swift
func loginClicked() {
	router?.navigate(to: .Main(user: currentUser))
}
```

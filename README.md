# Learn iOS development with Swift

## Table of Contents
- [Learn iOS development with Swift](#learn-ios-development-with-swift)
  - [Table of Contents](#table-of-contents)
  - [Shortcuts (*that i use frequently*)](#shortcuts-that-i-use-frequently)
  - [Learning Logs](#learning-logs)
    - [16 Mar 2022](#16-mar-2022)
    - [20 Mar 2022](#20-mar-2022)
    - [22 Mar 2022](#22-mar-2022)
    - [27 Mar 2022](#27-mar-2022)
    - [13 Apr 2022](#13-apr-2022)
    - [14 Apr 2022](#14-apr-2022)
    - [18 Apr 2022](#18-apr-2022)

---

## Shortcuts (*that i use frequently*)
| Key                        | Description            |
| -------------------------- | ---------------------- |
| `Command + 0`              | Toggle navigator panel |
| `Command + Option + 0`     | Toggle inspector panel |
| `Command + Shift + L`      | Open object library    |
| `Command + D`              | Duplicate object       |
| `Command + Option + Enter` | Toggle preview panel   |
| `Control + I`              | Format code            |
| `Option + Click`           | Open document          |


---

## Learning Logs

### 16 Mar 2022
- Learn how to use playgrounds.
- Learn about variables in Swift that have two types: `let` for immutable and `var` for mutable.
- Learn about optionals in Swift and how to unwrap using `if let`.
  ```swift
  var name: String? // This is an optional string.

  if let name = name { // Unwrap the optional to ensure it has a value.
    print("Hello, \(name)")
  }
  ```
- Use backslash for escaping characters.
  ```swift
  let name = "John"
  print("Hello, \(name)") // Hello, John
  ```
- Learn about `UIView` and `UILabel` and how to display labels in a view.
  - `UIView`
    ```swift
    let orangeBox = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    orangeBox.backgroundColor = .orange
    ```

  - `UILabel`
    ```swift
    let goodbyeMessage = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    goodbyeMessage.text = "Byeeeee"
    ```

### 20 Mar 2022
- Connect button to function by `Control + click` button in storyboard and drag to the function with `@IBAction` keyword in swift file.
- To get button's text, use `button.titleLabel?.text`.
- `viewDidLoad` function is called when the view is loaded.
- Open document by holding `Option` key and `click` on variables, functions.
- Center the button using autolayout by adding `Horizontal in Center` and `Vertical in Center` constraints.
- Update misplaced view by selecting yellow arrow in document outline and update the view's frame.
- To open preview, press `Command + Option + Enter`.
- To hide/show left sidebar, press `Command + 0` and right sidebar, press `Command + Option + 0`.

### 22 Mar 2022
- To create spacing constraints, Click `Add New Constraints` or `Control + drag` object to the view.
- To edit constraints, Double click on the blue line or edit the constraint's value in the attribute inspector panel.

### 27 Mar 2022
- Learn how to embed objects in a stack view
  - By adding stack view from object library.
  - By select multiple objects and select "Embed In".
- Edit alignment, distribution, spacing of stack view via inspector panel
- Autoshrink label for small screen by edit "Autoshrink" value in inspector panel.
- To add images, select "Assets" in project navigator and drag image to set viewer.

### 13 Apr 2022
- Adjust the size of objects for specific screen using size classes.
  - iOS devices have two size classes for width and height that can be either regular or compact.
  - By clicking on `+` button in the inspector panel, you can add size classes to that property.
- Testing dark mode by clicking on `Environment Overrides` and select dark mode in `Apperance` section.
- Learn how to use `UITableViewController`.
- Use `@IBOutlet` to connect objects in storyboard.
  ```swift
  @IBOutlet var nameLabel: UILabel!
  @IBOutlet var locationLabel: UILabel!
  @IBOutlet var typeLabel: UILabel!
  @IBOutlet var thumbnailImageView: UIImageView!
  ```

### 14 Apr 2022
- Learn to create action sheet using `UIAlertController` and `UIAlertAction`.
  ```swift
  let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
  let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)

  optionMenu.addAction(cancelAction)

  present(optionMenu, animated: true)
  ```
- Use `.actionSheet` to create action sheet and `.alert` to create alert dialiog.
- Learn closure syntax.
  ```swift
  let reserveActionHandler = { (action:UIAlertAction!) -> Void in
    // Body of the closure.
  }
  ```
- Cell in table view is reusable cell then some state may be persist when it's reused again.

### 18 Apr 2022
- Learn how to cast objects by using `as!`
  ```swift
  let cell = tableView.cellForRow(at: indexPath) as! RestaurantTableViewCell
  ```
- To hide/show `UIImageView` by setting its `isHidden` property.
- Create object by using `struct` and initializer by creating `init` function(s).
  ```swift
  struct Restaurant {
    var name: String
    var type: String
    var location: String
    var image: String
    var isFavorite: Bool
    
    init(name: String, type: String, location: String, image: String, isFavorite: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isFavorite = isFavorite
    }

    init() {
        self.init(name: "", type: "", location: "", image: "", isFavorite: false)
    }
  }
  ```
- Struct can have multiple initializers.
- Create instance of struct without `new` keyword.
  ```swift
  Restaurant(name: "Traif", type: "American", location: "New York", image: "traif", isFavorite: false)
  ```

---

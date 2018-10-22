import XCTest
import ModuleManager

protocol UserProtocol {
    var name: String { get set }
}

struct User: ModuleObjectProtocol, UserProtocol {
    var name: String
    
    static func instance() -> User {
        return User(name: "hu jewelz")
    }
    
}

class NewUser: NSObject,  UserProtocol {
    var name: String = "New user"
    
}

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        ModuleManager.register(User.self, for: UserProtocol.self)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        
        var user = ModuleManager.object(for: UserProtocol.self)
        
        XCTAssertEqual(user.name, "hu jewelz")
        
        user.name = "new name"
        XCTAssertEqual(user.name, "new name")
    }
    
    func testClass() {
        ModuleManager.register(NewUser.self, for: UserProtocol.self)
        let user = ModuleManager.object(for: UserProtocol.self)
        
        XCTAssertEqual(user.name, "New user")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}

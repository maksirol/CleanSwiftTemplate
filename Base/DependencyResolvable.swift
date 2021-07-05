///This is an example dependency resolver contract, you can create your own implementation or use open source DI  e.g Swinject

protocol DepenedencyResolvable {
    /// Retrieves the instance with the specified dependency type.
    ///
    /// - Parameter dependencyType: The dependency type to resolve.
    ///
    /// - Returns: The resolved dependency type instance.
    func resolve<Dependency>(_ dependencyType: Dependency.Type) -> Dependency

    /// Retrieves the instance with the specified dependency type and registration name.
    ///
    /// - Parameters:
    ///   - dependencyType: The dependency type to resolve.
    ///   - name:        The registration name.
    ///
    /// - Returns: The resolved dependency type instance.
    func resolve<Dependency>(_ dependencyType: Dependency.Type, name: String) -> Dependency
}

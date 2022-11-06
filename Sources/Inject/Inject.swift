//
//  Inject.swift
//
//  Created by Rza Ismayilov on 06.11.22.
//

/// Use `EmptyDependency` as generic parameter if there is no `Dependency`.
open class Inject<Dependency> {
    public let dependency: Dependency
    
    public init(dependency: Dependency) {
        self.dependency = dependency
    }
    
    /// Use for Injection with `EmptyDependency`
    public init() where Dependency == EmptyDependency {
        self.dependency = EmptyDependency()
    }
}

/// Use with instances of `Inject` if there is no `Dependency`.
public class EmptyDependency {
    init() { }
}

protocol ModuleConfiguring {
    func registerImplementations(in registry: Registry)
    
    func start(with resolver: Resolver)
}

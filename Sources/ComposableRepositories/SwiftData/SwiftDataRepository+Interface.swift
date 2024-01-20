import SwiftData

public struct RepositorySwiftData<Model> where Model: PersistentModel {

    public var insert: (Model) throws -> Void
    public var delete: (Model) throws -> Void
    public var fetch: (FetchDescriptor<Model>) throws -> [Model]

    public init(
        insert: @escaping (Model) throws -> Void,
        delete: @escaping (Model) throws -> Void,
        fetch: @escaping (FetchDescriptor<Model>) throws -> [Model]
    ) {
        self.insert = insert
        self.delete = delete
        self.fetch = fetch
    }
}

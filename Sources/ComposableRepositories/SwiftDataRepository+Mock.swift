import SwiftData

extension SwiftDataRepository {

    public static func mock(
        insert: @escaping (Model) throws -> Void = { _ in },
        delete: @escaping (Model) throws -> Void = { _ in },
        fetch: @escaping (FetchDescriptor<Model>) throws -> [Model] = { _ in [] }
    ) -> SwiftDataRepository<Model> {
        SwiftDataRepository<Model>(
            insert: insert,
            delete: delete,
            fetch: fetch
        )
    }
}

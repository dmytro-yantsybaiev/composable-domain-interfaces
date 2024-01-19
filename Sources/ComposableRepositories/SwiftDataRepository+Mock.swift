import SwiftData

extension SwiftDataRepository {

    public static var mock: SwiftDataRepository<Model> {
        SwiftDataRepository<Model>(
            insert: { _ in },
            delete: { _ in },
            fetch: { _ in [] }
        )
    }
}

import SwiftData

extension RepositorySwiftData {

    public static var mock: RepositorySwiftData<Model> {
        RepositorySwiftData<Model>(
            insert: { _ in },
            delete: { _ in },
            fetch: { _ in [] }
        )
    }
}

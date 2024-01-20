import SwiftData
import ComposableRepositories

extension RepositorySwiftData {

    @MainActor
    public static func live(modelContainer: ModelContainer) -> RepositorySwiftData {
        RepositorySwiftData(
            insert: { model in
                modelContainer.mainContext.insert(model)
                try modelContainer.mainContext.save()
            },
            delete: { model in
                modelContainer.mainContext.delete(model)
                try modelContainer.mainContext.save()
            },
            fetch: { descriptor in
                try modelContainer.mainContext.fetch(descriptor)
            }
        )
    }
}

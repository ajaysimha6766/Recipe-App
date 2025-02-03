import SwiftUI

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    private let cache = NSCache<NSString, UIImage>()
    
    func loadImage(from urlString: String) async {
        if let cachedImage = cache.object(forKey: urlString as NSString) {
            DispatchQueue.main.async {
                self.image = cachedImage
            }
            return
        }
        
        guard let url = URL(string: urlString) else { return }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let uiImage = UIImage(data: data) {
                cache.setObject(uiImage, forKey: urlString as NSString)
                DispatchQueue.main.async {
                    self.image = uiImage
                }
            }
        } catch {
            print("Failed to load image: \(error)")
        }
    }
}

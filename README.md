# Recipe-App

Summary

The Recipe App is a SwiftUI-based application that fetches and displays a list of recipes from a provided API. The app is designed to be minimalistic, showcasing each recipe’s name, cuisine type, and photo while allowing users to refresh the list at any time. It utilizes Swift Concurrency (async/await), manual image caching, and follows Apple’s best practices for efficient networking and UI design.

Features
✅ Fetches and displays a list of recipes ✅ Shows recipe name, cuisine type, and image ✅ Uses async/await for API requests ✅ Supports pull-to-refresh for manual data refresh ✅ Caches images using NSCache to reduce network requests ✅ SwiftUI-based UI for a modern look and feel ✅ Gracefully handles empty or malformed data

Focus Areas
Key Priorities in Development:
1.	Efficient Networking – Used async/await to fetch data asynchronously while handling errors properly.
2.	SwiftUI Best Practices – Designed a clean, simple UI that dynamically updates when new data is fetched.
3.	Manual Image Caching – Implemented NSCache to store images locally, reducing repeated network calls.
4.	Robust Error Handling – Ensured the app handles empty or malformed JSON gracefully without crashing.
5.	Minimalistic UI – Focused on a single screen displaying a well-structured list of recipes.
6.	Testing – Included unit tests to validate API fetching and ensure stability.

Time Spent
Total Estimated Time: ~6-8 hours
Time Allocation:
•	Project Setup & API Integration: ~2 hours
•	Building the SwiftUI UI: ~2 hours
•	Implementing Image Caching: ~1.5 hours
•	Testing & Debugging: ~1.5 hours
•	Writing Documentation (README & Code Comments): ~1 hour

Trade-offs and Decisions
Trade-offs Made:
1.	Chose NSCache for image caching instead of CoreData – Faster and requires no disk access.
2.	Did not use third-party libraries – Ensured compliance with project constraints.
3.	Kept UI minimal – Focused on performance over UI complexity.
4.	Did not include sorting or filtering – Could be added in future iterations for better user experience.

Weakest Part of the Project
1.	Basic UI Layout – Could be enhanced with animations or additional UI elements.
2.	Limited Error Messages – The app currently provides generic error messages instead of detailed ones.
3.	No Offline Support – Recipes disappear when the app is closed and reopened (could be improved with persistent storage).

Additional Information
•	The app gracefully ignores malformed JSON and displays a message when no recipes are available.
•	The SwiftUI list is refreshed dynamically, and the app supports pull-to-refresh.
•	Future improvements could include sorting by cuisine type, adding favorites, or persistent caching for offline access.


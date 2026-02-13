//
//  Framework.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 11/02/2026.
//

import Foundation

struct Framework:Hashable, Identifiable {
	let id=UUID()
	let name:String
	let imageName:String
	let urlString:String
	let description:String
}



struct MockData {
	
	static let sampleFramework = Framework(name: "ARKit",
										   imageName: "arkit",
										   urlString: "https://developer.apple.com/augmented-reality/arkit",
										   description: "ARKit 4 introduit une toute nouvelle API de profondeur (Depth API), offrant une nouvelle manière d’accéder aux informations de profondeur détaillées recueillies par le scanner LiDAR sur iPhone 12 Pro, iPhone 12 Pro Max et iPad Pro.\n\nLes ancres de localisation (Location Anchors) tirent parti des données à plus haute résolution dans Plans d’Apple pour placer des expériences de réalité augmentée à un point précis dans le monde, dans vos apps iPhone et iPad. Et la prise en charge du suivi du visage s’étend à tous les appareils dotés de l’Apple Neural Engine et d’une caméra frontale, afin que davantage d’utilisateurs puissent profiter de la joie de l’AR dans les photos et les vidéos.")
	
	static let frameworks = [
		Framework(name: "App Clips",
				  imageName: "app-clip",
				  urlString: "https://developer.apple.com/app-clips",
				  description: "Les App Clips sont un excellent moyen pour les utilisateurs d’accéder rapidement et de découvrir ce que votre app a à offrir. Un App Clip est une petite partie de votre app, repérable au moment où l’on en a besoin. Les App Clips sont rapides et légers, de sorte qu’un utilisateur peut les ouvrir en un instant.\n\nQu’il s’agisse de commander un plat à emporter dans un restaurant, de louer une trottinette ou de configurer pour la première fois un nouvel appareil connecté, les utilisateurs peuvent commencer et terminer une expérience issue de votre app en quelques secondes. Et une fois terminée, vous pouvez leur proposer de télécharger votre app complète depuis l’App Store."),
		
		Framework(name: "ARKit",
				  imageName: "arkit",
				  urlString: "https://developer.apple.com/augmented-reality/arkit",
				  description: "ARKit 4 introduit une toute nouvelle API de profondeur (Depth API), offrant une nouvelle manière d’accéder aux informations de profondeur détaillées recueillies par le scanner LiDAR sur iPhone 12 Pro, iPhone 12 Pro Max et iPad Pro.\n\nLes ancres de localisation (Location Anchors) tirent parti des données à plus haute résolution dans Plans d’Apple pour placer des expériences de réalité augmentée à un point précis dans le monde, dans vos apps iPhone et iPad. Et la prise en charge du suivi du visage s’étend à tous les appareils dotés de l’Apple Neural Engine et d’une caméra frontale, afin que davantage d’utilisateurs puissent profiter de la joie de l’AR dans les photos et les vidéos."),
		
		Framework(name: "CarPlay",
				  imageName: "carplay",
				  urlString: "https://developer.apple.com/carplay",
				  description: "Plus intelligent et plus sûr pour utiliser votre iPhone en voiture, CarPlay met sur l’écran intégré de votre véhicule ce que vous souhaitez faire avec votre iPhone lorsque vous conduisez.\n\nVous pouvez obtenir un itinéraire, passer des appels, envoyer et recevoir des messages, et écouter de la musique, tout en restant concentré sur la route."),
		
		Framework(name: "Catalyst",
				  imageName: "catalyst",
				  urlString: "https://developer.apple.com/mac-catalyst",
				  description: "Les apps Mac natives créées avec Mac Catalyst peuvent partager du code avec vos apps iPad, et vous pouvez ajouter davantage de fonctionnalités spécifiquement pour Mac. Dans macOS Big Sur, vous pouvez créer des versions encore plus puissantes de vos apps et tirer parti de chaque pixel de l’écran en les exécutant à la résolution native du Mac.\n\nLes apps créées avec Mac Catalyst peuvent désormais être entièrement contrôlées au clavier, accéder à davantage de frameworks iOS et profiter du tout nouveau look de macOS Big Sur. Il n’a jamais été aussi intéressant de transformer votre app iPad en une puissante app Mac."),
		
		Framework(name: "ClassKit",
				  imageName: "classkit",
				  urlString: "https://developer.apple.com/classkit",
				  description: "Les nombreuses excellentes apps d’apprentissage disponibles sur l’App Store font partie intégrante de l’enseignement et de l’apprentissage à l’école. En adoptant ClassKit, votre app fonctionnera avec Schoolwork, une puissante app iPad pour les enseignants et les élèves qui aide à suivre les devoirs et la progression des étudiants.\n\nVous pouvez aider les enseignants à découvrir les activités assignables dans votre app, amener les élèves directement à la bonne activité en un seul geste, et partager de manière sécurisée et privée les données de progression avec les enseignants pour les aider à personnaliser l’instruction."),
		
		Framework(name: "CloudKit",
				  imageName: "cloudkit",
				  urlString: "https://developer.apple.com/icloud/cloudkit",
				  description: "Stockez les données de votre app dans iCloud et gardez tout à jour entre les apps et sur le web avec CloudKit JS. Avec jusqu’à 1 Po de stockage gratuit par app, il n’a jamais été aussi simple de créer et de faire évoluer vos apps grâce à CloudKit."),
		
		Framework(name: "Core ML",
				  imageName: "coreml",
				  urlString: "https://developer.apple.com/machine-learning",
				  description: "Créez des fonctionnalités intelligentes et permettez de nouvelles expériences dans vos apps en tirant parti d’un puissant apprentissage automatique sur l’appareil.\n\nDécouvrez comment créer, entraîner et déployer des modèles de machine learning dans vos apps pour iPhone, iPad, Apple Watch et Mac."),
		
		Framework(name: "HealthKit",
				  imageName: "healthkit",
				  urlString: "https://developer.apple.com/health-fitness",
				  description: "Intégrez HealthKit à vos apps de santé et de forme physique pour iOS et watchOS afin d’offrir une expérience utilisateur plus fluide.\n\nLorsqu’un client autorise votre app à lire et écrire des données de santé et d’activité dans son app Santé, votre app devient une source de données précieuse et peut fournir des solutions de santé et de bien‑être profondément informées."),
		
		Framework(name: "Metal",
				  imageName: "metal",
				  urlString: "https://developer.apple.com/metal",
				  description: "Metal offre un accès quasi direct au processeur graphique (GPU), vous permettant de maximiser le potentiel graphique et de calcul de vos apps sur iOS, macOS et tvOS.\n\nS’appuyant sur une architecture accessible et à faible surcoût, avec des shaders GPU précompilés, un contrôle précis des ressources et la prise en charge du multithreading, Metal fait évoluer la création de commandes pilotées par le GPU, simplifie le travail avec la diversité des GPU compatibles Metal et vous permet d’exploiter la puissance Pro du Mac Pro et du Pro Display XDR."),
		
		Framework(name: "SF Symbols",
				  imageName: "sf-symbols",
				  urlString: "https://developer.apple.com/sf-symbols",
				  description: "Avec plus de 2 400 symboles configurables, SF Symbols est conçu pour s’intégrer parfaitement à San Francisco, la police système des plateformes Apple. Chaque symbole est disponible dans un large éventail de graisses et d’échelles qui s’alignent automatiquement avec les libellés de texte, et prend en charge Dynamic Type et la fonctionnalité d’accessibilité Texte en gras.\n\nVous pouvez également exporter des symboles et les modifier dans des outils d’édition vectorielle afin de créer des symboles personnalisés partageant les mêmes caractéristiques de design et fonctionnalités d’accessibilité."),
		
		Framework(name: "SiriKit",
				  imageName: "sirikit",
				  urlString: "https://developer.apple.com/siri",
				  description: "Siri est l’assistant intelligent le plus populaire au monde, désormais avec un tout nouveau design compact. Avec SiriKit et Raccourcis, vos apps peuvent aider les utilisateurs à accomplir des tâches simplement avec la voix, grâce aux suggestions intelligentes ou via l’app Raccourcis.\n\nVos apps peuvent aussi désormais s’intégrer à davantage de plateformes avec Raccourcis sur watchOS 7, SiriKit Music sur HomePod et SiriKit Media sur Apple TV."),
		
		Framework(name: "SpriteKit",
				  imageName: "spritekit",
				  urlString: "https://developer.apple.com/spritekit",
				  description: "Le framework SpriteKit facilite la création de jeux 2D haute performance et économes en énergie.\n\nAvec la prise en charge de shaders OpenGL ES personnalisés et de l’éclairage, l’intégration avec SceneKit et de nouveaux effets physiques et animations avancés, vous pouvez ajouter des champs de force, détecter les collisions et générer de nouveaux effets d’éclairage dans vos jeux."),
		
		Framework(name: "SwiftUI",
				  imageName: "swiftui",
				  urlString: "https://developer.apple.com/xcode/swiftui",
				  description: "SwiftUI est une manière innovante et exceptionnellement simple de créer des interfaces utilisateur sur toutes les plateformes Apple avec la puissance de Swift. Créez des interfaces pour n’importe quel appareil Apple en utilisant un seul ensemble d’outils et d’API.\n\nAvec une syntaxe déclarative en Swift, facile à lire et naturelle à écrire, SwiftUI fonctionne de manière fluide avec les nouveaux outils de conception d’Xcode pour garder votre code et votre design parfaitement synchronisés. La prise en charge automatique de Dynamic Type, du mode sombre, de la localisation et de l’accessibilité signifie que votre première ligne de code SwiftUI est déjà le code d’interface le plus puissant que vous ayez jamais écrit."),
		
		Framework(name: "Test Flight",
				  imageName: "test-flight",
				  urlString: "https://developer.apple.com/testflight",
				  description: "TestFlight facilite l’invitation d’utilisateurs à tester vos apps et vos expériences d’App Clip, et à recueillir des retours précieux avant de publier vos apps sur l’App Store.\n\nVous pouvez inviter jusqu’à 10 000 testeurs en utilisant simplement leur adresse e‑mail ou en partageant un lien public."),
		
		Framework(name: "Wallet",
				  imageName: "wallet",
				  urlString: "https://developer.apple.com/wallet/get-started",
				  description: "L’app Cartes sur iPhone, iPod touch et Apple Watch permet aux utilisateurs de gérer facilement cartes de paiement, cartes d’embarquement, billets, cartes‑cadeaux et autres pass.\n\nCartes est activée par le temps et la localisation, de sorte que les pass peuvent être configurés pour s’afficher sur l’appareil de l’utilisateur au moment opportun, par exemple lorsqu’il arrive à l’aéroport ou entre dans un magasin.\n\nLes pass peuvent également être mis à jour via des notifications push ; si des détails changent, vous pouvez en informer l’utilisateur qui n’aura qu’à toucher la notification pour voir le pass mis à jour."),
		
		Framework(name: "WidgetKit",
				  imageName: "widgetkit",
				  urlString: "https://developer.apple.com/widgets",
				  description: "Créez facilement des widgets et rendez‑les disponibles sur iOS, iPadOS et macOS grâce au framework WidgetKit et à la nouvelle API de widgets pour SwiftUI. Les widgets existent désormais en plusieurs tailles, et les utilisateurs peuvent visiter la nouvelle galerie de widgets pour rechercher, prévisualiser les tailles et les placer n’importe où sur l’écran d’accueil afin d’accéder en un coup d’œil aux informations importantes.\n\nIls peuvent également ajouter des Smart Stacks — des ensembles de widgets qui utilisent l’intelligence embarquée sur l’appareil pour afficher le bon widget au bon moment, selon des facteurs comme l’heure, la localisation et l’activité.")
	]
}


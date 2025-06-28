Todo-List

Une application iOS simple de gestion de tâches (todo list) développée en SwiftUI.

Table des matières
    •    Fonctionnalités
    •    Capture d’écran
    •    Installation
    •    Utilisation
    •    Architecture
    •    Personnalisation
    •    Contribuer
    •    Licence

Fonctionnalités
    •    Ajout et suppression de tâches
    •    Marquage des tâches comme terminées (checkbox personnalisée)
    •    Persistance des tâches via UserDefaults
    •    Architecture MVVM avec TaskViewModel
    •    Aperçus interactifs SwiftUI (#Preview / Canvas)
    •    Interface responsive et accessible

Capture d’écran

Exemple d’interface avec liste de tâches et champ d’ajout en bas.

Installation
    1.    Cloner le dépôt :

git clone https://github.com/Spocsk/todo-list-swift.git
cd todo-list-swift


    2.    Ouvrir le projet dans Xcode 15 ou supérieur :

open Todo-List.xcodeproj


    3.    Sélectionner un simulateur iOS (iOS 15+) et lancer l’application (⌘R).

Utilisation
    •    Saisir le texte de la nouvelle tâche dans le champ en bas et appuyer sur Entrée ou sur le bouton + dans la barre au-dessus du clavier.
    •    Cocher/décocher une tâche pour marquer son état, qui sera persistant au prochain lancement.
    •    Les tâches sont affichées dans une liste scrollable, avec strikethrough sur les éléments terminés.

Architecture

Le projet suit le pattern MVVM :
    •    Model :
    •    Task (struct Codable / Identifiable) représente une tâche.
    •    ViewModel :
    •    TaskViewModel (classe ObservableObject) gère la liste de tâches et la persistance.
    •    View :
    •    ContentView assemble la liste (TaskList) et le champ d’ajout.
    •    TaskList (Vue générique avec @Binding) affiche les tâches avec une checkbox custom.

Personnalisation
    •    Remplace les icônes SF Symbols (checkmark.square.fill, square) par tes propres images si besoin.
    •    Ajuste les espacements (padding, spacing) en modifiant les valeurs dans les stacks.
    •    Change le mécanisme de persistance (UserDefaults) pour Core Data, SQLite, Realm ou un backend selon l’évolution de l’app.

Contribuer

Les contributions sont les bienvenues !
    1.    Fork le projet
    2.    Crée une branche pour ta fonctionnalité (git checkout -b feature/ma-fonctionnalite)
    3.    Commit tes changements (git commit -m 'Ajoute fonctionnalité X')
    4.    Push ta branche (git push origin feature/ma-fonctionnalite)
    5.    Ouvre une Pull Request

Licence

Pas de license.

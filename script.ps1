import os

def afficher_fichiers_dossier():
    # Demander à l'utilisateur de saisir le chemin du dossier
    chemin_dossier = input("Veuillez entrer le chemin du dossier : ")

    # Vérifier si le chemin spécifié est un dossier valide
    if os.path.isdir(chemin_dossier):
        print("\nListe des fichiers dans le dossier :")
        # Lister les fichiers dans le dossier
        for fichier in os.listdir(chemin_dossier):
            chemin_fichier = os.path.join(chemin_dossier, fichier)
            if os.path.isfile(chemin_fichier):
                print(f"- {fichier}")
    else:
        print("Le chemin spécifié n'est pas un dossier valide. Veuillez réessayer.")

# Appeler la fonction
afficher_fichiers_dossier()

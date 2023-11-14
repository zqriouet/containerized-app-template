import streamlit as st
import pandas as pd
import requests
import os

# URL de l'API pour interagir avec la base de données MariaDB
API_HOST = os.environ.get('API_HOST')
API_PORT = os.environ.get('API_PORT')
API_URL = f'http://{API_HOST}:{API_PORT}/select'


def select():
    st.title("Exécution de requête SQL SELECT")

    # Affiche un champ de texte pour entrer la requête SQL
    query = st.text_area("Entrez votre requête SQL :",
                         value="select * from clients")

    # Bouton pour exécuter la requête
    if st.button("Exécuter"):

        if query:

            # Envoi de la requête SQL à l'API
            response = requests.post(API_URL, json={'q': query})
            # response = requests.get(f'{API_URL}?q={query}')

            if response.status_code == 200:
                results = response.json()['results']
                if len(results) > 0:
                    st.write("Résultats de la requête :")
                    st.dataframe(pd.DataFrame(results))
                else:
                    st.write("Aucun résultat trouvé.")
            else:
                st.write(
                    f"Erreur {response.status_code} lors de la requête à l'API : {response.json()['error']}",
                )

        else:
            st.write("Veuillez entrer une requête SQL.")


select()

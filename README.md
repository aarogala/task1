# Sales App

##  Development

### Przygotowanie środowiska

1. Przejdź do katalogu projektu.
2. Upewnij się, że masz zainstalowaną bibliotekę `pip`, `pip --version`. Jeśli biblioteka nie istnieje zobacz [instrukcję](https://pip.pypa.io/en/stable/installation/) instalacji. 
3. Zainstaluj zależności: `pip install -r requirements.txt`.

### Uruchomienie aplikacji

Możesz uruchomić aplikację z poziomu terminala poprzez `python app.py` (lub `python3 app.py` jęsli `python` nie jest dostępny).
Aplikacja będzie dostępna pod adresem <http://127.0.0.1:8888/>.

### Dodawanie/Aktualizacja zależności

1. Zainstaluj wymaganą bibliotekę poprzez: `pip install nazwa_biblioteki`
2. Zapisz stan zależności poprzez: `pip freeze requirements.txt`.
3. Zacommituj plik `requirements.txt`.

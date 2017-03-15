json.extract! tramwaj, :id, :nazwa, :rok_produkcji, :opis, :url, :created_at, :updated_at
json.url tramwaj_url(tramwaj, format: :json)

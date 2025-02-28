# README

Read on

## Models

Photographer

```
- photographer              (string, present, unique)
- Has many Photos
```

Photo

```
- Belongs to Photographer
- photographer              (FK)
- width                     (integer, present)
- height                    (integer, present)
- url                       (string, present, unique)
- download_url              (string, present, unique)
```

## Routes

```
GET /                       (Home Page)
GET /Photographers          (Show all Photographers, paginated)
GET /Photographers/:id      (Show a Photographer by ID)
GET /Photos                 (Show all Photos, paginated)
GET /Photos/:id             (Show a Photo by ID)
GET /About                  (Show information about the data sets used and the ERD)
```

## Controllers

```
HomeController              - index
PhotographersController     - index, show
PhotosController            - index, show
AboutController             - index
```

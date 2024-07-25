import requests
import sys

API_KEY = 'cd595a70838a997aef666a64115e319e'  
BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"

def get_weather(city):
    url = BASE_URL + "appid=" + API_KEY + "&q=" + city + "&units=metric&lang=ru"
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        main = data['main']
        wind = data['wind']
        weather = data['weather'][0]
        report = f"Погода в {city}:\nТемпература: {main['temp']}°C\nВлажность: {main['humidity']}%\nВетер: {wind['speed']} м/с\nОписание: {weather['description']}"
        return report
    else:
        return "Город не найден"

if __name__ == "__main__":
    if len(sys.argv) > 1:
        city = sys.argv[1]
        print(get_weather(city))
    else:
        print("Пожалуйста, укажите название города.")

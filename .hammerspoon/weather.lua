local base_url = "https://opendata-download-metfcst.smhi.se"


local weatherIcons = {
    [1] = "☀️", -- Clear sky
    [2] = "🌤️", -- Nearly clear sky
    [3] = "⛅",  -- Variable cloudiness
    [4] = "🌥️", -- Halfclear sky
    [5] = "☁️", -- Cloudy sky
    [6] = "☁️", -- Overcast
    [7] = "🌫️", -- Fog
    [8] = "🌧️", -- Light rain showers
    [9] = "🌧️", -- Moderate rain showers
    [10] = "🌧️", -- Heavy rain showers
    [11] = "⛈️", -- Thunderstorm
    [12] = "🌨️", -- Light sleet showers
    [13] = "🌨️", -- Moderate sleet showers
    [14] = "🌨️", -- Heavy sleet showers
    [15] = "🌨️", -- Light snow showers
    [16] = "🌨️", -- Moderate snow showers
    [17] = "🌨️", -- Heavy snow showers
    [18] = "🌧️", -- Light rain
    [19] = "🌧️", -- Moderate rain
    [20] = "🌧️", -- Heavy rain
    [21] = "⛈️", -- Thunder
    [22] = "🌨️", -- Light sleet
    [23] = "🌨️", -- Moderate sleet
    [24] = "🌨️", -- Heavy sleet
    [25] = "🌨️", -- Light snowfall
    [26] = "🌨️", -- Moderate snowfall
    [27] = "🌨️", -- Heavy snowfall
}


local function getSmhi(longitude, latitude)
  local url = base_url
      .. "/api/category/pmp3g/version/2/geotype/point/lon/"
      .. math.floor(longitude + 0.5)
      .. "/lat/"
      .. math.floor(latitude + 0.5)
      .. "/data.json"
  local status, body = hs.http.get(url, nil)

  if status == 200 then
    return hs.json.decode(body)
  else
    print("Error: " .. status)
  end
end

function GetWeather()
  local location = hs.location.get()
  if location == nil then
    print("Location not available")
    return
  end
  local forecast = getSmhi(location["longitude"], location["latitude"])
  if forecast == nil then
    print("No forecast available")
    return
  end
  local temp = 0
  local icon = 0

  for _, data in pairs(forecast["timeSeries"]) do

    local time = data["validTime"]
    temp = data["parameters"][2]["values"][1]
    icon = data["parameters"][19]["values"][1]
    local year, month, day, hour, min, sec = time:match("(%d+)-(%d+)-(%d+)T(%d+):(%d+):(%d+)Z")
    -- Get current date and time
    local currentDateTime = os.date("*t")

    -- Extract current day and hour
    local currentDay = currentDateTime.day
    local currentHour = currentDateTime.hour
    if tonumber(day) == currentDay and tonumber(hour) == currentHour then
      break
    end
  end
  print(hs.json.encode({ temp = temp, icon = weatherIcons[icon] }))
end

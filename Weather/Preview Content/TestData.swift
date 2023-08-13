//
//  TestData.swift
//  weatherTests
//
//  Created by Vefa Ozlu on 8/5/23.
//

import Foundation

let test_current_conditions_konya: Data = """
[
  {
    "LocalObservationDateTime": "2023-08-05T12:12:00+03:00",
    "EpochTime": 1691226720,
    "WeatherText": "Sunny",
    "WeatherIcon": 1,
    "HasPrecipitation": false,
    "PrecipitationType": null,
    "IsDayTime": true,
    "Temperature": {
      "Metric": {
        "Value": 31.2,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 88,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "RealFeelTemperature": {
      "Metric": {
        "Value": 33.9,
        "Unit": "C",
        "UnitType": 17,
        "Phrase": "Hot"
      },
      "Imperial": {
        "Value": 93,
        "Unit": "F",
        "UnitType": 18,
        "Phrase": "Hot"
      }
    },
    "RealFeelTemperatureShade": {
      "Metric": {
        "Value": 29.5,
        "Unit": "C",
        "UnitType": 17,
        "Phrase": "Very Warm"
      },
      "Imperial": {
        "Value": 85,
        "Unit": "F",
        "UnitType": 18,
        "Phrase": "Very Warm"
      }
    },
    "RelativeHumidity": 23,
    "IndoorRelativeHumidity": 23,
    "DewPoint": {
      "Metric": {
        "Value": 7.9,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 46,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "Wind": {
      "Direction": {
        "Degrees": 23,
        "Localized": "NNE",
        "English": "NNE"
      },
      "Speed": {
        "Metric": {
          "Value": 15.4,
          "Unit": "km/h",
          "UnitType": 7
        },
        "Imperial": {
          "Value": 9.6,
          "Unit": "mi/h",
          "UnitType": 9
        }
      }
    },
    "WindGust": {
      "Speed": {
        "Metric": {
          "Value": 17.9,
          "Unit": "km/h",
          "UnitType": 7
        },
        "Imperial": {
          "Value": 11.1,
          "Unit": "mi/h",
          "UnitType": 9
        }
      }
    },
    "UVIndex": 9,
    "UVIndexText": "Very High",
    "Visibility": {
      "Metric": {
        "Value": 24.1,
        "Unit": "km",
        "UnitType": 6
      },
      "Imperial": {
        "Value": 15,
        "Unit": "mi",
        "UnitType": 2
      }
    },
    "ObstructionsToVisibility": "",
    "CloudCover": 0,
    "Ceiling": {
      "Metric": {
        "Value": 12192,
        "Unit": "m",
        "UnitType": 5
      },
      "Imperial": {
        "Value": 40000,
        "Unit": "ft",
        "UnitType": 0
      }
    },
    "Pressure": {
      "Metric": {
        "Value": 1014,
        "Unit": "mb",
        "UnitType": 14
      },
      "Imperial": {
        "Value": 29.94,
        "Unit": "inHg",
        "UnitType": 12
      }
    },
    "PressureTendency": {
      "LocalizedText": "Steady",
      "Code": "S"
    },
    "Past24HourTemperatureDeparture": {
      "Metric": {
        "Value": 3.3,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 6,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "ApparentTemperature": {
      "Metric": {
        "Value": 29.4,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 85,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "WindChillTemperature": {
      "Metric": {
        "Value": 31.1,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 88,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "WetBulbTemperature": {
      "Metric": {
        "Value": 17.1,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 63,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "Precip1hr": {
      "Metric": {
        "Value": 0,
        "Unit": "mm",
        "UnitType": 3
      },
      "Imperial": {
        "Value": 0,
        "Unit": "in",
        "UnitType": 1
      }
    },
    "PrecipitationSummary": {
      "Precipitation": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "PastHour": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past3Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past6Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past9Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past12Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past18Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past24Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      }
    },
    "TemperatureSummary": {
      "Past6HourRange": {
        "Minimum": {
          "Metric": {
            "Value": 19.8,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 68,
            "Unit": "F",
            "UnitType": 18
          }
        },
        "Maximum": {
          "Metric": {
            "Value": 31.2,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 88,
            "Unit": "F",
            "UnitType": 18
          }
        }
      },
      "Past12HourRange": {
        "Minimum": {
          "Metric": {
            "Value": 19.8,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 68,
            "Unit": "F",
            "UnitType": 18
          }
        },
        "Maximum": {
          "Metric": {
            "Value": 31.2,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 88,
            "Unit": "F",
            "UnitType": 18
          }
        }
      },
      "Past24HourRange": {
        "Minimum": {
          "Metric": {
            "Value": 19.8,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 68,
            "Unit": "F",
            "UnitType": 18
          }
        },
        "Maximum": {
          "Metric": {
            "Value": 32.5,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 90,
            "Unit": "F",
            "UnitType": 18
          }
        }
      }
    },
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/current-weather/318795?lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/current-weather/318795?lang=en-us"
  }
]
""".data(using: .utf8)!

let test_daily_forecast_5days: Data = """
{
  "Headline": {
    "EffectiveDate": "2023-08-07T07:00:00+03:00",
    "EffectiveEpochDate": 1691380800,
    "Severity": 3,
    "Text": "The heat wave will continue through Tuesday",
    "Category": "heat",
    "EndDate": "2023-08-08T19:00:00+03:00",
    "EndEpochDate": 1691510400,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?unit=c&lang=en-us"
  },
  "DailyForecasts": [
    {
      "Date": "2023-08-07T07:00:00+03:00",
      "EpochDate": 1691380800,
      "Sun": {
        "Rise": "2023-08-07T05:58:00+03:00",
        "EpochRise": 1691377080,
        "Set": "2023-08-07T19:53:00+03:00",
        "EpochSet": 1691427180
      },
      "Moon": {
        "Rise": "2023-08-07T23:19:00+03:00",
        "EpochRise": 1691439540,
        "Set": "2023-08-08T13:32:00+03:00",
        "EpochSet": 1691490720,
        "Phase": "WaningGibbous",
        "Age": 21
      },
      "Temperature": {
        "Minimum": {
          "Value": 21.1,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 34.4,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "RealFeelTemperature": {
        "Minimum": {
          "Value": 20.2,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 36.6,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Hot"
        }
      },
      "RealFeelTemperatureShade": {
        "Minimum": {
          "Value": 20.2,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 33,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Hot"
        }
      },
      "HoursOfSun": 13.9,
      "DegreeDaySummary": {
        "Heating": {
          "Value": 0,
          "Unit": "C",
          "UnitType": 17
        },
        "Cooling": {
          "Value": 10,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "AirAndPollen": [
        {
          "Name": "AirQuality",
          "Value": 0,
          "Category": "Good",
          "CategoryValue": 1,
          "Type": "Ozone"
        },
        {
          "Name": "Grass",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Mold",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Ragweed",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Tree",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "UVIndex",
          "Value": 10,
          "Category": "Very High",
          "CategoryValue": 4
        }
      ],
      "Day": {
        "Icon": 1,
        "IconPhrase": "Sunny",
        "HasPrecipitation": false,
        "ShortPhrase": "Hot with plenty of sun",
        "LongPhrase": "Hot with plenty of sun; caution advised if doing strenuous activities outside",
        "PrecipitationProbability": 0,
        "ThunderstormProbability": 0,
        "RainProbability": 0,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 7.4,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 91,
            "Localized": "E",
            "English": "E"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 25.9,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 114,
            "Localized": "ESE",
            "English": "ESE"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 0,
        "Evapotranspiration": {
          "Value": 6.1,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 8551.4,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Night": {
        "Icon": 33,
        "IconPhrase": "Clear",
        "HasPrecipitation": false,
        "ShortPhrase": "Clear and warm",
        "LongPhrase": "Clear and warm",
        "PrecipitationProbability": 0,
        "ThunderstormProbability": 0,
        "RainProbability": 0,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 13,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 346,
            "Localized": "NNW",
            "English": "NNW"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 22.2,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 340,
            "Localized": "NNW",
            "English": "NNW"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 0,
        "Evapotranspiration": {
          "Value": 1.5,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 185.4,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=1&unit=c&lang=en-us",
      "Link": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=1&unit=c&lang=en-us"
    },
    {
      "Date": "2023-08-08T07:00:00+03:00",
      "EpochDate": 1691467200,
      "Sun": {
        "Rise": "2023-08-08T05:59:00+03:00",
        "EpochRise": 1691463540,
        "Set": "2023-08-08T19:52:00+03:00",
        "EpochSet": 1691513520
      },
      "Moon": {
        "Rise": "2023-08-08T23:50:00+03:00",
        "EpochRise": 1691527800,
        "Set": "2023-08-09T14:39:00+03:00",
        "EpochSet": 1691581140,
        "Phase": "Last",
        "Age": 22
      },
      "Temperature": {
        "Minimum": {
          "Value": 19.8,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 37.1,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "RealFeelTemperature": {
        "Minimum": {
          "Value": 18.9,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 37.8,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Very Hot"
        }
      },
      "RealFeelTemperatureShade": {
        "Minimum": {
          "Value": 18.9,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 35.6,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Hot"
        }
      },
      "HoursOfSun": 13.5,
      "DegreeDaySummary": {
        "Heating": {
          "Value": 0,
          "Unit": "C",
          "UnitType": 17
        },
        "Cooling": {
          "Value": 10,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "AirAndPollen": [
        {
          "Name": "AirQuality",
          "Value": 0,
          "Category": "Good",
          "CategoryValue": 1,
          "Type": "Ozone"
        },
        {
          "Name": "Grass",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Mold",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Ragweed",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Tree",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "UVIndex",
          "Value": 10,
          "Category": "Very High",
          "CategoryValue": 4
        }
      ],
      "Day": {
        "Icon": 30,
        "IconPhrase": "Hot",
        "HasPrecipitation": false,
        "ShortPhrase": "Very hot with sunshine",
        "LongPhrase": "Sizzling sunshine and very hot",
        "PrecipitationProbability": 0,
        "ThunderstormProbability": 0,
        "RainProbability": 0,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 11.1,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 76,
            "Localized": "ENE",
            "English": "ENE"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 31.5,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 115,
            "Localized": "ESE",
            "English": "ESE"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 2,
        "Evapotranspiration": {
          "Value": 6.9,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 8521.2,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Night": {
        "Icon": 33,
        "IconPhrase": "Clear",
        "HasPrecipitation": false,
        "ShortPhrase": "Clear",
        "LongPhrase": "Clear",
        "PrecipitationProbability": 2,
        "ThunderstormProbability": 0,
        "RainProbability": 2,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 14.8,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 326,
            "Localized": "NW",
            "English": "NW"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 42.6,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 316,
            "Localized": "NW",
            "English": "NW"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 0,
        "Evapotranspiration": {
          "Value": 1.5,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 182,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=2&unit=c&lang=en-us",
      "Link": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=2&unit=c&lang=en-us"
    },
    {
      "Date": "2023-08-09T07:00:00+03:00",
      "EpochDate": 1691553600,
      "Sun": {
        "Rise": "2023-08-09T06:00:00+03:00",
        "EpochRise": 1691550000,
        "Set": "2023-08-09T19:51:00+03:00",
        "EpochSet": 1691599860
      },
      "Moon": {
        "Rise": null,
        "EpochRise": null,
        "Set": "2023-08-09T14:39:00+03:00",
        "EpochSet": 1691581140,
        "Phase": "WaningCrescent",
        "Age": 23
      },
      "Temperature": {
        "Minimum": {
          "Value": 20.2,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 33.6,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "RealFeelTemperature": {
        "Minimum": {
          "Value": 19.4,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 33.8,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Hot"
        }
      },
      "RealFeelTemperatureShade": {
        "Minimum": {
          "Value": 19.4,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 31.9,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Hot"
        }
      },
      "HoursOfSun": 12.9,
      "DegreeDaySummary": {
        "Heating": {
          "Value": 0,
          "Unit": "C",
          "UnitType": 17
        },
        "Cooling": {
          "Value": 9,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "AirAndPollen": [
        {
          "Name": "AirQuality",
          "Value": 0,
          "Category": "Good",
          "CategoryValue": 1,
          "Type": "Ozone"
        },
        {
          "Name": "Grass",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Mold",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Ragweed",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Tree",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "UVIndex",
          "Value": 10,
          "Category": "Very High",
          "CategoryValue": 4
        }
      ],
      "Day": {
        "Icon": 1,
        "IconPhrase": "Sunny",
        "HasPrecipitation": false,
        "ShortPhrase": "Hot with sunshine",
        "LongPhrase": "Hot with sunshine; possible danger of dehydration and heatstroke while doing strenuous activities",
        "PrecipitationProbability": 1,
        "ThunderstormProbability": 0,
        "RainProbability": 1,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 13,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 30,
            "Localized": "NNE",
            "English": "NNE"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 31.5,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 55,
            "Localized": "NE",
            "English": "NE"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 8,
        "Evapotranspiration": {
          "Value": 6.1,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 8481.7,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Night": {
        "Icon": 33,
        "IconPhrase": "Clear",
        "HasPrecipitation": false,
        "ShortPhrase": "Clear",
        "LongPhrase": "Clear",
        "PrecipitationProbability": 1,
        "ThunderstormProbability": 0,
        "RainProbability": 1,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 13,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 326,
            "Localized": "NW",
            "English": "NW"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 25.9,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 352,
            "Localized": "N",
            "English": "N"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 3,
        "Evapotranspiration": {
          "Value": 1.3,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 178.6,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=3&unit=c&lang=en-us",
      "Link": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=3&unit=c&lang=en-us"
    },
    {
      "Date": "2023-08-10T07:00:00+03:00",
      "EpochDate": 1691640000,
      "Sun": {
        "Rise": "2023-08-10T06:01:00+03:00",
        "EpochRise": 1691636460,
        "Set": "2023-08-10T19:50:00+03:00",
        "EpochSet": 1691686200
      },
      "Moon": {
        "Rise": "2023-08-10T00:24:00+03:00",
        "EpochRise": 1691616240,
        "Set": "2023-08-10T15:45:00+03:00",
        "EpochSet": 1691671500,
        "Phase": "WaningCrescent",
        "Age": 24
      },
      "Temperature": {
        "Minimum": {
          "Value": 18.1,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 35.3,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "RealFeelTemperature": {
        "Minimum": {
          "Value": 17.9,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 36.1,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Hot"
        }
      },
      "RealFeelTemperatureShade": {
        "Minimum": {
          "Value": 17.9,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 33.6,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Hot"
        }
      },
      "HoursOfSun": 13.4,
      "DegreeDaySummary": {
        "Heating": {
          "Value": 0,
          "Unit": "C",
          "UnitType": 17
        },
        "Cooling": {
          "Value": 9,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "AirAndPollen": [
        {
          "Name": "AirQuality",
          "Value": 0,
          "Category": "Good",
          "CategoryValue": 1,
          "Type": "Ozone"
        },
        {
          "Name": "Grass",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Mold",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Ragweed",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Tree",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "UVIndex",
          "Value": 10,
          "Category": "Very High",
          "CategoryValue": 4
        }
      ],
      "Day": {
        "Icon": 1,
        "IconPhrase": "Sunny",
        "HasPrecipitation": false,
        "ShortPhrase": "Sunny and hot",
        "LongPhrase": "Sunny and hot; possible danger of dehydration and heatstroke while doing strenuous activities",
        "PrecipitationProbability": 0,
        "ThunderstormProbability": 0,
        "RainProbability": 0,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 13,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 128,
            "Localized": "SE",
            "English": "SE"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 44.4,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 262,
            "Localized": "W",
            "English": "W"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 3,
        "Evapotranspiration": {
          "Value": 6.3,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 8457.7,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Night": {
        "Icon": 33,
        "IconPhrase": "Clear",
        "HasPrecipitation": false,
        "ShortPhrase": "Clear",
        "LongPhrase": "Clear",
        "PrecipitationProbability": 1,
        "ThunderstormProbability": 0,
        "RainProbability": 1,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 11.1,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 291,
            "Localized": "WNW",
            "English": "WNW"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 40.7,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 268,
            "Localized": "W",
            "English": "W"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 0,
        "Evapotranspiration": {
          "Value": 1.3,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 175.2,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=4&unit=c&lang=en-us",
      "Link": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=4&unit=c&lang=en-us"
    },
    {
      "Date": "2023-08-11T07:00:00+03:00",
      "EpochDate": 1691726400,
      "Sun": {
        "Rise": "2023-08-11T06:01:00+03:00",
        "EpochRise": 1691722860,
        "Set": "2023-08-11T19:49:00+03:00",
        "EpochSet": 1691772540
      },
      "Moon": {
        "Rise": "2023-08-11T01:06:00+03:00",
        "EpochRise": 1691705160,
        "Set": "2023-08-11T16:45:00+03:00",
        "EpochSet": 1691761500,
        "Phase": "WaningCrescent",
        "Age": 25
      },
      "Temperature": {
        "Minimum": {
          "Value": 18.4,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 31.6,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "RealFeelTemperature": {
        "Minimum": {
          "Value": 17.1,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 33.3,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Hot"
        }
      },
      "RealFeelTemperatureShade": {
        "Minimum": {
          "Value": 17.1,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Pleasant"
        },
        "Maximum": {
          "Value": 30.1,
          "Unit": "C",
          "UnitType": 17,
          "Phrase": "Very Warm"
        }
      },
      "HoursOfSun": 12.7,
      "DegreeDaySummary": {
        "Heating": {
          "Value": 0,
          "Unit": "C",
          "UnitType": 17
        },
        "Cooling": {
          "Value": 7,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "AirAndPollen": [
        {
          "Name": "AirQuality",
          "Value": 0,
          "Category": "Good",
          "CategoryValue": 1,
          "Type": "Ozone"
        },
        {
          "Name": "Grass",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Mold",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Ragweed",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "Tree",
          "Value": 0,
          "Category": "Low",
          "CategoryValue": 1
        },
        {
          "Name": "UVIndex",
          "Value": 10,
          "Category": "Very High",
          "CategoryValue": 4
        }
      ],
      "Day": {
        "Icon": 1,
        "IconPhrase": "Sunny",
        "HasPrecipitation": false,
        "ShortPhrase": "Sunny",
        "LongPhrase": "Sunny",
        "PrecipitationProbability": 1,
        "ThunderstormProbability": 0,
        "RainProbability": 1,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 11.1,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 54,
            "Localized": "NE",
            "English": "NE"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 33.3,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 20,
            "Localized": "NNE",
            "English": "NNE"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 9,
        "Evapotranspiration": {
          "Value": 5.6,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 8419.7,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Night": {
        "Icon": 33,
        "IconPhrase": "Clear",
        "HasPrecipitation": false,
        "ShortPhrase": "Clear",
        "LongPhrase": "Clear",
        "PrecipitationProbability": 2,
        "ThunderstormProbability": 0,
        "RainProbability": 2,
        "SnowProbability": 0,
        "IceProbability": 0,
        "Wind": {
          "Speed": {
            "Value": 14.8,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 348,
            "Localized": "NNW",
            "English": "NNW"
          }
        },
        "WindGust": {
          "Speed": {
            "Value": 44.4,
            "Unit": "km/h",
            "UnitType": 7
          },
          "Direction": {
            "Degrees": 338,
            "Localized": "NNW",
            "English": "NNW"
          }
        },
        "TotalLiquid": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Rain": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Snow": {
          "Value": 0,
          "Unit": "cm",
          "UnitType": 4
        },
        "Ice": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "HoursOfPrecipitation": 0,
        "HoursOfRain": 0,
        "HoursOfSnow": 0,
        "HoursOfIce": 0,
        "CloudCover": 3,
        "Evapotranspiration": {
          "Value": 1.3,
          "Unit": "mm",
          "UnitType": 3
        },
        "SolarIrradiance": {
          "Value": 171.7,
          "Unit": "W/m²",
          "UnitType": 33
        }
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=5&unit=c&lang=en-us",
      "Link": "http://www.accuweather.com/en/tr/konya/318795/daily-weather-forecast/318795?day=5&unit=c&lang=en-us"
    }
  ]
}
""".data(using: .utf8)!

let test_hourly_forecast_12_hours: Data = """
[
  {
    "DateTime": "2023-08-07T16:00:00+03:00",
    "EpochDateTime": 1691413200,
    "WeatherIcon": 1,
    "IconPhrase": "Sunny",
    "HasPrecipitation": false,
    "IsDaylight": true,
    "Temperature": {
      "Value": 34.4,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=16&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=16&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-07T17:00:00+03:00",
    "EpochDateTime": 1691416800,
    "WeatherIcon": 1,
    "IconPhrase": "Sunny",
    "HasPrecipitation": false,
    "IsDaylight": true,
    "Temperature": {
      "Value": 34.4,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=17&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=17&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-07T18:00:00+03:00",
    "EpochDateTime": 1691420400,
    "WeatherIcon": 1,
    "IconPhrase": "Sunny",
    "HasPrecipitation": false,
    "IsDaylight": true,
    "Temperature": {
      "Value": 33.9,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=18&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=18&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-07T19:00:00+03:00",
    "EpochDateTime": 1691424000,
    "WeatherIcon": 1,
    "IconPhrase": "Sunny",
    "HasPrecipitation": false,
    "IsDaylight": true,
    "Temperature": {
      "Value": 32.4,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=19&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=19&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-07T20:00:00+03:00",
    "EpochDateTime": 1691427600,
    "WeatherIcon": 33,
    "IconPhrase": "Clear",
    "HasPrecipitation": false,
    "IsDaylight": false,
    "Temperature": {
      "Value": 30.5,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=20&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=20&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-07T21:00:00+03:00",
    "EpochDateTime": 1691431200,
    "WeatherIcon": 33,
    "IconPhrase": "Clear",
    "HasPrecipitation": false,
    "IsDaylight": false,
    "Temperature": {
      "Value": 28.8,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=21&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=21&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-07T22:00:00+03:00",
    "EpochDateTime": 1691434800,
    "WeatherIcon": 33,
    "IconPhrase": "Clear",
    "HasPrecipitation": false,
    "IsDaylight": false,
    "Temperature": {
      "Value": 27.1,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=22&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=22&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-07T23:00:00+03:00",
    "EpochDateTime": 1691438400,
    "WeatherIcon": 33,
    "IconPhrase": "Clear",
    "HasPrecipitation": false,
    "IsDaylight": false,
    "Temperature": {
      "Value": 25.5,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=23&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=1&hbhhour=23&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-08T00:00:00+03:00",
    "EpochDateTime": 1691442000,
    "WeatherIcon": 33,
    "IconPhrase": "Clear",
    "HasPrecipitation": false,
    "IsDaylight": false,
    "Temperature": {
      "Value": 24.7,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=2&hbhhour=0&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=2&hbhhour=0&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-08T01:00:00+03:00",
    "EpochDateTime": 1691445600,
    "WeatherIcon": 33,
    "IconPhrase": "Clear",
    "HasPrecipitation": false,
    "IsDaylight": false,
    "Temperature": {
      "Value": 24.1,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=2&hbhhour=1&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=2&hbhhour=1&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-08T02:00:00+03:00",
    "EpochDateTime": 1691449200,
    "WeatherIcon": 33,
    "IconPhrase": "Clear",
    "HasPrecipitation": false,
    "IsDaylight": false,
    "Temperature": {
      "Value": 23.5,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=2&hbhhour=2&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=2&hbhhour=2&unit=c&lang=en-us"
  },
  {
    "DateTime": "2023-08-08T03:00:00+03:00",
    "EpochDateTime": 1691452800,
    "WeatherIcon": 33,
    "IconPhrase": "Clear",
    "HasPrecipitation": false,
    "IsDaylight": false,
    "Temperature": {
      "Value": 22.9,
      "Unit": "C",
      "UnitType": 17
    },
    "PrecipitationProbability": 0,
    "MobileLink": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=2&hbhhour=3&unit=c&lang=en-us",
    "Link": "http://www.accuweather.com/en/tr/konya/318795/hourly-weather-forecast/318795?day=2&hbhhour=3&unit=c&lang=en-us"
  }
]
""".data(using: .utf8)!

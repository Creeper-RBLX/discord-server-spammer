::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJH2L40w8JxpQX0SmfG+oD6MZ1Ozy/OmIsEldR/I+dYLeyPSMOaAQ+EDhZZM/jygLzIUJFB44
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
@echo this tool was made by creeper81081 / Creeper#9214
@echo if u wanna donate me sum btc :) : bc1qw0pr7cru0ngu2gdf8f2eq3nh4cpafywm775hsg 
set /p DISCORD_SESSION_KEY=Enter Discord Token:
set /p CHANNEL_ID=Enter channel ID:
set /p MESSAGE=Enter the message u want it to spam:
set TIMEOUT=1

:LOOP
echo Message sent responded with:
echo.

curl "https://discord.com/api/v8/channels/%CHANNEL_ID%/messages" ^
  -H "content-type: application/json" ^
  -H "authorization: %DISCORD_SESSION_KEY%" ^
  --data-raw "{\"content\":\"%MESSAGE%\",\"tts\":false}"

echo.
timeout /t %TIMEOUT% /nobreak
echo.


goto LOOP

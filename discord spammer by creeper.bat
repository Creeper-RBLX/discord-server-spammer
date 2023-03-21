
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

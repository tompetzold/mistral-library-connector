#!/bin/bash

echo "Mistral – Bibliothek mit Agent verbinden"
echo

read -r -s -p "API-Key: " MISTRAL_KEY
echo
read -r -p "Agent-ID: " AGENT_ID
read -r -p "Library-ID: " LIBRARY_ID

echo
echo "Verbinde Bibliothek mit Agent ..."

RESPONSE=$(curl -sS -w $'\n%{http_code}' \
  -X PATCH "https://api.mistral.ai/v1/agents/$AGENT_ID" \
  -H "Authorization: Bearer $MISTRAL_KEY" \
  -H "Content-Type: application/json" \
  -d "{\"tools\":[{\"type\":\"document_library\",\"library_ids\":[\"$LIBRARY_ID\"]}]}")

BODY="${RESPONSE%$'\n'*}"
STATUS="${RESPONSE##*$'\n'}"

if [[ "$STATUS" == "200" && "$BODY" == *'"type":"document_library"'* && "$BODY" == *"$LIBRARY_ID"* ]]; then
  echo
  echo "✓ Bibliothek erfolgreich mit dem Agenten verbunden."
  echo "Du kannst jetzt zu Mistral Studio zurückkehren und den Agenten testen."
  EXIT_CODE=0
else
  echo
  echo "✗ Verbindung fehlgeschlagen."
  echo
  echo "Antwort von Mistral:"
  echo "$BODY"
  EXIT_CODE=1
fi

unset MISTRAL_KEY
unset AGENT_ID
unset LIBRARY_ID
unset RESPONSE
unset BODY
unset STATUS

exit "$EXIT_CODE"

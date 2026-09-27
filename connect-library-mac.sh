#!/bin/zsh

(
  read -s "MISTRAL_KEY?API-Key: "
  echo
  read "AGENT_ID?Agent-ID: "
  read "LIBRARY_ID?Library-ID: "

  RESPONSE=$(curl -sS -w $'\n%{http_code}' -X PATCH "https://api.mistral.ai/v1/agents/$AGENT_ID" \
    -H "Authorization: Bearer $MISTRAL_KEY" \
    -H "Content-Type: application/json" \
    -d "{\"tools\":[{\"type\":\"document_library\",\"library_ids\":[\"$LIBRARY_ID\"]}]}")

  BODY="${RESPONSE%$'\n'*}"
  STATUS="${RESPONSE##*$'\n'}"

  if [[ "$STATUS" == "200" && "$BODY" == *'"type":"document_library"'* && "$BODY" == *"$LIBRARY_ID"* ]]; then
    echo "✓ Bibliothek erfolgreich mit dem Agenten verbunden."
  else
    echo "✗ Verbindung fehlgeschlagen."
    echo "$BODY"
  fi

  unset MISTRAL_KEY AGENT_ID LIBRARY_ID RESPONSE BODY STATUS
)

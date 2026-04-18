import requests
import urllib.parse

tajuk = "Lara Fabian Je T'aime Lyrics"

prompt = f"""
You are a music metadata formatter.

Task:
Convert the input into exact format: artist - title

Rules:
- Return ONLY the result
- No explanation
- No extra text

Input:
Lara Fabian Je T'aime Lyrics

Input:
{tajuk}
"""

# Encode prompt
prompt_clean = prompt.replace('\n', ' ').strip()
encoded_prompt = urllib.parse.quote(prompt_clean, safe='')

# Pollinations chat endpoint (contoh)
url = f"https://gen.pollinations.ai/v1/chat/completions?model=mistral"

payload = {
    "messages": [
        {"role": "user", "content": prompt_clean}
    ]
}

response = requests.post(url, json=payload)

data = response.json()
answer = data["choices"][0]["message"]["content"]

# Simpan result
with open("title.txt", "w", encoding="utf-8") as f:
    f.write(answer)

print("Saved to title.txt")

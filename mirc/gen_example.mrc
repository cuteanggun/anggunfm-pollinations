EXAMPLE mIRC Scripts:

On 1:text:*:#: {
if ($1 = !gen) {
    if (!$2) { msg $chan [cmd] !gen <your prompt> | halt }
    write -l4 gen.py $qt($2-)
   .run -h gen.py
   .timercheckgen 0 1 checkgen
}
}


import requests
import uuid

prompt = "a cute girl with hoodie and sunset background"
width = 1024
height = 1024
seed = "12345"
model = "zimage"

def download_image(image_url, save_path):
    response = requests.get(image_url)
    with open(save_path, 'wb') as file:
        file.write(response.content)
    print(f"Saved to {save_path}")

# Generate unique filename
unique_id = str(uuid.uuid4())

# Pollinations image API (example, no real key)
image_url = f"https://image.pollinations.ai/prompt/{prompt}?key={pollinations_key}&width={width}&height={height}&seed={seed}&model={model}"

save_path = f"GEN-{unique_id}.png"

download_image(image_url, save_path)

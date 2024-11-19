from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "¡Hola, mundo! Esta es una aplicación Flask desplegada con Jenkins y Kubernetes."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=3000)

# SimpleNotes
A simple mote taking web app created using django


## App ⚔




https://user-images.githubusercontent.com/29480670/190432960-be8dd793-de87-460c-90be-519b918a3867.mp4






## Setup 👷

1. Clone the repo

   ```bash
   https://github.com/SameerSahu007/SimpleNotes.git
   ```
2. Initialise a virtual environment.

   ```bash
   cd SimpleNotes
   python3 -m venv venv
   source venv/bin/activate
   ```
3. Install dependencies

   ```bash
   pip install -r requirements.txt
   ```
4. Run migrations
   ```bash
   python manage.py migrate
   ```
5. Create .env file at the root folder with the following structure
   ```
   SECRET_KEY=secret
   DEBUG=True
   ALLOWED_HOSTS=localhost,127.0.0.1,
   ```
Step 1: Create a Flutter Project

Open Command Prompt (CMD) and run:

flutter create fluppie

Step 2: Open the Project in Visual Studio Code

cd fluppie
code .

Step 3: Install Dependencies

flutter pub add web_socket_channel

Or manually add it to pubspec.yaml.

Step 4: Run Flutter Project

flutter run

Setting Up Node.js Server

Step 1: Install Node.js

Download and install Node.js from Node.js official site.

Step 2: Create Server Directory

mkdir server
cd server

Step 3: Initialize Node.js Project

npm init -y

Step 4: Install Dependencies

npm install ws express

Step 5: Create index.js

To create index.js, open Command Prompt and run:

type nul > index.js

Then open index.js in Notepad or Visual Studio Code and add the server logic.

Step 6: Run Node.js Server

node index.js

Now your Node.js server is running on http://localhost:3000.

Running the Full Setup

Start the Node.js server:

cd server
node index.js

Run the Flutter app:

cd fluppie
flutter run

Now your Flutter app should successfully connect to the Node.js WebSocket server.

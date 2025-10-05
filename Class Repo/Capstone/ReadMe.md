Read instructions first!!!!

It is best to do this in different terminals.

In your Terminal (Command Pormpt)

1) Inside the client folder - command => npm run dev
2) This will tell you what localhost port to open in your browser. Probably 5173 or 5174
3) This starts the client and you should have access to the Monster Bounty Web site. 
4) Go to Bounties page and it should say "Loading..."
5) This is great!!!!

Now for the server.

1) Inside the MonsterBountyServer folder - command => docker compose up -d
2) This will initialize and start your docker container.
3) Verify with your Docker dashboard (or other tools)
4) In same folder - command => ./gradlew bR
5) This runs the application

Go back to your browser and refresh. You should now see "Wanted Posters"

That is it!!!!

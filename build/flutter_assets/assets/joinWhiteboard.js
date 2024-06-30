// Initialize the WhiteWebSdk instance
var whiteWebSdk = new WhiteWebSdk({
    // Pass in your App Identifier.
    appIdentifier: "PDJF4P7-Ee6D_PXT5qj0Fg/RCfb07e7tqxRNg",
    // Set the data center as Silicon Valley, US.
    region: "us-sv",
  });
  
  // Function to join the whiteboard room
  function joinWhiteboardRoom(roomUUID, roomToken) {
    // Parameters for joining the room
    var joinRoomParams = {
      uuid: roomUUID,
      roomToken: roomToken,
    };
  
    // Join the whiteboard room and display the whiteboard
    whiteWebSdk.joinRoom(joinRoomParams)
      .then(function(room) {
        // Bind the whiteboard to the HTML element with id "whiteboard"
        room.bindHtmlElement(document.getElementById("whiteboard"));
      })
      .catch(function(err) {
        console.error(err);
      });
  }
  
  // Call the function to join the whiteboard room
  // You need to pass the room UUID and room token from your Flutter app
  // For example:
  // joinWhiteboardRoom("Your room UUID", "Your room token");
  
const doZoomThings = async() => {
  await zoom.joinSession({
    sessionName: 'name of video session',
    token: 'JWT goes here',
    username: 'name of user as it will appear in the video session to others',
    audioOptions: {
      connect: true,
      mute: false,
    },
    videoOptions: {
      localVideoOn: true,
    },
    videoOptions: {
      localVideoOn: true,
    },
  });
};

/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  TODO: 
*  - Install the VLCCJVideo library through the library manager
*  - VLC should also be installed on your computer
*
*
*/

import VLCJVideo.*;

VLCJVideo video;

void setup(){

    size(560,406,P2D);
    video = new VLCJVideo(this);
    String filepath = getOsPath() + "launch2.mp4"; // same video as in the official video processing examples
    video.open(filepath);
        
    // looping - true/false
    video.setRepeat(true);
    video.play();
}

void draw(){
  
  if(video != null){
    try{
      image(video,0,0);
    }catch(Exception e) {
      println("Video IOException");
      e.printStackTrace();
    }
  }
  
}

void pauseVideo(){
  println("pause video");
  if(video != null){
    video.pause();
  }
}

void playVideo(){
  println("play video");
  if(video != null){
    video.play();
  }
}

// this will also rewind the video
void stopVideo(){
  if(video != null){
    video.stop();
  }
}

void restartVideo(){
  if(video != null){
    video.stop();
    video.play();
  }
}

void keyPressed(){
  
  // pausing/playing video
  if(key == 'p'){
    
    if(video != null){
      if(video.isStopped()){
        playVideo();
      }else{
        pauseVideo();
      }
    }

  }else if(key == 'r'){ // will restart the video from the start
    restartVideo();
  }

}

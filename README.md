# WavMp3BatchConverter
A Dockerfile to batch convert a whole folder of wav files to mp3 keeping the metadata.

I created this docker image as I want to keep my server OS clean (and don't install stuff I only use once).

## Example usage

Building the docker image
```
docker build -t wav-mp3-converter https://github.com/0xFEEDC0DE64/WavMp3BatchConverter.git
```

Converting a folder
```
docker run -it --rm --name conversion_task_1 -v $HOME/Music/wav_files:/music -d wav-mp3-converter
```
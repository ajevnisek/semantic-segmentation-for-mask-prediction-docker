# Semantic Segmentation based Mask predictor Docker
Semantic Segmentation based Mask predictor Docker Cheatsheet

# Setup
Create a directory shared with the docker
```bash
mkdir from_container
```
# Build docker Image
```bash
docker image build -t ajevnisek/semantic-segmentation-for-mask-prediction:hcoco .
```


# Run docker Container
```bash
docker run --rm --name semantic-segmentation-for-mask-prediction-hcoco -dit -v \
  ~/Desktop/sandbox/semantic-segmentation-for-mask-prediction-docker/from_container:/storage/jevnisek/ImageHarmonizationResults   ajevnisek/semantic-segmentation-for-mask-prediction bash

```
## Debug
### watch logs
```bash
docker logs semantic-segmentation-for-mask-prediction-hcoco -f
```

### bash to the container
```bash
docker exec -it semantic-segmentation-for-mask-prediction-hcoco bash
```


# Misc
Clear all docker cache:
```bash
docker system prune -a
```

# Run a runai job running :
```bash
runai submit -g 1 --name semantic-segmentation-for-mask-prediction-hcoco -i ajevnisek/semantic-segmentation-for-mask-prediction:hcoco -v ~/Desktop/sandbox/avidan-docker/from_container:/results --pvc=storage:/storage --large-shm
```


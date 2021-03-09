docker build -f Dockerfile-controller . -t virt-controller:v0.36.0-fix
docker build -f Dockerfile-operator . -t virt-operator:v0.36.0-fix


docker tag virt-controller:v0.36.0-fix  harbor-dev.eecos.cn:1443/kubevirt/virt-controller:v0.36.0-fix
docker push harbor-dev.eecos.cn:1443/kubevirt/virt-controller:v0.36.0-fix

docker tag virt-operator:v0.36.0-fix  harbor-dev.eecos.cn:1443/kubevirt/virt-operator:v0.36.0-fix
docker push harbor-dev.eecos.cn:1443/kubevirt/virt-operator:v0.36.0-fix

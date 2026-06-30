# this is an example deployment

- 对k8s不熟悉可参考本项目, copy出一份来改改，不需要的部分请直接删掉
- kustomization.yaml 作为入口，引用其他yaml, 系统会忽略未在这儿注册的yaml
- deployment.yaml 适合长期运行的服务
- job(cronjob)适合一次性或者周期运行
- service用于暴露服务(OSI L4)
- ingress用于配置网关(OSI L7)
- pvc用于申请持久卷
- 几个脚本用于生成加密后的秘密, 例如生成docker registry pull secret用以拉取镜像

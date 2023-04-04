---
top: 2
category: weekly
tags:
  - weekly
date: 2017-09-04
title: '推广一波 FaaS 函数计算！- 2017/09/11'
lang: zh-CN
author: dean
---

### 导语：从去年开始，MicroService/Function Compute 就陆续进入到更多的视野里，但是由于整个业界还在关注 Docker, Devops 等自动化能力的提升，导致大家还是在延续云计算老三层 (IaaS/PaaS/SaaS) 的过程改进。 很少人进行实践，业务也几乎不使用

## 0x01 什么是FaaS？

   FaaS (Function as a service) 功能即服务是在容器之上构建无服务器功能的框架。 AWS 提供的是 Lambda 服务，Aliyun 则称之为函数计算 (Function Compute)。 其本质是事件驱动系统的一种全新架构模式。
   个人更加倾向于 FC 的命名，一则表示于提供的是一种函数计算、调度、处理的能力，二来也于正常的服务的概念区分开来了。

## 0x02 FC 无服务器计算特点有哪些？

   无服务器是一段小型的，无关联的，并且可重用的代码：

   1. 它是短暂的
   2. 它不是Daemon（长期运行的）
   3. 它不发布TCP服务
   4. 它没有状态
   5. 利用已有服务或者第三方资源
   6. 几秒内完成执行（基于AWS的Lambda或aliyun的fc）

## 0x03 FC 的架构演进带来了什么？

   1. 部署迅速。 终结了传统意义上的devops， 可以完成服务的秒级部署、灰度。
   2. 能力提升。 大幅度提升了服务的防御能力、平行扩展能力， 具体抗突发能力。
   3. 成本节约。 无需准备云主机等资源，服务按调用次数收费，资源统一由平台侧调度即可。
   4. 精简软件生命周期。  完善的运维体系，无需服务管理及运维。

## 0x04 基于 FC 的解决方案

   以一套完速的服务架构解决方案为例。
   移动端： 微信小程序
   前端： Html/Vue/H5 + OSS + CDN
   后端： ApiGateway + FC + RDS + Message Service
   授权： RAM

## 0x05 FC实践

   1. 代码示例：
 [GitHub]( https://github.com/airdb/fc)

   2. 演示：
 a. 查询来源 IP 归属 [http://fc.srehub.com](http://fc.srehub.com)
 b. 读写 mysql 服务 [http://fc.srehub.com/mysql](http://fc.srehub.com/mysql)

   3. 帮助:
    a. [fcli 工具使用](https://help.aliyun.com/document_detail/52995.html?spm=5176.doc53277.6.593.3ixOgE)
    b. [阿里云函数计算支持 Python 运行环境](https://yq.aliyun.com/articles/119289)
    c. [以函数计算作为 API 网关后端服务](https://help.aliyun.com/document_detail/54788.html?spm=5176.doc48108.6.584.uANg3Z)

## 最后, 感兴趣的可以关注一下 <<AWS Lambda 实战>> 一书，中文版即将上线

-- THE END --

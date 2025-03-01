# Bioinformatics

2025年春生物信息学课程仓库

```
Name: 陈道凡
ID: 22022011312
```

## 目录结构

```
├── README.md
├── homework
│   ├── hw1.2.mp4
│   ├── hw2.1
│   │   ├── README.md
│   │   ├── file
│   │   │   ├── README.md
│   │   │   ├── bash_homework.zip
│   │   │   ├── result.gtf
│   │   │   ├── test.gtf
│   │   │   ├── test_command.gtf
│   │   │   └── test_command.gtfresult.gtf
│   │   ├── hw.sh
│   │   └── result.txt
│   └── hw2.2
│       ├── 1.gtf
│       ├── README.md
│       ├── hw.sh
│       └── result.txt
└── note
    ├── week1.md
    └── week2.md
```

## 关键链接

1. [Course Info](https://lulab.life.tsinghua.edu.cn/ncrnalab/courses/bioinfo1/)
2. [Syllabus](https://365.kdocs.cn/l/caAbfIt5y8Fk)
3. [Tutorial](https://bioinfo.gitbook.io)
4. [Tutorial Files (dockers, videos, textbooks, etc)](https://cloud.tsinghua.edu.cn/d/e3215eb0090f4b3dac1e/)
5. [Slides](https://cloud.tsinghua.edu.cn/d/dcbb0944631a4291b34c/)
6. [Subgroups](https://docs.qq.com/sheet/DQmVieWdQZVdkRUtt)

## 学习计划

- [ ] 学习 `Linux` 和 `Docker` 相关内容，包括常见命令的使用以及虚拟机相关概念，联系使用 `vim` 编辑器。
- [ ] 学习 `R` 和 `python`基础语法，熟悉该语言编程逻辑
- [ ] 了解 `NGS`的发展现状，学习基础的分析方法和分析工具
- [ ] 未完，待补充和调整

## 笔记

### week 1

#### steps of Bioinformatics

- Question
- Information
- Analysis
- Modeling

基于生物学的角度，数据的来源主要有：
```
1. images.
2. gene sequences.
3. protein structures.
4. etc.
```
经过几十年的发展，生物学的数据量越来越庞大，尤其是`NGS`的发展，带来了更加巨大的序列信息。如何从巨大的信息中，提取出规律和结论，是一个尤其重要的方向。
数据分析已经催生出一系列成果，包括细胞类型的分类、基因特征的分析等等。
基于数据分析，如何构建出符合实际特征的模型，以解释复杂的生命现象，甚至实现预测。

**算法和模型**

```
算法是解决问题的明确步骤的集合，且算法具有确定性和有限性，也即对于特定的问题，
使用对应表的算法一定在有限步中取得正确的答案。
典型的算法有二叉树、红黑树、Dijkstra等等。
模型则是对于现实世界的简化描述，基于物理规律或其他规律来解释某些现象甚至预测某些现象。
大部分情况下，构建模型的过程需要使用到许多数学表述，包括各种算法和思想等等。
典型的模型有线性回归、CNN、KNN等等。
```

#### 课后思考题

鸡兔同笼

**小学**
尝试合理的数据，试图找到正确的答案

**中学**
基于二元一次方程组，求解方程组得到答案

$$
\{ 
\begin{array}{c}
    x + y = head \\ 
    2x + 4y = leg
\end{array}
$$


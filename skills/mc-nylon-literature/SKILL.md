---
name: mc-nylon-literature
description: >-
  面向 MC 尼龙、浇铸尼龙、铸型尼龙、monomer casting nylon、cast nylon、cast PA6、
  己内酰胺阴离子聚合、催化剂/活化剂体系、TDI、NaOH、sodium caprolactamate、
  glass fiber、silica、tribology、mechanical properties 的文献检索、筛选、主题归类、
  研究空白梳理、数据库检索式设计和 Zotero 分类建议。用户要求查找、比较、整理或评估
  浇铸尼龙相关论文、专利、综述、实验依据或研究方向时使用。
---

# MC Nylon Literature Skill

当用户要做 MC 尼龙相关文献检索、方向梳理、主题比较、研究空白识别、Zotero 分类规划、
数据库检索式设计时，使用这个 skill。

这个 skill 只处理与以下主题直接相关的内容：

- MC nylon / cast nylon / cast PA6
- anionic polymerization of e-caprolactam / caprolactam
- catalyst / activator / sodium caprolactamate / TDI / NaOH
- drying / vacuum / mold temperature / polymerization window
- glass fiber / silica / nano-silica / toughening / reinforcement
- tribology / wear / friction / mechanical properties

## 解决什么问题

- 把模糊研究想法转成可执行的文献检索任务
- 为不同数据库生成更稳妥的检索关键词和检索式
- 按材料体系、工艺变量、增强增韧路线、性能指标对文献分组
- 识别争议点、证据薄弱区和研究空白
- 为后续实验设计提供“可借鉴但需验证”的启发
- 为 Zotero 或其他文献管理工具设计分类结构

## 什么时候触发

用户出现以下意图时触发：

- “帮我查 MC 尼龙/浇铸尼龙相关文献”
- “整理玻纤增强、二氧化硅增强、增韧路线”
- “给我做一个 Zotero 分类”
- “帮我比较不同催化剂/活化剂体系”
- “我想知道哪些变量最值得做实验”
- “给我一个数据库检索式”

## 建议输入

优先向用户索取这些信息；用户没给全也可以继续，但要明确缺口：

1. 研究目标
   - 例如“提高冲击强度”“降低气泡”“增强耐磨性”“比较玻纤与二氧化硅”
2. 文献范围
   - 时间范围、语言范围、是否只看期刊、是否包含专利/综述/学位论文
3. 核心变量
   - 例如 catalyst、activator、TDI、NaOH、vacuum、glass fiber、silica
4. 关注指标
   - mechanical properties、tribology、residual monomer、dispersion、defect
5. 输出用途
   - 写综述、搭实验方案、做组会、建 Zotero、准备开题

## 默认工作方式

1. 先把用户目标改写成 1 到 3 个清晰检索问题。
2. 再把问题拆成：
   - 材料对象
   - 聚合/工艺对象
   - 填料/增强对象
   - 性能对象
3. 给出中英文关键词和同义词。
4. 生成适合数据库的检索式草案。
5. 把检索结果建议分成若干主题桶。
6. 为每个主题桶说明：
   - 适合纳入什么类型文献
   - 要比较哪些变量
   - 可能出现哪些争议
7. 最后输出研究空白和对实验设计的启发。

## 默认输出格式

除非用户要求别的格式，否则使用：

```text
检索目标
- ...

建议数据库
- ...

关键词与同义词
- ...

数据库检索式
- ...

主题分组
- ...

Zotero 分类建议
- ...

争议点与研究空白
- ...

对实验设计的启发
- ...

信息缺口与下一步
- ...
```

## 不能做什么

- 不编造论文、作者、DOI、页码、期刊名、性能结果
- 不把未经核实的机理说成定论
- 不把单篇论文的局部结论扩大成普遍规律
- 不凭空给出配方比例、温度窗口、摩尔比或性能上限
- 不替代真实数据库检索结果；如果未实际检索，要明确写“这是检索方案/筛选框架”

## 不确定时如何处理

- 明确区分“已知文献共识”“常见推测”“待验证假设”
- 对缺少来源支持的内容，标注“需要文献核实”或“建议补检索”
- 如果用户问题过大，先收缩成一个主问题和两个支问题
- 如果增强体系太多，优先按“填料类型 + 工艺窗口 + 目标性能”分层整理

## references 使用规则

按需打开以下文件，不要一次性全部展开：

| 文件 | 何时打开 |
|---|---|
| [references/terminology.md](references/terminology.md) | 需要统一中英术语、缩写、同义词时 |
| [references/keywords.md](references/keywords.md) | 需要生成关键词、检索式、数据库字段组合时 |
| [references/checklist.md](references/checklist.md) | 需要检查检索是否全面、分组是否合理时 |
| [references/templates.md](references/templates.md) | 需要直接套用输出模板、Zotero 分类模板时 |

## 输出风格要求

- 中文为主，保留必要英文术语和缩写
- 优先从材料机理、工艺窗口、实验验证、量产可行性四个角度分析
- 结论要谨慎，不夸大，不把猜测写成事实
- 能列表就列表，便于后续复制进 Zotero 或实验笔记

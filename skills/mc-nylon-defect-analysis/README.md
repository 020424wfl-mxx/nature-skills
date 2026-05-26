# mc-nylon-defect-analysis

## 用途

用于分析浇铸尼龙实验中的缺陷、成型失败和性能异常，并安排验证顺序。

## 适用场景

- 出现气泡、孔洞、发白、黄变、脆裂、流痕、分层
- 填料团聚、沉降、分散不良
- 聚合不完全、无法成型、残余单体高
- 性能波动大但暂时找不到原因

## 输出

- 症状诊断表
- 优先排查顺序
- 需要补充的记录清单
- 修正动作建议

## 文件结构

- `SKILL.md`：主诊断逻辑
- `agents/openai.yaml`：Codex 展示信息
- `references/terminology.md`：缺陷与工艺术语
- `references/checklist.md`：排查检查表
- `references/defect-library.md`：常见缺陷库
- `references/templates.md`：诊断输出模板

## 注意事项

- 这个 skill 不应把单一现象直接归因到单一原因
- 必须把“可能原因”和“验证方法”配对输出
- 如果记录不足，应先要求补记录或对照信息

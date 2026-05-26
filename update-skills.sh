#!/usr/bin/env bash
set -euo pipefail

cd '/Users/wufeilong/Downloads/文件/浇铸尼龙/natures-kills'

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo '当前目录不是 git 仓库，停止执行。' >&2
  exit 1
fi

if ! git remote get-url origin >/dev/null 2>&1; then
  echo '缺少 origin remote，停止执行。' >&2
  exit 1
fi

if ! git remote get-url upstream >/dev/null 2>&1; then
  echo '缺少 upstream remote，停止执行。' >&2
  exit 1
fi

if ! command -v rsync >/dev/null 2>&1; then
  echo '未检测到 rsync，停止执行。' >&2
  exit 1
fi

if [ -n "$(git status --porcelain)" ]; then
  echo '工作区不干净，请先提交或暂存当前改动后再更新。' >&2
  exit 1
fi

current_branch="$(git branch --show-current)"
if [ -z "$current_branch" ]; then
  echo '无法识别当前分支，停止执行。' >&2
  exit 1
fi

git pull --ff-only origin "$current_branch"
git fetch upstream

if ! git merge --ff-only upstream/main; then
  echo '需要人工处理 upstream 合并冲突。' >&2
  exit 1
fi

mkdir -p "$HOME/.codex/skills"

shopt -s nullglob
for dir in skills/nature-* skills/mc-*; do
  name="$(basename "$dir")"
  mkdir -p "$HOME/.codex/skills/$name"
  rsync -a --delete "$dir/" "$HOME/.codex/skills/$name/"
done

echo '已同步 upstream'
echo '已安装 nature-* skills'
echo '已安装 mc-* skills'
echo '请重启 Codex 使 skills 生效'

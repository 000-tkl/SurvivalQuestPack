#!/bin/bash
mkdir -p config/ftbquests/{chapters,quests,loot}

# 生成阶段1任务
cat > config/ftbquests/chapters/stage1.json << 'EOF'
{
  "title": "末日求生",
  "quests": {
    "first_blood": {
      "title": "击杀丧尸",
      "tasks": [{"type": "kill", "entity": "minecraft:zombie", "target": 5}],
      "rewards": [{"type": "item", "item": "tacz:pistol"}]
    }
  }
}
EOF

# 生成主线任务链
cat > config/ftbquests/quests/main_quests.json << 'EOF'
{
  "chapters": ["stage1", "stage2", "stage3", "stage4"]
}
EOF

echo "任务文件已生成！请下载仓库压缩包"

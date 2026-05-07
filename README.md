# 💍 Paper Template for the IEEE Transaction on Wedding Information Sciences

![Build](https://img.shields.io/badge/Build-Passing-brightgreen)
![Compiler](https://img.shields.io/badge/Compiler-XeLaTeX-blue)
![Love](https://img.shields.io/badge/Love-100%25-red)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

> 专属于科研人的硬核浪漫：将人生中最重要的一纸婚约，写成一篇严谨而深情的学术论文。

本项目包含了一份独特的结婚邀请函 LaTeX 源代码。我们将传统的婚礼请柬与 IEEE 学术期刊（*IEEE Transactions on Wedding Information Sciences*）的双栏排版风格完美结合，旨在为同样热爱代码与学术的准新人们提供一个极具创意的邀请函模板。

## ✨ 核心亮点 (Features)

* 🎓 **极致的学术沉浸感**：保留了标准论文的 Title, Abstract, Keywords, Introduction 结构，甚至加入了通讯作者（小星星）和 ORCID 标识。

* 📸 **优雅的图文混排**：优化了双栏模式下的图片展示，支持 2x2 网格无缝嵌入婚纱照（`[htbp]` 自动浮动排版，告别大段空白）。

* 🇨🇳 **原生中文支持**：完美接入 `ctex` 宏包，结构精简，适合在 Overleaf 等主流平台上开箱即用。

* 💖 **浪漫彩蛋预留**：支持自定义专属的卷号与页码（例如：`Vol. 520 (2026) 001314`），让每一个数字都充满爱意。

## 🚀 编译指南 (How to Build)

**⚠️ 关键注意：必须使用 `XeLaTeX` 进行编译！**

由于模板使用了 `ctex` 宏包来处理中文，使用默认的 `pdfLaTeX` 可能会导致中文字体（如 Fandol）缺失或报错。

### 在 Overleaf 中编译：

1. 打开左上角的 **Menu**（菜单）。

2. 在 **Settings**（设置）中找到 **Compiler**。

3. 将下拉菜单切换为 **`XeLaTeX`**。

4. 点击 **Recompile** 即可获得完美带中文的 PDF。

## 🛠️ 定制属于你们的“论文” (Customization)

只需修改 `main.tex` 中的几个关键字段，即可快速生成你们的专属邀请函：

```latex
% 1. 修改“期刊”卷号与页码信息
\conference{IEEE Transactions on Wedding Information Sciences, 520 (2026) 001314}

% 2. 替换为新郎新娘的名字与专属标识
\addauthor[corresponding]{你的名字}{1}{0000-0000-0000-0001}
\addauthor[corresponding]{Ta的名字}{1}{0000-0000-0000-0002}

% 3. 修改单位（婚礼地点/家乡）信息
\addaffiliation{1}{省份城市, 邮编: 123456}

% 4. 替换图片
% 请将仓库根目录下的 fig1.jpg - fig4.jpg 替换为你们自己的婚纱照（注意保持文件同名，或在代码中修改文件名）
```



## 🍬 沾沾喜气 (Sponsor our Wedding Candy)

如果这份特殊的“开源浪漫”恰好给你带来了灵感，或者帮你们搞定了自己的专属请柬，欢迎请新郎新娘吃块喜糖，或者随一份小小的“赛博份子钱”！

就当是沾沾喜气啦，祝你未来的每一个 Project 都能一次 Compile 成功，没有 Bug，爱情也甜甜蜜蜜~ 💕

![](README_md_files/7c1d6c70-49d9-11f1-873c-1558fd24693e.jpeg?v=1&type=image)




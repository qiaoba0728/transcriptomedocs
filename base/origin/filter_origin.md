# 2.1.3 数据过滤

<font face="微软雅黑" >&emsp;&emsp;测序数据包含一些带接头 、低质量的 Reads，这些序列会对后续的信息分析造成很大的干扰，因此需要对测序数据进行进一步过滤。</font><br />
<font face="微软雅黑" >&emsp;&emsp;主要处理过程包括：</font><br />

- 过滤掉低质量，太短和太多N的"bad reads"
- 从头部(5')或尾部(3')计算滑动窗内的碱基质量均值，并切除低质量碱基
- 头尾剪裁（上下机序列可能不稳定）
- 去除接头
- 不匹配碱基对矫正
- 修剪尾部(3')的polyG（修剪ployX尾，可以去掉不想要的ploy。如：mRNA-Seq 中的ployA）
- 处理使用了唯一分子标识符（UMI）的数据，并将UMI转换为序列名称

<center>表3 下机数据过滤统计</center>


|  Sample  | Clean Reads No.              |Clean Data (bp)|Clean Reads (%)|Clean Data (%)|
| :--------: | :--------: | :--------: | :--------: | :--------: | 
{{table}}


**注**：
- Sample：样品名；
- Clean Reads No.：高质量序列read数；
- Clean Data (bp)：高质量序列碱基数；
- Clean Reads (%)： 高质量序列 reads 占测序 reads 的百分比；
- Clean Data (%)： 高质量序列碱基占测序碱基的百分比。

<!-- |  Sample  | Read No.              |Base(bp)|Q20|Q30|Q20(%)|Q30(%)|
| :--------: | :--------: | :--------: | :--------: | :--------: | :--------: |:--------: |
{{table2}} -->


<!-- **注**: 
- Sample，样品名称
- Read No.，Reads总数
- Base(bp)，碱基总数
- Q20，碱基识别准确率在99%以上的碱基总数
- Q30，碱基识别准确率在99.9%以上的碱基总数
- Q20，碱基识别准确率在99%以上的碱基所占的百分比
- Q30，碱基识别准确率在99.9%以上的碱基所占的百分比 -->
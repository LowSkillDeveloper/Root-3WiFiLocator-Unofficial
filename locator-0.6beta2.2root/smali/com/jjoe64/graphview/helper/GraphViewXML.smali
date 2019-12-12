.class public Lcom/jjoe64/graphview/helper/GraphViewXML;
.super Lcom/jjoe64/graphview/GraphView;
.source "GraphViewXML.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 28

    .prologue
    .line 74
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v19 .. v21}, Lcom/jjoe64/graphview/GraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    sget-object v21, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML:[I

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    move-object/from16 v5, v19

    .line 81
    move-object/from16 v19, v5

    sget v20, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_seriesData:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v6, v19

    .line 82
    move-object/from16 v19, v5

    sget v20, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_seriesColor:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    move/from16 v7, v19

    .line 83
    move-object/from16 v19, v5

    sget v20, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_seriesType:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v8, v19

    .line 84
    move-object/from16 v19, v5

    sget v20, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_seriesTitle:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    .line 85
    move-object/from16 v19, v5

    sget v20, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_android_title:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v10, v19

    .line 87
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    move-object/from16 v19, v6

    if-eqz v19, :cond_0

    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 92
    :cond_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string v21, "Attribute seriesData is required in the format: 0=5.0;1=5;2=4;3=9"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 94
    :cond_1
    move-object/from16 v19, v6

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v12, v19

    .line 96
    move-object/from16 v19, v12

    :try_start_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/jjoe64/graphview/series/DataPoint;

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    .line 97
    const/16 v19, 0x0

    move/from16 v13, v19

    .line 98
    move-object/from16 v19, v12

    move-object/from16 v14, v19

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v15, v19

    const/16 v19, 0x0

    move/from16 v16, v19

    :goto_0
    move/from16 v19, v16

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v19, v14

    move/from16 v20, v16

    aget-object v19, v19, v20

    move-object/from16 v17, v19

    .line 99
    move-object/from16 v19, v17

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v19

    .line 100
    move-object/from16 v19, v11

    move/from16 v20, v13

    new-instance v21, Lcom/jjoe64/graphview/series/DataPoint;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v18

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    move-object/from16 v25, v18

    const/16 v26, 0x1

    aget-object v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v25

    invoke-direct/range {v22 .. v26}, Lcom/jjoe64/graphview/series/DataPoint;-><init>(DD)V

    aput-object v21, v19, v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    add-int/lit8 v13, v13, 0x1

    .line 98
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 111
    :cond_2
    move-object/from16 v19, v8

    if-eqz v19, :cond_3

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 112
    :cond_3
    const-string v19, "line"

    move-object/from16 v8, v19

    .line 114
    :cond_4
    move-object/from16 v19, v8

    const-string v20, "line"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 115
    new-instance v19, Lcom/jjoe64/graphview/series/LineGraphSeries;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v21, v11

    invoke-direct/range {v20 .. v21}, Lcom/jjoe64/graphview/series/LineGraphSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    move-object/from16 v12, v19

    .line 123
    :goto_1
    move/from16 v19, v7

    if-eqz v19, :cond_5

    .line 124
    move-object/from16 v19, v12

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Lcom/jjoe64/graphview/series/BaseSeries;->setColor(I)V

    .line 126
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Lcom/jjoe64/graphview/helper/GraphViewXML;->addSeries(Lcom/jjoe64/graphview/series/Series;)V

    .line 128
    move-object/from16 v19, v9

    if-eqz v19, :cond_6

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_6

    .line 129
    move-object/from16 v19, v12

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lcom/jjoe64/graphview/series/BaseSeries;->setTitle(Ljava/lang/String;)V

    .line 130
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/jjoe64/graphview/helper/GraphViewXML;->getLegendRenderer()Lcom/jjoe64/graphview/LegendRenderer;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/jjoe64/graphview/LegendRenderer;->setVisible(Z)V

    .line 133
    :cond_6
    move-object/from16 v19, v10

    if-eqz v19, :cond_7

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    .line 134
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Lcom/jjoe64/graphview/helper/GraphViewXML;->setTitle(Ljava/lang/String;)V

    .line 136
    :cond_7
    return-void

    .line 103
    :catch_0
    move-exception v19

    move-object/from16 v13, v19

    .line 104
    const-string v19, "GraphViewXML"

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 105
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const-string v21, "Attribute seriesData is broken. Use this format: 0=5.0;1=5;2=4;3=9"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 116
    :cond_8
    move-object/from16 v19, v8

    const-string v20, "bar"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 117
    new-instance v19, Lcom/jjoe64/graphview/series/BarGraphSeries;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v21, v11

    invoke-direct/range {v20 .. v21}, Lcom/jjoe64/graphview/series/BarGraphSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    move-object/from16 v12, v19

    goto :goto_1

    .line 118
    :cond_9
    move-object/from16 v19, v8

    const-string v20, "points"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 119
    new-instance v19, Lcom/jjoe64/graphview/series/PointsGraphSeries;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v21, v11

    invoke-direct/range {v20 .. v21}, Lcom/jjoe64/graphview/series/PointsGraphSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    move-object/from16 v12, v19

    goto/16 :goto_1

    .line 121
    :cond_a
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unknown graph type: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ". Possible is line|bar|points"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
.end method

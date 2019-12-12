.class public Lcom/jjoe64/graphview/series/BarGraphSeries;
.super Lcom/jjoe64/graphview/series/BaseSeries;
.source "BarGraphSeries.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/jjoe64/graphview/series/DataPointInterface;",
        ">",
        "Lcom/jjoe64/graphview/series/BaseSeries",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mDataPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/RectF;",
            "TE;>;"
        }
    .end annotation
.end field

.field private mDrawValuesOnTop:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSpacing:I

.field private mValueDependentColor:Lcom/jjoe64/graphview/ValueDependentColor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/ValueDependentColor",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mValuesOnTopColor:I

.field private mValuesOnTopSize:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>()V

    .line 85
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    .line 91
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    .line 92
    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 85
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    .line 101
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    .line 102
    return-void
.end method


# virtual methods
.method public draw(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
    .locals 70

    .prologue
    .line 113
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v62, v0

    sget-object v63, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v62 .. v63}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 114
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    move/from16 v62, v0

    const/16 v63, 0x0

    cmpl-float v62, v62, v63

    if-nez v62, :cond_0

    .line 115
    move-object/from16 v62, v2

    move-object/from16 v63, v3

    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, v62

    iput v0, v1, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    .line 117
    :cond_0
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    move-object/from16 v0, v63

    iget v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    move/from16 v63, v0

    invoke-virtual/range {v62 .. v63}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v62

    move-wide/from16 v6, v62

    .line 121
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v62

    move-wide/from16 v8, v62

    .line 125
    move/from16 v62, v5

    if-eqz v62, :cond_3

    .line 126
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/SecondScale;->getMaxY()D

    move-result-wide v62

    move-wide/from16 v10, v62

    .line 127
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/SecondScale;->getMinY()D

    move-result-wide v62

    move-wide/from16 v12, v62

    .line 136
    :goto_0
    const/16 v62, 0x0

    move/from16 v14, v62

    .line 137
    const/16 v62, 0x0

    move/from16 v15, v62

    .line 138
    const/16 v62, 0x0

    move/from16 v16, v62

    .line 140
    new-instance v62, Ljava/util/TreeSet;

    move-object/from16 v69, v62

    move-object/from16 v62, v69

    move-object/from16 v63, v69

    invoke-direct/range {v63 .. v63}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v18, v62

    .line 141
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getSeries()Ljava/util/List;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v62

    move-object/from16 v19, v62

    :goto_1
    move-object/from16 v62, v19

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_6

    move-object/from16 v62, v19

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/jjoe64/graphview/series/Series;

    move-object/from16 v20, v62

    .line 142
    move-object/from16 v62, v20

    move-object/from16 v0, v62

    instance-of v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;

    move/from16 v62, v0

    if-eqz v62, :cond_5

    .line 143
    move-object/from16 v62, v20

    move-object/from16 v63, v2

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_4

    const/16 v62, 0x1

    :goto_2
    move/from16 v17, v62

    .line 144
    move/from16 v62, v17

    if-eqz v62, :cond_1

    .line 145
    move/from16 v62, v14

    move/from16 v15, v62

    .line 147
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 154
    move-object/from16 v62, v20

    move-wide/from16 v63, v8

    move-wide/from16 v65, v6

    invoke-interface/range {v62 .. v66}, Lcom/jjoe64/graphview/series/Series;->getValues(DD)Ljava/util/Iterator;

    move-result-object v62

    move-object/from16 v21, v62

    .line 155
    move-object/from16 v62, v21

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_5

    .line 156
    move-object/from16 v62, v18

    move-object/from16 v63, v21

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface/range {v63 .. v63}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v63

    invoke-static/range {v63 .. v64}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v63

    invoke-interface/range {v62 .. v63}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result v62

    .line 157
    move/from16 v62, v17

    if-eqz v62, :cond_2

    add-int/lit8 v16, v16, 0x1

    .line 158
    :cond_2
    :goto_3
    move-object/from16 v62, v21

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_5

    .line 159
    move-object/from16 v62, v18

    move-object/from16 v63, v21

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface/range {v63 .. v63}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v63

    invoke-static/range {v63 .. v64}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v63

    invoke-interface/range {v62 .. v63}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result v62

    .line 160
    move/from16 v62, v17

    if-eqz v62, :cond_2

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 129
    :cond_3
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v62

    move-wide/from16 v10, v62

    .line 130
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v62

    move-wide/from16 v12, v62

    goto/16 :goto_0

    .line 143
    :cond_4
    const/16 v62, 0x0

    goto/16 :goto_2

    .line 164
    :cond_5
    goto/16 :goto_1

    .line 165
    :cond_6
    move/from16 v62, v16

    if-nez v62, :cond_7

    .line 270
    :goto_4
    return-void

    .line 169
    :cond_7
    const/16 v62, 0x0

    move-object/from16 v19, v62

    .line 170
    const-wide/16 v62, 0x0

    move-wide/from16 v20, v62

    .line 171
    move-object/from16 v62, v18

    invoke-interface/range {v62 .. v62}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v62

    move-object/from16 v22, v62

    :goto_5
    move-object/from16 v62, v22

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_a

    move-object/from16 v62, v22

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    move-object/from16 v23, v62

    .line 172
    move-object/from16 v62, v19

    if-eqz v62, :cond_9

    .line 173
    move-object/from16 v62, v23

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v19

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    sub-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->abs(D)D

    move-result-wide v62

    move-wide/from16 v24, v62

    .line 174
    move-wide/from16 v62, v20

    const-wide/16 v64, 0x0

    cmpl-double v62, v62, v64

    if-eqz v62, :cond_8

    move-wide/from16 v62, v24

    const-wide/16 v64, 0x0

    cmpl-double v62, v62, v64

    if-lez v62, :cond_9

    move-wide/from16 v62, v24

    move-wide/from16 v64, v20

    cmpg-double v62, v62, v64

    if-gez v62, :cond_9

    .line 175
    :cond_8
    move-wide/from16 v62, v24

    move-wide/from16 v20, v62

    .line 178
    :cond_9
    move-object/from16 v62, v23

    move-object/from16 v19, v62

    .line 179
    goto :goto_5

    .line 181
    :cond_a
    move-wide/from16 v62, v20

    const-wide/16 v64, 0x0

    cmpl-double v62, v62, v64

    if-nez v62, :cond_e

    const/16 v62, 0x1

    :goto_6
    move/from16 v22, v62

    .line 183
    move-object/from16 v62, v2

    move-wide/from16 v63, v8

    move-wide/from16 v65, v6

    invoke-virtual/range {v62 .. v66}, Lcom/jjoe64/graphview/series/BarGraphSeries;->getValues(DD)Ljava/util/Iterator;

    move-result-object v62

    move-object/from16 v23, v62

    .line 187
    move/from16 v62, v22

    const/16 v63, 0x1

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_f

    move-object/from16 v62, v3

    .line 188
    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    .line 189
    :goto_7
    move/from16 v24, v62

    .line 190
    const-string v62, "BarGraphSeries"

    new-instance v63, Ljava/lang/StringBuilder;

    move-object/from16 v69, v63

    move-object/from16 v63, v69

    move-object/from16 v64, v69

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "numBars="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move/from16 v64, v22

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v62

    .line 193
    move/from16 v62, v24

    move-object/from16 v63, v2

    move-object/from16 v0, v63

    iget v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mSpacing:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    mul-float v62, v62, v63

    const/high16 v63, 0x42c80000    # 100.0f

    div-float v62, v62, v63

    move/from16 v63, v24

    const v64, 0x3f7ae148    # 0.98f

    mul-float v63, v63, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->min(FF)F

    move-result v62

    move/from16 v25, v62

    .line 195
    move/from16 v62, v24

    move/from16 v63, v25

    sub-float v62, v62, v63

    move/from16 v63, v14

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v62, v62, v63

    move/from16 v26, v62

    .line 197
    move/from16 v62, v24

    const/high16 v63, 0x40000000    # 2.0f

    div-float v62, v62, v63

    move/from16 v27, v62

    .line 199
    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    sub-double v62, v62, v64

    move-wide/from16 v28, v62

    .line 200
    move-wide/from16 v62, v6

    move-wide/from16 v64, v8

    sub-double v62, v62, v64

    move-wide/from16 v30, v62

    .line 201
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v32, v62

    .line 202
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v33, v62

    .line 203
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v34, v62

    .line 204
    move-object/from16 v62, v3

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v35, v62

    .line 207
    const/16 v62, 0x0

    move/from16 v36, v62

    .line 208
    :goto_8
    move-object/from16 v62, v23

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_15

    .line 209
    move-object/from16 v62, v23

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/jjoe64/graphview/series/DataPointInterface;

    move-object/from16 v37, v62

    .line 211
    move-object/from16 v62, v37

    invoke-interface/range {v62 .. v62}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v62

    move-wide/from16 v64, v12

    sub-double v62, v62, v64

    move-wide/from16 v38, v62

    .line 212
    move-wide/from16 v62, v38

    move-wide/from16 v64, v28

    div-double v62, v62, v64

    move-wide/from16 v40, v62

    .line 213
    move/from16 v62, v32

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v64, v40

    mul-double v62, v62, v64

    move-wide/from16 v42, v62

    .line 215
    const-wide/16 v62, 0x0

    move-wide/from16 v64, v12

    sub-double v62, v62, v64

    move-wide/from16 v44, v62

    .line 216
    move-wide/from16 v62, v44

    move-wide/from16 v64, v28

    div-double v62, v62, v64

    move-wide/from16 v46, v62

    .line 217
    move/from16 v62, v32

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v64, v46

    mul-double v62, v62, v64

    move-wide/from16 v48, v62

    .line 219
    move-object/from16 v62, v37

    invoke-interface/range {v62 .. v62}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v62

    move-wide/from16 v64, v8

    sub-double v62, v62, v64

    move-wide/from16 v50, v62

    .line 220
    move-wide/from16 v62, v50

    move-wide/from16 v64, v30

    div-double v62, v62, v64

    move-wide/from16 v52, v62

    .line 221
    move/from16 v62, v33

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v64, v52

    mul-double v62, v62, v64

    move-wide/from16 v54, v62

    .line 224
    move-object/from16 v62, v2

    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/series/BarGraphSeries;->getValueDependentColor()Lcom/jjoe64/graphview/ValueDependentColor;

    move-result-object v62

    if-eqz v62, :cond_10

    .line 225
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/series/BarGraphSeries;->getValueDependentColor()Lcom/jjoe64/graphview/ValueDependentColor;

    move-result-object v63

    move-object/from16 v64, v37

    invoke-interface/range {v63 .. v64}, Lcom/jjoe64/graphview/ValueDependentColor;->get(Lcom/jjoe64/graphview/series/DataPointInterface;)I

    move-result v63

    invoke-virtual/range {v62 .. v63}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    :goto_9
    move-wide/from16 v62, v54

    move-wide/from16 v0, v62

    double-to-float v0, v0

    move/from16 v62, v0

    move/from16 v63, v34

    add-float v62, v62, v63

    move/from16 v63, v27

    sub-float v62, v62, v63

    move/from16 v63, v25

    const/high16 v64, 0x40000000    # 2.0f

    div-float v63, v63, v64

    add-float v62, v62, v63

    move/from16 v63, v15

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    move/from16 v64, v26

    mul-float v63, v63, v64

    add-float v62, v62, v63

    move/from16 v56, v62

    .line 231
    move/from16 v62, v35

    move-wide/from16 v63, v42

    move-wide/from16 v0, v63

    double-to-float v0, v0

    move/from16 v63, v0

    sub-float v62, v62, v63

    move/from16 v63, v32

    add-float v62, v62, v63

    move/from16 v57, v62

    .line 232
    move/from16 v62, v56

    move/from16 v63, v26

    add-float v62, v62, v63

    move/from16 v58, v62

    .line 233
    move/from16 v62, v35

    move-wide/from16 v63, v48

    move-wide/from16 v0, v63

    double-to-float v0, v0

    move/from16 v63, v0

    sub-float v62, v62, v63

    move/from16 v63, v32

    add-float v62, v62, v63

    move-object/from16 v63, v3

    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/GridLabelRenderer;->isHighlightZeroLines()Z

    move-result v63

    if-eqz v63, :cond_11

    const/16 v63, 0x4

    :goto_a
    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    sub-float v62, v62, v63

    move/from16 v59, v62

    .line 235
    move/from16 v62, v57

    move/from16 v63, v59

    cmpl-float v62, v62, v63

    if-lez v62, :cond_12

    const/16 v62, 0x1

    :goto_b
    move/from16 v60, v62

    .line 236
    move/from16 v62, v60

    if-eqz v62, :cond_b

    .line 237
    move/from16 v62, v57

    move/from16 v61, v62

    .line 238
    move/from16 v62, v59

    move-object/from16 v63, v3

    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/GridLabelRenderer;->isHighlightZeroLines()Z

    move-result v63

    if-eqz v63, :cond_13

    const/16 v63, 0x4

    :goto_c
    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    add-float v62, v62, v63

    move/from16 v57, v62

    .line 239
    move/from16 v62, v61

    move/from16 v59, v62

    .line 243
    :cond_b
    move/from16 v62, v56

    move/from16 v63, v34

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->max(FF)F

    move-result v62

    move/from16 v56, v62

    .line 244
    move/from16 v62, v58

    move/from16 v63, v34

    move/from16 v64, v33

    add-float v63, v63, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->min(FF)F

    move-result v62

    move/from16 v58, v62

    .line 245
    move/from16 v62, v59

    move/from16 v63, v35

    move/from16 v64, v32

    add-float v63, v63, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->min(FF)F

    move-result v62

    move/from16 v59, v62

    .line 246
    move/from16 v62, v57

    move/from16 v63, v35

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->max(FF)F

    move-result v62

    move/from16 v57, v62

    .line 248
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    move-object/from16 v62, v0

    new-instance v63, Landroid/graphics/RectF;

    move-object/from16 v69, v63

    move-object/from16 v63, v69

    move-object/from16 v64, v69

    move/from16 v65, v56

    move/from16 v66, v57

    move/from16 v67, v58

    move/from16 v68, v59

    invoke-direct/range {v64 .. v68}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v64, v37

    invoke-interface/range {v62 .. v64}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    .line 250
    move-object/from16 v62, v4

    move/from16 v63, v56

    move/from16 v64, v57

    move/from16 v65, v58

    move/from16 v66, v59

    move-object/from16 v67, v2

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v67, v0

    invoke-virtual/range {v62 .. v67}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 253
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-boolean v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDrawValuesOnTop:Z

    move/from16 v62, v0

    if-eqz v62, :cond_d

    .line 254
    move/from16 v62, v60

    if-eqz v62, :cond_14

    .line 255
    move/from16 v62, v59

    move-object/from16 v63, v2

    move-object/from16 v0, v63

    iget v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    move/from16 v63, v0

    add-float v62, v62, v63

    const/high16 v63, 0x40800000    # 4.0f

    add-float v62, v62, v63

    move/from16 v57, v62

    .line 256
    move/from16 v62, v57

    move/from16 v63, v35

    move/from16 v64, v32

    add-float v63, v63, v64

    cmpl-float v62, v62, v63

    if-lez v62, :cond_c

    move/from16 v62, v35

    move/from16 v63, v32

    add-float v62, v62, v63

    move/from16 v57, v62

    .line 262
    :cond_c
    :goto_d
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    move-object/from16 v0, v63

    iget v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopColor:I

    move/from16 v63, v0

    invoke-virtual/range {v62 .. v63}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    move-object/from16 v62, v4

    move-object/from16 v63, v3

    .line 264
    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/GridLabelRenderer;->getLabelFormatter()Lcom/jjoe64/graphview/LabelFormatter;

    move-result-object v63

    move-object/from16 v64, v37

    invoke-interface/range {v64 .. v64}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v64

    const/16 v66, 0x0

    invoke-interface/range {v63 .. v66}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v63

    move/from16 v64, v56

    move/from16 v65, v58

    add-float v64, v64, v65

    const/high16 v65, 0x40000000    # 2.0f

    div-float v64, v64, v65

    move/from16 v65, v57

    move-object/from16 v66, v2

    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v66, v0

    .line 263
    invoke-virtual/range {v62 .. v66}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    :cond_d
    add-int/lit8 v36, v36, 0x1

    .line 269
    goto/16 :goto_8

    .line 181
    :cond_e
    move-wide/from16 v62, v6

    move-wide/from16 v64, v8

    sub-double v62, v62, v64

    move-wide/from16 v64, v20

    div-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->round(D)J

    move-result-wide v62

    move-wide/from16 v0, v62

    long-to-int v0, v0

    move/from16 v62, v0

    const/16 v63, 0x1

    add-int/lit8 v62, v62, 0x1

    goto/16 :goto_6

    .line 188
    :cond_f
    move-object/from16 v62, v3

    .line 189
    invoke-virtual/range {v62 .. v62}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v62

    move/from16 v63, v22

    const/16 v64, 0x1

    add-int/lit8 v63, v63, -0x1

    div-int v62, v62, v63

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    goto/16 :goto_7

    .line 227
    :cond_10
    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    invoke-virtual/range {v63 .. v63}, Lcom/jjoe64/graphview/series/BarGraphSeries;->getColor()I

    move-result v63

    invoke-virtual/range {v62 .. v63}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_9

    .line 233
    :cond_11
    const/16 v63, 0x1

    goto/16 :goto_a

    .line 235
    :cond_12
    const/16 v62, 0x0

    goto/16 :goto_b

    .line 238
    :cond_13
    const/16 v63, 0x1

    goto/16 :goto_c

    .line 258
    :cond_14
    move/from16 v62, v57

    const/high16 v63, 0x40800000    # 4.0f

    sub-float v62, v62, v63

    move/from16 v57, v62

    .line 259
    move/from16 v62, v57

    move/from16 v63, v35

    cmpg-float v62, v62, v63

    if-gtz v62, :cond_c

    move/from16 v62, v57

    move/from16 v63, v35

    const/high16 v64, 0x40800000    # 4.0f

    add-float v63, v63, v64

    add-float v62, v62, v63

    move/from16 v57, v62

    goto/16 :goto_d

    .line 270
    :cond_15
    goto/16 :goto_4
.end method

.method protected findDataPoint(FF)Lcom/jjoe64/graphview/series/DataPointInterface;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TE;"
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v4, v5

    .line 372
    move v5, v1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    move v5, v2

    move-object v6, v4

    .line 373
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 374
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/series/DataPointInterface;

    move-object v0, v5

    .line 377
    :goto_1
    return-object v0

    .line 376
    :cond_0
    goto :goto_0

    .line 377
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public getSpacing()I
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/series/BarGraphSeries;->mSpacing:I

    move v0, v1

    return v0
.end method

.method public getValueDependentColor()Lcom/jjoe64/graphview/ValueDependentColor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jjoe64/graphview/ValueDependentColor",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValueDependentColor:Lcom/jjoe64/graphview/ValueDependentColor;

    move-object v0, v1

    return-object v0
.end method

.method public getValuesOnTopColor()I
    .locals 2

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopColor:I

    move v0, v1

    return v0
.end method

.method public getValuesOnTopSize()F
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    move v0, v1

    return v0
.end method

.method public isDrawValuesOnTop()Z
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDrawValuesOnTop:Z

    move v0, v1

    return v0
.end method

.method protected resetDataPoints()V
    .locals 2

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 359
    return-void
.end method

.method public setDrawValuesOnTop(Z)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDrawValuesOnTop:Z

    .line 319
    return-void
.end method

.method public setSpacing(I)V
    .locals 4

    .prologue
    .line 303
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/series/BarGraphSeries;->mSpacing:I

    .line 304
    return-void
.end method

.method public setValueDependentColor(Lcom/jjoe64/graphview/ValueDependentColor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jjoe64/graphview/ValueDependentColor",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValueDependentColor:Lcom/jjoe64/graphview/ValueDependentColor;

    .line 288
    return-void
.end method

.method public setValuesOnTopColor(I)V
    .locals 4

    .prologue
    .line 334
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopColor:I

    .line 335
    return-void
.end method

.method public setValuesOnTopSize(F)V
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    .line 351
    return-void
.end method

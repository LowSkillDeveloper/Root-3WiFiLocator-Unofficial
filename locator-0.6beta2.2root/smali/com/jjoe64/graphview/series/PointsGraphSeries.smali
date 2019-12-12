.class public Lcom/jjoe64/graphview/series/PointsGraphSeries;
.super Lcom/jjoe64/graphview/series/BaseSeries;
.source "PointsGraphSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;,
        Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;,
        Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;
    }
.end annotation

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
.field private mCustomShape:Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;

.field private mPaint:Landroid/graphics/Paint;

.field private mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/series/PointsGraphSeries",
            "<TE;>.Styles;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>()V

    .line 118
    move-object v1, v0

    invoke-virtual {v1}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 128
    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->init()V

    .line 129
    return-void
.end method

.method private drawArrows([Landroid/graphics/Point;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 20

    .prologue
    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v6, 0x8

    new-array v6, v6, [F

    move-object v4, v6

    .line 250
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 251
    move-object v6, v4

    const/4 v7, 0x1

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 252
    move-object v6, v4

    const/4 v7, 0x2

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 253
    move-object v6, v4

    const/4 v7, 0x3

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 254
    move-object v6, v4

    const/4 v7, 0x4

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 255
    move-object v6, v4

    const/4 v7, 0x5

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 256
    move-object v6, v4

    const/4 v7, 0x6

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 257
    move-object v6, v4

    const/4 v7, 0x7

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 259
    move-object v6, v2

    sget-object v7, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    const/16 v8, 0x8

    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v3

    invoke-virtual/range {v6 .. v18}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 260
    new-instance v6, Landroid/graphics/Path;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    move-object v5, v6

    .line 261
    move-object v6, v5

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 262
    move-object v6, v5

    move-object v7, v1

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    move-object v8, v1

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    move-object v6, v5

    move-object v7, v1

    const/4 v8, 0x2

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    move-object v8, v1

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    move-object v6, v2

    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 265
    return-void
.end method


# virtual methods
.method public draw(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
    .locals 62

    .prologue
    .line 152
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->resetDataPoints()V

    .line 155
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v50

    move-wide/from16 v6, v50

    .line 156
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v50

    move-wide/from16 v8, v50

    .line 160
    move/from16 v50, v5

    if-eqz v50, :cond_4

    .line 161
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/SecondScale;->getMaxY()D

    move-result-wide v50

    move-wide/from16 v10, v50

    .line 162
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/SecondScale;->getMinY()D

    move-result-wide v50

    move-wide/from16 v12, v50

    .line 168
    :goto_0
    move-object/from16 v50, v2

    move-wide/from16 v51, v8

    move-wide/from16 v53, v6

    invoke-virtual/range {v50 .. v54}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getValues(DD)Ljava/util/Iterator;

    move-result-object v50

    move-object/from16 v14, v50

    .line 171
    const-wide/16 v50, 0x0

    move-wide/from16 v15, v50

    .line 172
    const-wide/16 v50, 0x0

    move-wide/from16 v17, v50

    .line 175
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    invoke-virtual/range {v51 .. v51}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getColor()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    move-wide/from16 v50, v10

    move-wide/from16 v52, v12

    sub-double v50, v50, v52

    move-wide/from16 v19, v50

    .line 178
    move-wide/from16 v50, v6

    move-wide/from16 v52, v8

    sub-double v50, v50, v52

    move-wide/from16 v21, v50

    .line 180
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v23, v50

    .line 181
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v24, v50

    .line 182
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v25, v50

    .line 183
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v26, v50

    .line 185
    const-wide/16 v50, 0x0

    move-wide/from16 v15, v50

    .line 186
    const-wide/16 v50, 0x0

    move-wide/from16 v17, v50

    .line 187
    const/16 v50, 0x0

    move/from16 v27, v50

    .line 188
    const/16 v50, 0x0

    move/from16 v28, v50

    .line 189
    :goto_1
    move-object/from16 v50, v14

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_8

    .line 190
    move-object/from16 v50, v14

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/jjoe64/graphview/series/DataPointInterface;

    move-object/from16 v29, v50

    .line 192
    move-object/from16 v50, v29

    invoke-interface/range {v50 .. v50}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v50

    move-wide/from16 v52, v12

    sub-double v50, v50, v52

    move-wide/from16 v30, v50

    .line 193
    move-wide/from16 v50, v30

    move-wide/from16 v52, v19

    div-double v50, v50, v52

    move-wide/from16 v32, v50

    .line 194
    move/from16 v50, v23

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v32

    mul-double v50, v50, v52

    move-wide/from16 v34, v50

    .line 196
    move-object/from16 v50, v29

    invoke-interface/range {v50 .. v50}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v50

    move-wide/from16 v52, v8

    sub-double v50, v50, v52

    move-wide/from16 v36, v50

    .line 197
    move-wide/from16 v50, v36

    move-wide/from16 v52, v21

    div-double v50, v50, v52

    move-wide/from16 v38, v50

    .line 198
    move/from16 v50, v24

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v38

    mul-double v50, v50, v52

    move-wide/from16 v40, v50

    .line 200
    move-wide/from16 v50, v40

    move-wide/from16 v42, v50

    .line 201
    move-wide/from16 v50, v34

    move-wide/from16 v44, v50

    .line 204
    const/16 v50, 0x0

    move/from16 v46, v50

    .line 205
    move-wide/from16 v50, v40

    move/from16 v52, v24

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    cmpl-double v50, v50, v52

    if-lez v50, :cond_0

    .line 206
    const/16 v50, 0x1

    move/from16 v46, v50

    .line 208
    :cond_0
    move-wide/from16 v50, v34

    const-wide/16 v52, 0x0

    cmpg-double v50, v50, v52

    if-gez v50, :cond_1

    .line 209
    const/16 v50, 0x1

    move/from16 v46, v50

    .line 211
    :cond_1
    move-wide/from16 v50, v34

    move/from16 v52, v23

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    cmpl-double v50, v50, v52

    if-lez v50, :cond_2

    .line 212
    const/16 v50, 0x1

    move/from16 v46, v50

    .line 215
    :cond_2
    move-wide/from16 v50, v40

    move-wide/from16 v0, v50

    double-to-float v0, v0

    move/from16 v50, v0

    move/from16 v51, v25

    const/high16 v52, 0x3f800000    # 1.0f

    add-float v51, v51, v52

    add-float v50, v50, v51

    move/from16 v47, v50

    .line 216
    move/from16 v50, v26

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v34

    sub-double v50, v50, v52

    move-wide/from16 v0, v50

    double-to-float v0, v0

    move/from16 v50, v0

    move/from16 v51, v23

    add-float v50, v50, v51

    move/from16 v48, v50

    .line 217
    move-object/from16 v50, v2

    move/from16 v51, v47

    move/from16 v52, v48

    move-object/from16 v53, v29

    invoke-virtual/range {v50 .. v53}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->registerDataPoint(FFLcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 220
    move/from16 v50, v46

    if-nez v50, :cond_3

    .line 221
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mCustomShape:Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;

    move-object/from16 v50, v0

    if-eqz v50, :cond_5

    .line 222
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mCustomShape:Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;

    move-object/from16 v50, v0

    move-object/from16 v51, v4

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move/from16 v53, v47

    move/from16 v54, v48

    move-object/from16 v55, v29

    invoke-interface/range {v50 .. v55}, Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFLcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 236
    :cond_3
    :goto_2
    add-int/lit8 v28, v28, 0x1

    .line 237
    goto/16 :goto_1

    .line 164
    :cond_4
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v50

    move-wide/from16 v10, v50

    .line 165
    move-object/from16 v50, v3

    invoke-virtual/range {v50 .. v50}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v50

    move-wide/from16 v12, v50

    goto/16 :goto_0

    .line 223
    :cond_5
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object/from16 v50, v0

    sget-object v51, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->POINT:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_6

    .line 224
    move-object/from16 v50, v4

    move/from16 v51, v47

    move/from16 v52, v48

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    move/from16 v53, v0

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    invoke-virtual/range {v50 .. v54}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 225
    :cond_6
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object/from16 v50, v0

    sget-object v51, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->RECTANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_7

    .line 226
    move-object/from16 v50, v4

    move/from16 v51, v47

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    move/from16 v52, v48

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    move/from16 v53, v0

    sub-float v52, v52, v53

    move/from16 v53, v47

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    move/from16 v54, v0

    add-float v53, v53, v54

    move/from16 v54, v48

    move-object/from16 v55, v2

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    move/from16 v55, v0

    add-float v54, v54, v55

    move-object/from16 v55, v2

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v55, v0

    invoke-virtual/range {v50 .. v55}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 227
    :cond_7
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object/from16 v50, v0

    sget-object v51, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->TRIANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_3

    .line 228
    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [Landroid/graphics/Point;

    move-object/from16 v50, v0

    move-object/from16 v49, v50

    .line 229
    move-object/from16 v50, v49

    const/16 v51, 0x0

    new-instance v52, Landroid/graphics/Point;

    move-object/from16 v61, v52

    move-object/from16 v52, v61

    move-object/from16 v53, v61

    move/from16 v54, v47

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move/from16 v55, v48

    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v56

    sub-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-direct/range {v53 .. v55}, Landroid/graphics/Point;-><init>(II)V

    aput-object v52, v50, v51

    .line 230
    move-object/from16 v50, v49

    const/16 v51, 0x1

    new-instance v52, Landroid/graphics/Point;

    move-object/from16 v61, v52

    move-object/from16 v52, v61

    move-object/from16 v53, v61

    move/from16 v54, v47

    move-object/from16 v55, v2

    invoke-virtual/range {v55 .. v55}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v55

    add-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move/from16 v55, v48

    move/from16 v0, v55

    float-to-double v0, v0

    move-wide/from16 v55, v0

    move-object/from16 v57, v2

    invoke-virtual/range {v57 .. v57}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v57

    move/from16 v0, v57

    float-to-double v0, v0

    move-wide/from16 v57, v0

    const-wide v59, 0x3fe570a3d70a3d71L    # 0.67

    mul-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-int v0, v0

    move/from16 v55, v0

    invoke-direct/range {v53 .. v55}, Landroid/graphics/Point;-><init>(II)V

    aput-object v52, v50, v51

    .line 231
    move-object/from16 v50, v49

    const/16 v51, 0x2

    new-instance v52, Landroid/graphics/Point;

    move-object/from16 v61, v52

    move-object/from16 v52, v61

    move-object/from16 v53, v61

    move/from16 v54, v47

    move-object/from16 v55, v2

    invoke-virtual/range {v55 .. v55}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v55

    sub-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move/from16 v55, v48

    move/from16 v0, v55

    float-to-double v0, v0

    move-wide/from16 v55, v0

    move-object/from16 v57, v2

    invoke-virtual/range {v57 .. v57}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v57

    move/from16 v0, v57

    float-to-double v0, v0

    move-wide/from16 v57, v0

    const-wide v59, 0x3fe570a3d70a3d71L    # 0.67

    mul-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-int v0, v0

    move/from16 v55, v0

    invoke-direct/range {v53 .. v55}, Landroid/graphics/Point;-><init>(II)V

    aput-object v52, v50, v51

    .line 232
    move-object/from16 v50, v2

    move-object/from16 v51, v49

    move-object/from16 v52, v4

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    invoke-direct/range {v50 .. v53}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->drawArrows([Landroid/graphics/Point;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 239
    :cond_8
    return-void
.end method

.method public getShape()Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget-object v1, v1, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object v0, v1

    return-object v0
.end method

.method public getSize()F
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    move v0, v1

    return v0
.end method

.method protected init()V
    .locals 7

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;-><init>(Lcom/jjoe64/graphview/series/PointsGraphSeries;Lcom/jjoe64/graphview/series/PointsGraphSeries$1;)V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    .line 137
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    const/high16 v2, 0x41a00000    # 20.0f

    iput v2, v1, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    .line 138
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    .line 139
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 140
    move-object v1, v0

    sget-object v2, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->POINT:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->setShape(Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;)V

    .line 141
    return-void
.end method

.method public setCustomShape(Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;)V
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mCustomShape:Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;

    .line 311
    return-void
.end method

.method public setShape(Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    .line 301
    return-void
.end method

.method public setSize(F)V
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    .line 287
    return-void
.end method

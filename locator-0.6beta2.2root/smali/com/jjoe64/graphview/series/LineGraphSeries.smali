.class public Lcom/jjoe64/graphview/series/LineGraphSeries;
.super Lcom/jjoe64/graphview/series/BaseSeries;
.source "LineGraphSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;
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
.field private mCustomPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBackground:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathBackground:Landroid/graphics/Path;

.field private mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/series/LineGraphSeries",
            "<TE;>.Styles;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>()V

    .line 117
    move-object v1, v0

    invoke-virtual {v1}, Lcom/jjoe64/graphview/series/LineGraphSeries;->init()V

    .line 118
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
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 127
    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/series/LineGraphSeries;->init()V

    .line 128
    return-void
.end method


# virtual methods
.method public draw(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
    .locals 59

    .prologue
    .line 155
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v53, v2

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/series/LineGraphSeries;->resetDataPoints()V

    .line 158
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v53

    const/16 v54, 0x0

    invoke-virtual/range {v53 .. v54}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v53

    move-wide/from16 v6, v53

    .line 159
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v53

    const/16 v54, 0x0

    invoke-virtual/range {v53 .. v54}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v53

    move-wide/from16 v8, v53

    .line 163
    move/from16 v53, v5

    if-eqz v53, :cond_b

    .line 164
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/SecondScale;->getMaxY()D

    move-result-wide v53

    move-wide/from16 v10, v53

    .line 165
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/SecondScale;->getMinY()D

    move-result-wide v53

    move-wide/from16 v12, v53

    .line 171
    :goto_0
    move-object/from16 v53, v2

    move-wide/from16 v54, v8

    move-wide/from16 v56, v6

    invoke-virtual/range {v53 .. v57}, Lcom/jjoe64/graphview/series/LineGraphSeries;->getValues(DD)Ljava/util/Iterator;

    move-result-object v53

    move-object/from16 v14, v53

    .line 174
    const-wide/16 v53, 0x0

    move-wide/from16 v15, v53

    .line 175
    const-wide/16 v53, 0x0

    move-wide/from16 v17, v53

    .line 178
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$100(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    move-object/from16 v54, v2

    invoke-virtual/range {v54 .. v54}, Lcom/jjoe64/graphview/series/LineGraphSeries;->getColor()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaintBackground:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$200(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mCustomPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    if-eqz v53, :cond_c

    .line 184
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mCustomPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    move-object/from16 v19, v53

    .line 189
    :goto_1
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$300(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v53

    if-eqz v53, :cond_0

    .line 190
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/graphics/Path;->reset()V

    .line 193
    :cond_0
    move-wide/from16 v53, v10

    move-wide/from16 v55, v12

    sub-double v53, v53, v55

    move-wide/from16 v20, v53

    .line 194
    move-wide/from16 v53, v6

    move-wide/from16 v55, v8

    sub-double v53, v53, v55

    move-wide/from16 v22, v53

    .line 196
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v24, v53

    .line 197
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v25, v53

    .line 198
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v26, v53

    .line 199
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v27, v53

    .line 201
    const-wide/16 v53, 0x0

    move-wide/from16 v15, v53

    .line 202
    const-wide/16 v53, 0x0

    move-wide/from16 v17, v53

    .line 203
    const-wide/16 v53, 0x0

    move-wide/from16 v28, v53

    .line 204
    const/16 v53, 0x0

    move/from16 v30, v53

    .line 205
    const/16 v53, 0x0

    move/from16 v31, v53

    .line 206
    :goto_2
    move-object/from16 v53, v14

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_e

    .line 207
    move-object/from16 v53, v14

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/jjoe64/graphview/series/DataPointInterface;

    move-object/from16 v32, v53

    .line 209
    move-object/from16 v53, v32

    invoke-interface/range {v53 .. v53}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v53

    move-wide/from16 v55, v12

    sub-double v53, v53, v55

    move-wide/from16 v33, v53

    .line 210
    move-wide/from16 v53, v33

    move-wide/from16 v55, v20

    div-double v53, v53, v55

    move-wide/from16 v35, v53

    .line 211
    move/from16 v53, v24

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v55, v35

    mul-double v53, v53, v55

    move-wide/from16 v37, v53

    .line 213
    move-object/from16 v53, v32

    invoke-interface/range {v53 .. v53}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v53

    move-wide/from16 v55, v8

    sub-double v53, v53, v55

    move-wide/from16 v39, v53

    .line 214
    move-wide/from16 v53, v39

    move-wide/from16 v55, v22

    div-double v53, v53, v55

    move-wide/from16 v41, v53

    .line 215
    move/from16 v53, v25

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v55, v41

    mul-double v53, v53, v55

    move-wide/from16 v43, v53

    .line 217
    move-wide/from16 v53, v43

    move-wide/from16 v45, v53

    .line 218
    move-wide/from16 v53, v37

    move-wide/from16 v47, v53

    .line 220
    move/from16 v53, v31

    if-lez v53, :cond_d

    .line 222
    move-wide/from16 v53, v43

    move/from16 v55, v25

    move/from16 v0, v55

    float-to-double v0, v0

    move-wide/from16 v55, v0

    cmpl-double v53, v53, v55

    if-lez v53, :cond_1

    .line 223
    move/from16 v53, v25

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v55, v17

    sub-double v53, v53, v55

    move-wide/from16 v55, v37

    move-wide/from16 v57, v15

    sub-double v55, v55, v57

    mul-double v53, v53, v55

    move-wide/from16 v55, v43

    move-wide/from16 v57, v17

    sub-double v55, v55, v57

    div-double v53, v53, v55

    move-wide/from16 v49, v53

    .line 224
    move-wide/from16 v53, v15

    move-wide/from16 v55, v49

    add-double v53, v53, v55

    move-wide/from16 v37, v53

    .line 225
    move/from16 v53, v25

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v43, v53

    .line 227
    :cond_1
    move-wide/from16 v53, v37

    const-wide/16 v55, 0x0

    cmpg-double v53, v53, v55

    if-gez v53, :cond_2

    .line 228
    const-wide/16 v53, 0x0

    move-wide/from16 v55, v15

    sub-double v53, v53, v55

    move-wide/from16 v55, v43

    move-wide/from16 v57, v17

    sub-double v55, v55, v57

    mul-double v53, v53, v55

    move-wide/from16 v55, v37

    move-wide/from16 v57, v15

    sub-double v55, v55, v57

    div-double v53, v53, v55

    move-wide/from16 v49, v53

    .line 229
    move-wide/from16 v53, v17

    move-wide/from16 v55, v49

    add-double v53, v53, v55

    move-wide/from16 v43, v53

    .line 230
    const-wide/16 v53, 0x0

    move-wide/from16 v37, v53

    .line 232
    :cond_2
    move-wide/from16 v53, v37

    move/from16 v55, v24

    move/from16 v0, v55

    float-to-double v0, v0

    move-wide/from16 v55, v0

    cmpl-double v53, v53, v55

    if-lez v53, :cond_3

    .line 233
    move/from16 v53, v24

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v55, v15

    sub-double v53, v53, v55

    move-wide/from16 v55, v43

    move-wide/from16 v57, v17

    sub-double v55, v55, v57

    mul-double v53, v53, v55

    move-wide/from16 v55, v37

    move-wide/from16 v57, v15

    sub-double v55, v55, v57

    div-double v53, v53, v55

    move-wide/from16 v49, v53

    .line 234
    move-wide/from16 v53, v17

    move-wide/from16 v55, v49

    add-double v53, v53, v55

    move-wide/from16 v43, v53

    .line 235
    move/from16 v53, v24

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v37, v53

    .line 237
    :cond_3
    move-wide/from16 v53, v15

    const-wide/16 v55, 0x0

    cmpg-double v53, v53, v55

    if-gez v53, :cond_4

    .line 238
    const-wide/16 v53, 0x0

    move-wide/from16 v55, v37

    sub-double v53, v53, v55

    move-wide/from16 v55, v43

    move-wide/from16 v57, v17

    sub-double v55, v55, v57

    mul-double v53, v53, v55

    move-wide/from16 v55, v15

    move-wide/from16 v57, v37

    sub-double v55, v55, v57

    div-double v53, v53, v55

    move-wide/from16 v49, v53

    .line 239
    move-wide/from16 v53, v43

    move-wide/from16 v55, v49

    sub-double v53, v53, v55

    move-wide/from16 v17, v53

    .line 240
    const-wide/16 v53, 0x0

    move-wide/from16 v15, v53

    .line 242
    :cond_4
    move-wide/from16 v53, v17

    const-wide/16 v55, 0x0

    cmpg-double v53, v53, v55

    if-gez v53, :cond_5

    .line 243
    const-wide/16 v53, 0x0

    move-wide/from16 v55, v43

    sub-double v53, v53, v55

    move-wide/from16 v55, v37

    move-wide/from16 v57, v15

    sub-double v55, v55, v57

    mul-double v53, v53, v55

    move-wide/from16 v55, v17

    move-wide/from16 v57, v43

    sub-double v55, v55, v57

    div-double v53, v53, v55

    move-wide/from16 v49, v53

    .line 244
    move-wide/from16 v53, v37

    move-wide/from16 v55, v49

    sub-double v53, v53, v55

    move-wide/from16 v15, v53

    .line 245
    const-wide/16 v53, 0x0

    move-wide/from16 v17, v53

    .line 247
    :cond_5
    move-wide/from16 v53, v15

    move/from16 v55, v24

    move/from16 v0, v55

    float-to-double v0, v0

    move-wide/from16 v55, v0

    cmpl-double v53, v53, v55

    if-lez v53, :cond_6

    .line 248
    move/from16 v53, v24

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v55, v37

    sub-double v53, v53, v55

    move-wide/from16 v55, v43

    move-wide/from16 v57, v17

    sub-double v55, v55, v57

    mul-double v53, v53, v55

    move-wide/from16 v55, v15

    move-wide/from16 v57, v37

    sub-double v55, v55, v57

    div-double v53, v53, v55

    move-wide/from16 v49, v53

    .line 249
    move-wide/from16 v53, v43

    move-wide/from16 v55, v49

    sub-double v53, v53, v55

    move-wide/from16 v17, v53

    .line 250
    move/from16 v53, v24

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v15, v53

    .line 253
    :cond_6
    move-wide/from16 v53, v17

    move-wide/from16 v0, v53

    double-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v26

    const/high16 v55, 0x3f800000    # 1.0f

    add-float v54, v54, v55

    add-float v53, v53, v54

    move/from16 v49, v53

    .line 254
    move/from16 v53, v27

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v55, v15

    sub-double v53, v53, v55

    move-wide/from16 v0, v53

    double-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v24

    add-float v53, v53, v54

    move/from16 v50, v53

    .line 255
    move-wide/from16 v53, v43

    move-wide/from16 v0, v53

    double-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v26

    const/high16 v55, 0x3f800000    # 1.0f

    add-float v54, v54, v55

    add-float v53, v53, v54

    move/from16 v51, v53

    .line 256
    move/from16 v53, v27

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v55, v37

    sub-double v53, v53, v55

    move-wide/from16 v0, v53

    double-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v24

    add-float v53, v53, v54

    move/from16 v52, v53

    .line 259
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$400(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v53

    if-eqz v53, :cond_7

    .line 261
    move-object/from16 v53, v4

    move/from16 v54, v51

    move/from16 v55, v52

    move-object/from16 v56, v2

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$500(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)F

    move-result v56

    move-object/from16 v57, v2

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v57, v0

    invoke-virtual/range {v53 .. v57}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    :cond_7
    move-object/from16 v53, v2

    move/from16 v54, v51

    move/from16 v55, v52

    move-object/from16 v56, v32

    invoke-virtual/range {v53 .. v56}, Lcom/jjoe64/graphview/series/LineGraphSeries;->registerDataPoint(FFLcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 265
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/graphics/Path;->reset()V

    .line 266
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    move-object/from16 v53, v0

    move/from16 v54, v49

    move/from16 v55, v50

    invoke-virtual/range {v53 .. v55}, Landroid/graphics/Path;->moveTo(FF)V

    .line 267
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    move-object/from16 v53, v0

    move/from16 v54, v51

    move/from16 v55, v52

    invoke-virtual/range {v53 .. v55}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    move-object/from16 v53, v4

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move-object/from16 v55, v19

    invoke-virtual/range {v53 .. v55}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 269
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$300(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v53

    if-eqz v53, :cond_9

    .line 270
    move/from16 v53, v31

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_8

    .line 271
    move/from16 v53, v49

    move/from16 v30, v53

    .line 272
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v53, v0

    move/from16 v54, v49

    move/from16 v55, v50

    invoke-virtual/range {v53 .. v55}, Landroid/graphics/Path;->moveTo(FF)V

    .line 274
    :cond_8
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v53, v0

    move/from16 v54, v51

    move/from16 v55, v52

    invoke-virtual/range {v53 .. v55}, Landroid/graphics/Path;->lineTo(FF)V

    .line 276
    :cond_9
    move/from16 v53, v51

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v28, v53

    .line 283
    :cond_a
    :goto_3
    move-wide/from16 v53, v47

    move-wide/from16 v15, v53

    .line 284
    move-wide/from16 v53, v45

    move-wide/from16 v17, v53

    .line 285
    add-int/lit8 v31, v31, 0x1

    .line 286
    goto/16 :goto_2

    .line 167
    :cond_b
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v53

    const/16 v54, 0x0

    invoke-virtual/range {v53 .. v54}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v53

    move-wide/from16 v10, v53

    .line 168
    move-object/from16 v53, v3

    invoke-virtual/range {v53 .. v53}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v53

    const/16 v54, 0x0

    invoke-virtual/range {v53 .. v54}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v53

    move-wide/from16 v12, v53

    goto/16 :goto_0

    .line 186
    :cond_c
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    move-object/from16 v19, v53

    goto/16 :goto_1

    .line 277
    :cond_d
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$400(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v53

    if-eqz v53, :cond_a

    .line 279
    move-wide/from16 v53, v43

    move-wide/from16 v0, v53

    double-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v26

    const/high16 v55, 0x3f800000    # 1.0f

    add-float v54, v54, v55

    add-float v53, v53, v54

    move/from16 v49, v53

    .line 280
    move/from16 v53, v27

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v53, v0

    move-wide/from16 v55, v37

    sub-double v53, v53, v55

    move-wide/from16 v0, v53

    double-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v24

    add-float v53, v53, v54

    move/from16 v50, v53

    goto :goto_3

    .line 288
    :cond_e
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$300(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v53

    if-eqz v53, :cond_f

    .line 290
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v53, v0

    move-wide/from16 v54, v28

    move-wide/from16 v0, v54

    double-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v24

    move/from16 v56, v27

    add-float v55, v55, v56

    invoke-virtual/range {v53 .. v55}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v53, v0

    move/from16 v54, v30

    move/from16 v55, v24

    move/from16 v56, v27

    add-float v55, v55, v56

    invoke-virtual/range {v53 .. v55}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/graphics/Path;->close()V

    .line 293
    move-object/from16 v53, v4

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move-object/from16 v55, v2

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaintBackground:Landroid/graphics/Paint;

    move-object/from16 v55, v0

    invoke-virtual/range {v53 .. v55}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 296
    :cond_f
    return-void
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 388
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$200(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getDataPointsRadius()F
    .locals 2

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$500(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getThickness()I
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$100(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method protected init()V
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;-><init>(Lcom/jjoe64/graphview/series/LineGraphSeries;Lcom/jjoe64/graphview/series/LineGraphSeries$1;)V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    .line 136
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    .line 137
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 138
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaintBackground:Landroid/graphics/Paint;

    .line 141
    move-object v1, v0

    new-instance v2, Landroid/graphics/Path;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    .line 142
    move-object v1, v0

    new-instance v2, Landroid/graphics/Path;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    .line 143
    return-void
.end method

.method public isDrawBackground()Z
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$300(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isDrawDataPoints()Z
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$400(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move v3, v1

    invoke-static {v2, v3}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$202(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;I)I

    move-result v2

    .line 398
    return-void
.end method

.method public setCustomPaint(Landroid/graphics/Paint;)V
    .locals 4

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/series/LineGraphSeries;->mCustomPaint:Landroid/graphics/Paint;

    .line 408
    return-void
.end method

.method public setDataPointsRadius(F)V
    .locals 4

    .prologue
    .line 379
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move v3, v1

    invoke-static {v2, v3}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$502(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;F)F

    move-result v2

    .line 380
    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move v3, v1

    invoke-static {v2, v3}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$302(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;Z)Z

    move-result v2

    .line 342
    return-void
.end method

.method public setDrawDataPoints(Z)V
    .locals 4

    .prologue
    .line 363
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move v3, v1

    invoke-static {v2, v3}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$402(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;Z)Z

    move-result v2

    .line 364
    return-void
.end method

.method public setThickness(I)V
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move v3, v1

    invoke-static {v2, v3}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$102(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;I)I

    move-result v2

    .line 318
    return-void
.end method

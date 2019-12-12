.class public Lcom/jjoe64/graphview/LegendRenderer;
.super Ljava/lang/Object;
.source "LegendRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;,
        Lcom/jjoe64/graphview/LegendRenderer$Styles;
    }
.end annotation


# instance fields
.field private cachedLegendWidth:I

.field private final mGraphView:Lcom/jjoe64/graphview/GraphView;

.field private mIsVisible:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 112
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 113
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jjoe64/graphview/LegendRenderer;->mIsVisible:Z

    .line 114
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    move-object v2, v0

    new-instance v3, Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/jjoe64/graphview/LegendRenderer$Styles;-><init>(Lcom/jjoe64/graphview/LegendRenderer;Lcom/jjoe64/graphview/LegendRenderer$1;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    .line 117
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    .line 118
    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/LegendRenderer;->resetStyles()V

    .line 119
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 25

    .prologue
    .line 161
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v14, v1

    iget-boolean v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mIsVisible:Z

    if-nez v14, :cond_0

    .line 231
    :goto_0
    return-void

    .line 163
    :cond_0
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v14, v14, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    float-to-double v14, v14

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v16

    double-to-int v14, v14

    move v3, v14

    .line 167
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v14

    .line 168
    move-object v14, v4

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v15}, Lcom/jjoe64/graphview/GraphView;->getSeries()Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v14

    .line 169
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    iget-object v14, v14, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    if-eqz v14, :cond_1

    .line 170
    move-object v14, v4

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v15}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jjoe64/graphview/SecondScale;->getSeries()Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v14

    .line 174
    :cond_1
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v14, v14, Lcom/jjoe64/graphview/LegendRenderer$Styles;->width:I

    move v5, v14

    .line 175
    move v14, v5

    if-nez v14, :cond_5

    .line 177
    move-object v14, v1

    iget v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    move v5, v14

    .line 179
    move v14, v5

    if-nez v14, :cond_5

    .line 180
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v14

    .line 181
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v7, v14

    :goto_1
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jjoe64/graphview/series/Series;

    move-object v8, v14

    .line 182
    move-object v14, v8

    invoke-interface {v14}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 183
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object v15, v8

    invoke-interface {v15}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v18, v6

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 184
    move v14, v5

    move-object v15, v6

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v5, v14

    .line 186
    :cond_2
    goto :goto_1

    .line 187
    :cond_3
    move v14, v5

    if-nez v14, :cond_4

    const/4 v14, 0x1

    move v5, v14

    .line 190
    :cond_4
    move v14, v5

    move v15, v3

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v16, v0

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v14, v15

    move v5, v14

    .line 191
    move-object v14, v1

    move v15, v5

    iput v15, v14, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    .line 196
    :cond_5
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v14, v14, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    move-object v15, v4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move v6, v14

    .line 199
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer$Styles;->fixedPosition:Landroid/graphics/Point;

    if-eqz v14, :cond_7

    .line 201
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v14

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    add-int/2addr v14, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->fixedPosition:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    move v7, v14

    .line 202
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v14

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    add-int/2addr v14, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->fixedPosition:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    move v8, v14

    .line 216
    :goto_2
    move v14, v7

    move v15, v5

    int-to-float v15, v15

    add-float/2addr v14, v15

    move v9, v14

    .line 217
    move v14, v8

    move v15, v6

    add-float/2addr v14, v15

    const/4 v15, 0x2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    int-to-float v15, v15

    add-float/2addr v14, v15

    move v10, v14

    .line 218
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->backgroundColor:I

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    move-object v14, v2

    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    invoke-direct/range {v16 .. v20}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v16, 0x41000000    # 8.0f

    const/high16 v17, 0x41000000    # 8.0f

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 221
    const/4 v14, 0x0

    move v11, v14

    .line 222
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v12, v14

    :goto_3
    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jjoe64/graphview/series/Series;

    move-object v13, v14

    .line 223
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object v15, v13

    invoke-interface {v15}, Lcom/jjoe64/graphview/series/Series;->getColor()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    move-object v14, v2

    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v18, v8

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v19, v11

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v19, v7

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v20, v3

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v20, v8

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v21, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v21, v3

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    invoke-direct/range {v16 .. v20}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    move-object v14, v13

    invoke-interface {v14}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 226
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textColor:I

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    move-object v14, v2

    move-object v15, v13

    invoke-interface {v15}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v17, v3

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v17, v8

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 230
    goto/16 :goto_3

    .line 204
    :cond_7
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v14

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v15}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v15

    add-int/2addr v14, v15

    move v15, v5

    sub-int/2addr v14, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move v7, v14

    .line 205
    sget-object v14, Lcom/jjoe64/graphview/LegendRenderer$1;->$SwitchMap$com$jjoe64$graphview$LegendRenderer$LegendAlign:[I

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->align:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    invoke-virtual {v15}, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 213
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v14

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v15}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move v15, v6

    sub-float/2addr v14, v15

    const/4 v15, 0x2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move v8, v14

    goto/16 :goto_2

    .line 207
    :pswitch_0
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v14

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v15, v15, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    move v8, v14

    .line 208
    goto/16 :goto_2

    .line 210
    :pswitch_1
    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GraphView;->getHeight()I

    move-result v14

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move v15, v6

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move v8, v14

    .line 211
    goto/16 :goto_2

    .line 231
    :cond_8
    goto/16 :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAlign()Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;
    .locals 2

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v1, v1, Lcom/jjoe64/graphview/LegendRenderer$Styles;->align:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    move-object v0, v1

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/LegendRenderer$Styles;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public getMargin()I
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    move v0, v1

    return v0
.end method

.method public getPadding()I
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move v0, v1

    return v0
.end method

.method public getSpacing()I
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move v0, v1

    return v0
.end method

.method public getTextColor()I
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textColor:I

    move v0, v1

    return v0
.end method

.method public getTextSize()F
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/LegendRenderer$Styles;->width:I

    move v0, v1

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/LegendRenderer;->mIsVisible:Z

    move v0, v1

    return v0
.end method

.method public resetStyles()V
    .locals 11

    .prologue
    .line 126
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    sget-object v5, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->MIDDLE:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    iput-object v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->align:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    .line 127
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    .line 128
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v5, v5, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    .line 129
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v5, v5, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    .line 130
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    const/4 v5, 0x0

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->width:I

    .line 131
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    const/16 v5, 0xb4

    const/16 v6, 0x64

    const/16 v7, 0x64

    const/16 v8, 0x64

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->backgroundColor:I

    .line 132
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v5, v5, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    .line 135
    new-instance v4, Landroid/util/TypedValue;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v4

    .line 136
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010042

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 141
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    iget v5, v5, Landroid/util/TypedValue;->data:I

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const v9, 0x1010036

    aput v9, v7, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 143
    move-object v4, v3

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    move v2, v4

    .line 144
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move v5, v2

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textColor:I

    .line 151
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    .line 152
    return-void

    .line 145
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 146
    const/high16 v4, -0x1000000

    move v2, v4

    goto :goto_0
.end method

.method public setAlign(Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;)V
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/LegendRenderer$Styles;->align:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    .line 368
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/LegendRenderer$Styles;->backgroundColor:I

    .line 338
    return-void
.end method

.method public setFixedPosition(II)V
    .locals 9

    .prologue
    .line 392
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    new-instance v4, Landroid/graphics/Point;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, v3, Lcom/jjoe64/graphview/LegendRenderer$Styles;->fixedPosition:Landroid/graphics/Point;

    .line 393
    return-void
.end method

.method public setMargin(I)V
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    .line 354
    return-void
.end method

.method public setPadding(I)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    .line 301
    return-void
.end method

.method public setSpacing(I)V
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    .line 281
    return-void
.end method

.method public setTextColor(I)V
    .locals 4

    .prologue
    .line 381
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textColor:I

    .line 382
    return-void
.end method

.method public setTextSize(F)V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    .line 264
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    .line 265
    return-void
.end method

.method public setVisible(Z)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/LegendRenderer;->mIsVisible:Z

    .line 247
    return-void
.end method

.method public setWidth(I)V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/LegendRenderer$Styles;->width:I

    .line 320
    return-void
.end method

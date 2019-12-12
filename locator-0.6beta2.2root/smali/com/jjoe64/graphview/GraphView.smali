.class public Lcom/jjoe64/graphview/GraphView;
.super Landroid/view/View;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/GraphView$TapDetector;,
        Lcom/jjoe64/graphview/GraphView$Styles;
    }
.end annotation


# instance fields
.field private mGridLabelRenderer:Lcom/jjoe64/graphview/GridLabelRenderer;

.field private mLegendRenderer:Lcom/jjoe64/graphview/LegendRenderer;

.field private mPaintTitle:Landroid/graphics/Paint;

.field private mPreviewPaint:Landroid/graphics/Paint;

.field protected mSecondScale:Lcom/jjoe64/graphview/SecondScale;

.field private mSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jjoe64/graphview/series/Series;",
            ">;"
        }
    .end annotation
.end field

.field private mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

.field private mTapDetector:Lcom/jjoe64/graphview/GraphView$TapDetector;

.field private mTitle:Ljava/lang/String;

.field private mViewport:Lcom/jjoe64/graphview/Viewport;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 169
    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->init()V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->init()V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    move-object v4, v0

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->init()V

    .line 193
    return-void
.end method


# virtual methods
.method public addSeries(Lcom/jjoe64/graphview/series/Series;)V
    .locals 5

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/jjoe64/graphview/series/Series;->onGraphViewAttached(Lcom/jjoe64/graphview/GraphView;)V

    .line 241
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->mSeries:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 242
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 243
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/View;->computeScroll()V

    .line 441
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/Viewport;->computeScroll()V

    .line 442
    return-void
.end method

.method protected drawTitle(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 319
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mPaintTitle:Landroid/graphics/Paint;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/GraphView;->mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

    iget v5, v5, Lcom/jjoe64/graphview/GraphView$Styles;->titleColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mPaintTitle:Landroid/graphics/Paint;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/GraphView;->mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

    iget v5, v5, Lcom/jjoe64/graphview/GraphView$Styles;->titleTextSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 321
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mPaintTitle:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 322
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move v2, v4

    .line 323
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    move v3, v4

    .line 324
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/GraphView;->mTitle:Ljava/lang/String;

    move v6, v2

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GraphView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 326
    :cond_0
    return-void
.end method

.method public getGraphContentHeight()I
    .locals 6

    .prologue
    .line 391
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GridLabelRenderer;->getStyles()Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-result-object v3

    iget v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    move v1, v3

    .line 392
    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getHeight()I

    move-result v3

    const/4 v4, 0x2

    move v5, v1

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->getLabelHorizontalHeight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getTitleHeight()I

    move-result v4

    sub-int/2addr v3, v4

    move v2, v3

    .line 393
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->getHorizontalAxisTitleHeight()I

    move-result v4

    sub-int/2addr v3, v4

    move v2, v3

    .line 394
    move v3, v2

    move v0, v3

    return v0
.end method

.method public getGraphContentLeft()I
    .locals 4

    .prologue
    .line 373
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->getStyles()Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-result-object v2

    iget v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    move v1, v2

    .line 374
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GridLabelRenderer;->getLabelVerticalWidth()I

    move-result v3

    add-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalAxisTitleWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public getGraphContentTop()I
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->getStyles()Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-result-object v2

    iget v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getTitleHeight()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 384
    move v2, v1

    move v0, v2

    return v0
.end method

.method public getGraphContentWidth()I
    .locals 6

    .prologue
    .line 401
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GridLabelRenderer;->getStyles()Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-result-object v3

    iget v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    move v1, v3

    .line 402
    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    move v5, v1

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->getLabelVerticalWidth()I

    move-result v4

    sub-int/2addr v3, v4

    move v2, v3

    .line 403
    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    if-eqz v3, :cond_0

    .line 404
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->getLabelVerticalSecondScaleWidth()I

    move-result v4

    sub-int/2addr v3, v4

    move v2, v3

    .line 406
    :cond_0
    move v3, v2

    move v0, v3

    return v0
.end method

.method public getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mGridLabelRenderer:Lcom/jjoe64/graphview/GridLabelRenderer;

    move-object v0, v1

    return-object v0
.end method

.method public getLegendRenderer()Lcom/jjoe64/graphview/LegendRenderer;
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mLegendRenderer:Lcom/jjoe64/graphview/LegendRenderer;

    move-object v0, v1

    return-object v0
.end method

.method public getSecondScale()Lcom/jjoe64/graphview/SecondScale;
    .locals 6

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    if-nez v1, :cond_0

    .line 521
    move-object v1, v0

    new-instance v2, Lcom/jjoe64/graphview/SecondScale;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-direct {v3, v4}, Lcom/jjoe64/graphview/SecondScale;-><init>(Lcom/jjoe64/graphview/Viewport;)V

    iput-object v2, v1, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    .line 523
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    move-object v0, v1

    return-object v0
.end method

.method public getSeries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jjoe64/graphview/series/Series;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mSeries:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mTitle:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getTitleColor()I
    .locals 2

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GraphView$Styles;->titleColor:I

    move v0, v1

    return v0
.end method

.method protected getTitleHeight()I
    .locals 2

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 337
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    move v0, v1

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getTitleTextSize()F
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GraphView$Styles;->titleTextSize:F

    move v0, v1

    return v0
.end method

.method public getViewport()Lcom/jjoe64/graphview/Viewport;
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mViewport:Lcom/jjoe64/graphview/Viewport;

    move-object v0, v1

    return-object v0
.end method

.method protected init()V
    .locals 7

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/GraphView;->mPreviewPaint:Landroid/graphics/Paint;

    .line 202
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mPreviewPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 203
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mPreviewPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mPreviewPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 206
    move-object v1, v0

    new-instance v2, Lcom/jjoe64/graphview/GraphView$Styles;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/jjoe64/graphview/GraphView$Styles;-><init>(Lcom/jjoe64/graphview/GraphView$1;)V

    iput-object v2, v1, Lcom/jjoe64/graphview/GraphView;->mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

    .line 207
    move-object v1, v0

    new-instance v2, Lcom/jjoe64/graphview/Viewport;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/jjoe64/graphview/Viewport;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    iput-object v2, v1, Lcom/jjoe64/graphview/GraphView;->mViewport:Lcom/jjoe64/graphview/Viewport;

    .line 208
    move-object v1, v0

    new-instance v2, Lcom/jjoe64/graphview/GridLabelRenderer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/jjoe64/graphview/GridLabelRenderer;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    iput-object v2, v1, Lcom/jjoe64/graphview/GraphView;->mGridLabelRenderer:Lcom/jjoe64/graphview/GridLabelRenderer;

    .line 209
    move-object v1, v0

    new-instance v2, Lcom/jjoe64/graphview/LegendRenderer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/jjoe64/graphview/LegendRenderer;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    iput-object v2, v1, Lcom/jjoe64/graphview/GraphView;->mLegendRenderer:Lcom/jjoe64/graphview/LegendRenderer;

    .line 211
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/GraphView;->mSeries:Ljava/util/List;

    .line 212
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/GraphView;->mPaintTitle:Landroid/graphics/Paint;

    .line 214
    move-object v1, v0

    new-instance v2, Lcom/jjoe64/graphview/GraphView$TapDetector;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jjoe64/graphview/GraphView$TapDetector;-><init>(Lcom/jjoe64/graphview/GraphView;Lcom/jjoe64/graphview/GraphView$1;)V

    iput-object v2, v1, Lcom/jjoe64/graphview/GraphView;->mTapDetector:Lcom/jjoe64/graphview/GraphView$TapDetector;

    .line 216
    move-object v1, v0

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->loadStyles()V

    .line 217
    return-void
.end method

.method protected loadStyles()V
    .locals 3

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->mGridLabelRenderer:Lcom/jjoe64/graphview/GridLabelRenderer;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->getHorizontalLabelsColor()I

    move-result v2

    iput v2, v1, Lcom/jjoe64/graphview/GraphView$Styles;->titleColor:I

    .line 224
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->mGridLabelRenderer:Lcom/jjoe64/graphview/GridLabelRenderer;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v2

    iput v2, v1, Lcom/jjoe64/graphview/GraphView$Styles;->titleTextSize:F

    .line 225
    return-void
.end method

.method public onDataChanged(ZZ)V
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/Viewport;->calcCompleteRange()V

    .line 279
    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView;->mGridLabelRenderer:Lcom/jjoe64/graphview/GridLabelRenderer;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/jjoe64/graphview/GridLabelRenderer;->invalidate(ZZ)V

    .line 280
    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->invalidate()V

    .line 281
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    move-object v4, v1

    const/16 v5, 0xc8

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 292
    move-object v4, v1

    const-string v5, "GraphView: No Preview available"

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GraphView;->mPreviewPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 308
    :goto_0
    return-void

    .line 294
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/jjoe64/graphview/GraphView;->drawTitle(Landroid/graphics/Canvas;)V

    .line 295
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mViewport:Lcom/jjoe64/graphview/Viewport;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/jjoe64/graphview/Viewport;->drawFirst(Landroid/graphics/Canvas;)V

    .line 296
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mGridLabelRenderer:Lcom/jjoe64/graphview/GridLabelRenderer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/jjoe64/graphview/GridLabelRenderer;->draw(Landroid/graphics/Canvas;)V

    .line 297
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mSeries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/series/Series;

    move-object v3, v4

    .line 298
    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/jjoe64/graphview/series/Series;->draw(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V

    .line 299
    goto :goto_1

    .line 300
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    if-eqz v4, :cond_2

    .line 301
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/SecondScale;->getSeries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/series/Series;

    move-object v3, v4

    .line 302
    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Lcom/jjoe64/graphview/series/Series;->draw(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V

    .line 303
    goto :goto_2

    .line 305
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mViewport:Lcom/jjoe64/graphview/Viewport;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/jjoe64/graphview/Viewport;->draw(Landroid/graphics/Canvas;)V

    .line 306
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->mLegendRenderer:Lcom/jjoe64/graphview/LegendRenderer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/jjoe64/graphview/LegendRenderer;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 363
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 364
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 365
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/GraphView;->mViewport:Lcom/jjoe64/graphview/Viewport;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/Viewport;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v2, v6

    .line 418
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v3, v6

    .line 421
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/GraphView;->mTapDetector:Lcom/jjoe64/graphview/GraphView$TapDetector;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/GraphView$TapDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/GraphView;->mSeries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/series/Series;

    move-object v5, v6

    .line 423
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/jjoe64/graphview/series/Series;->onTap(FF)V

    .line 424
    goto :goto_0

    .line 425
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    if-eqz v6, :cond_1

    .line 426
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/SecondScale;->getSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/series/Series;

    move-object v5, v6

    .line 427
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/jjoe64/graphview/series/Series;->onTap(FF)V

    .line 428
    goto :goto_1

    .line 432
    :cond_1
    move v6, v2

    if-nez v6, :cond_2

    move v6, v3

    if-eqz v6, :cond_3

    :cond_2
    const/4 v6, 0x1

    :goto_2
    move v0, v6

    return v0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public removeAllSeries()V
    .locals 4

    .prologue
    .line 530
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->mSeries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 531
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 532
    return-void
.end method

.method public removeSeries(Lcom/jjoe64/graphview/series/Series;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jjoe64/graphview/series/Series",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 545
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->mSeries:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 546
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 547
    return-void
.end method

.method public setLegendRenderer(Lcom/jjoe64/graphview/LegendRenderer;)V
    .locals 4

    .prologue
    .line 458
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GraphView;->mLegendRenderer:Lcom/jjoe64/graphview/LegendRenderer;

    .line 459
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 478
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GraphView;->mTitle:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setTitleColor(I)V
    .locals 4

    .prologue
    .line 512
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GraphView$Styles;->titleColor:I

    .line 513
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 4

    .prologue
    .line 495
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->mStyles:Lcom/jjoe64/graphview/GraphView$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GraphView$Styles;->titleTextSize:F

    .line 496
    return-void
.end method

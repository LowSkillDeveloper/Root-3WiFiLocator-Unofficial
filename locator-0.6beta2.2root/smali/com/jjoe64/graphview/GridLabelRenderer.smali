.class public Lcom/jjoe64/graphview/GridLabelRenderer;
.super Ljava/lang/Object;
.source "GridLabelRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;,
        Lcom/jjoe64/graphview/GridLabelRenderer$Styles;
    }
.end annotation


# instance fields
.field private final mGraphView:Lcom/jjoe64/graphview/GraphView;

.field private mHorizontalAxisTitle:Ljava/lang/String;

.field private mIsAdjusted:Z

.field private mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

.field private mLabelHorizontalHeight:Ljava/lang/Integer;

.field private mLabelHorizontalHeightFixed:Z

.field private mLabelHorizontalWidth:Ljava/lang/Integer;

.field private mLabelVerticalHeight:Ljava/lang/Integer;

.field private mLabelVerticalSecondScaleHeight:Ljava/lang/Integer;

.field private mLabelVerticalSecondScaleWidth:Ljava/lang/Integer;

.field private mLabelVerticalWidth:Ljava/lang/Integer;

.field private mLabelVerticalWidthFixed:Z

.field private mNumHorizontalLabels:I

.field private mNumVerticalLabels:I

.field private mPaintAxisTitle:Landroid/graphics/Paint;

.field private mPaintLabel:Landroid/graphics/Paint;

.field private mPaintLine:Landroid/graphics/Paint;

.field private mStepsHorizontal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mStepsVertical:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mStepsVerticalSecondScale:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field protected mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

.field private mVerticalAxisTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 7

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 280
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 281
    move-object v2, v0

    new-instance v3, Lcom/jjoe64/graphview/DefaultLabelFormatter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/jjoe64/graphview/DefaultLabelFormatter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/GridLabelRenderer;->setLabelFormatter(Lcom/jjoe64/graphview/LabelFormatter;)V

    .line 282
    move-object v2, v0

    new-instance v3, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;-><init>(Lcom/jjoe64/graphview/GridLabelRenderer;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    .line 283
    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->resetStyles()V

    .line 284
    move-object v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mNumVerticalLabels:I

    .line 285
    move-object v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mNumHorizontalLabels:I

    .line 286
    return-void
.end method


# virtual methods
.method protected adjust()V
    .locals 5

    .prologue
    .line 737
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->adjustVertical()Z

    move-result v2

    iput-boolean v2, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mIsAdjusted:Z

    .line 738
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-boolean v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mIsAdjusted:Z

    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GridLabelRenderer;->adjustVerticalSecondScale()Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mIsAdjusted:Z

    .line 739
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-boolean v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mIsAdjusted:Z

    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GridLabelRenderer;->adjustHorizontal()Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mIsAdjusted:Z

    .line 740
    return-void
.end method

.method protected adjustHorizontal()Z
    .locals 30

    .prologue
    .line 591
    move-object/from16 v2, p0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 592
    const/16 v23, 0x0

    move/from16 v2, v23

    .line 727
    :goto_0
    return v2

    .line 595
    :cond_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v23

    move-wide/from16 v3, v23

    .line 596
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v23

    move-wide/from16 v5, v23

    .line 597
    move-wide/from16 v23, v3

    move-wide/from16 v25, v5

    cmpl-double v23, v23, v25

    if-nez v23, :cond_1

    const/16 v23, 0x0

    move/from16 v2, v23

    goto :goto_0

    .line 600
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mNumHorizontalLabels:I

    move/from16 v23, v0

    move/from16 v7, v23

    .line 605
    const/16 v23, 0x0

    move/from16 v12, v23

    .line 606
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/Viewport;->isXAxisBoundsManual()Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/Viewport;->getXAxisBoundsStatus()Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-result-object v23

    sget-object v24, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->READJUST_AFTER_SCALE:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 608
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/jjoe64/graphview/Viewport;->mScalingActive:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 609
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jjoe64/graphview/Viewport;->mScalingBeginLeft:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v3, v23

    .line 610
    move-wide/from16 v23, v3

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jjoe64/graphview/Viewport;->mScalingBeginWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    add-double v23, v23, v25

    move-wide/from16 v5, v23

    .line 616
    :cond_2
    move-wide/from16 v23, v3

    move-wide/from16 v8, v23

    .line 617
    move-wide/from16 v23, v5

    move-wide/from16 v25, v8

    sub-double v23, v23, v25

    move-wide/from16 v13, v23

    .line 618
    move-wide/from16 v23, v13

    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v23, v23, v25

    move-wide/from16 v10, v23

    .line 676
    :goto_1
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsHorizontal:Ljava/util/Map;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 677
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsHorizontal:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->clear()V

    .line 681
    :goto_2
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v23

    move/from16 v13, v23

    .line 683
    const/16 v23, 0x0

    move/from16 v14, v23

    .line 684
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 686
    move-wide/from16 v23, v8

    move-wide/from16 v16, v23

    .line 687
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v23

    move/from16 v18, v23

    .line 688
    move/from16 v23, v13

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    div-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v19, v23

    .line 690
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/jjoe64/graphview/Viewport;->mScalingActive:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 691
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jjoe64/graphview/Viewport;->mScalingBeginWidth:F

    move/from16 v23, v0

    move/from16 v24, v7

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v20, v23

    .line 692
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v23

    move/from16 v24, v20

    add-float v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jjoe64/graphview/Viewport;->mScalingBeginWidth:F

    move/from16 v24, v0

    move/from16 v25, v20

    add-float v24, v24, v25

    div-float v23, v23, v24

    move/from16 v21, v23

    .line 693
    move/from16 v23, v19

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v25, v21

    div-float v24, v24, v25

    mul-float v23, v23, v24

    move/from16 v19, v23

    .line 699
    move/from16 v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    mul-float v23, v23, v24

    move/from16 v24, v21

    div-float v23, v23, v24

    move/from16 v22, v23

    .line 700
    move/from16 v23, v22

    move/from16 v24, v13

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    const/high16 v24, -0x41000000    # -0.5f

    mul-float v23, v23, v24

    move/from16 v15, v23

    .line 705
    :cond_3
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    move-result v23

    if-nez v23, :cond_4

    .line 706
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    move/from16 v23, v0

    move-wide/from16 v24, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v14, v23

    .line 707
    move/from16 v23, v15

    move/from16 v24, v14

    move/from16 v25, v19

    move-wide/from16 v26, v10

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v15, v23

    .line 709
    move/from16 v23, v14

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    move-wide/from16 v27, v10

    sub-double v25, v25, v27

    cmpg-double v23, v23, v25

    if-gez v23, :cond_f

    .line 710
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v10

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    .line 715
    :cond_4
    :goto_3
    move/from16 v23, v18

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v24, v15

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v18, v23

    .line 716
    move-wide/from16 v23, v16

    move/from16 v25, v14

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    add-double v23, v23, v25

    move-wide/from16 v16, v23

    .line 718
    const/16 v23, 0x0

    move/from16 v20, v23

    :goto_4
    move/from16 v23, v20

    move/from16 v24, v7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    .line 720
    move/from16 v23, v18

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    .line 721
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsHorizontal:Ljava/util/Map;

    move-object/from16 v23, v0

    move/from16 v24, v18

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-wide/from16 v25, v16

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 723
    :cond_5
    move/from16 v23, v18

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v24, v19

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v18, v23

    .line 724
    move-wide/from16 v23, v16

    move-wide/from16 v25, v10

    add-double v23, v23, v25

    move-wide/from16 v16, v23

    .line 718
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 621
    :cond_6
    const/16 v23, 0x1

    move/from16 v13, v23

    .line 622
    move-wide/from16 v23, v3

    move-wide/from16 v8, v23

    .line 623
    const-wide/16 v23, 0x0

    move-wide/from16 v10, v23

    .line 624
    :goto_5
    move/from16 v23, v13

    if-eqz v23, :cond_c

    .line 625
    move-wide/from16 v23, v5

    move-wide/from16 v25, v8

    sub-double v23, v23, v25

    move-wide/from16 v14, v23

    .line 626
    move-wide/from16 v23, v14

    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v23, v23, v25

    move-wide/from16 v10, v23

    .line 628
    const/16 v23, 0x1

    move/from16 v16, v23

    .line 629
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/Viewport;->getXAxisBoundsStatus()Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-result-object v23

    sget-object v24, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->READJUST_AFTER_SCALE:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 631
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jjoe64/graphview/Viewport;->mScalingBeginWidth:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_7

    .line 632
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 635
    :cond_7
    move-object/from16 v23, v2

    move-wide/from16 v24, v10

    move/from16 v26, v16

    invoke-virtual/range {v23 .. v26}, Lcom/jjoe64/graphview/GridLabelRenderer;->humanRound(DZ)D

    move-result-wide v23

    move-wide/from16 v10, v23

    .line 639
    const/16 v23, 0x0

    move/from16 v17, v23

    .line 640
    move-wide/from16 v23, v8

    const-wide/16 v25, 0x0

    cmpl-double v23, v23, v25

    if-ltz v23, :cond_9

    .line 642
    :goto_6
    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    sub-double v23, v23, v25

    const-wide/16 v25, 0x0

    cmpl-double v23, v23, v25

    if-ltz v23, :cond_8

    .line 643
    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    sub-double v23, v23, v25

    move-wide/from16 v8, v23

    .line 644
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 646
    :cond_8
    move-wide/from16 v23, v10

    move/from16 v25, v17

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-wide/from16 v8, v23

    .line 659
    :goto_7
    move-wide/from16 v23, v8

    move-wide/from16 v25, v3

    cmpl-double v23, v23, v25

    if-nez v23, :cond_b

    .line 660
    const/16 v23, 0x0

    move/from16 v13, v23

    .line 664
    :goto_8
    goto/16 :goto_5

    .line 649
    :cond_9
    add-int/lit8 v17, v17, 0x1

    .line 650
    :goto_9
    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    add-double v23, v23, v25

    const-wide/16 v25, 0x0

    cmpg-double v23, v23, v25

    if-gez v23, :cond_a

    .line 651
    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    add-double v23, v23, v25

    move-wide/from16 v8, v23

    .line 652
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 654
    :cond_a
    move-wide/from16 v23, v10

    move/from16 v25, v17

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    mul-double v23, v23, v25

    move-wide/from16 v8, v23

    goto :goto_7

    .line 662
    :cond_b
    move-wide/from16 v23, v8

    move-wide/from16 v3, v23

    goto :goto_8

    .line 666
    :cond_c
    move-wide/from16 v23, v8

    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v27, v10

    mul-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v14, v23

    .line 667
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-wide/from16 v24, v8

    invoke-virtual/range {v23 .. v25}, Lcom/jjoe64/graphview/Viewport;->setMinX(D)V

    .line 668
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-wide/from16 v24, v14

    invoke-virtual/range {v23 .. v25}, Lcom/jjoe64/graphview/Viewport;->setMaxX(D)V

    .line 669
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/Viewport;->getXAxisBoundsStatus()Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-result-object v23

    sget-object v24, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->READJUST_AFTER_SCALE:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 670
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    sget-object v24, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->FIX:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/jjoe64/graphview/Viewport;->setXAxisBoundsStatus(Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)V

    goto/16 :goto_1

    .line 672
    :cond_d
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    sget-object v24, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/jjoe64/graphview/Viewport;->setXAxisBoundsStatus(Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)V

    goto/16 :goto_1

    .line 679
    :cond_e
    move-object/from16 v23, v2

    new-instance v24, Ljava/util/LinkedHashMap;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move/from16 v26, v7

    invoke-direct/range {v25 .. v26}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsHorizontal:Ljava/util/Map;

    goto/16 :goto_2

    .line 711
    :cond_f
    move/from16 v23, v14

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v25, v10

    cmpl-double v23, v23, v25

    if-lez v23, :cond_4

    .line 712
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v23

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v10

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    goto/16 :goto_3

    .line 727
    :cond_10
    const/16 v23, 0x1

    move/from16 v2, v23

    goto/16 :goto_0
.end method

.method protected adjustVertical()Z
    .locals 27

    .prologue
    .line 496
    move-object/from16 v2, p0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 497
    const/16 v20, 0x0

    move/from16 v2, v20

    .line 580
    :goto_0
    return v2

    .line 500
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v20

    move-wide/from16 v3, v20

    .line 501
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v20

    move-wide/from16 v5, v20

    .line 503
    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    cmpl-double v20, v20, v22

    if-nez v20, :cond_1

    .line 504
    const/16 v20, 0x0

    move/from16 v2, v20

    goto :goto_0

    .line 508
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mNumVerticalLabels:I

    move/from16 v20, v0

    move/from16 v7, v20

    .line 513
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/Viewport;->isYAxisBoundsManual()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 514
    move-wide/from16 v20, v3

    move-wide/from16 v8, v20

    .line 515
    move-wide/from16 v20, v5

    move-wide/from16 v22, v8

    sub-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 516
    move-wide/from16 v20, v12

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 557
    :cond_2
    move-wide/from16 v20, v8

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 558
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v20

    move-wide/from16 v21, v8

    invoke-virtual/range {v20 .. v22}, Lcom/jjoe64/graphview/Viewport;->setMinY(D)V

    .line 559
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v20

    move-wide/from16 v21, v12

    invoke-virtual/range {v20 .. v22}, Lcom/jjoe64/graphview/Viewport;->setMaxY(D)V

    .line 561
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/Viewport;->isYAxisBoundsManual()Z

    move-result v20

    if-nez v20, :cond_3

    .line 562
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v20

    sget-object v21, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    invoke-virtual/range {v20 .. v21}, Lcom/jjoe64/graphview/Viewport;->setYAxisBoundsStatus(Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)V

    .line 565
    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVertical:Ljava/util/Map;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 566
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVertical:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    .line 570
    :goto_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v20

    move/from16 v14, v20

    .line 571
    move-wide/from16 v20, v12

    move-wide/from16 v15, v20

    .line 572
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v20

    move/from16 v17, v20

    .line 573
    move/from16 v20, v14

    move/from16 v21, v7

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    div-int v20, v20, v21

    move/from16 v18, v20

    .line 574
    const/16 v20, 0x0

    move/from16 v19, v20

    :goto_2
    move/from16 v20, v19

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 575
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVertical:Ljava/util/Map;

    move-object/from16 v20, v0

    move/from16 v21, v17

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-wide/from16 v22, v15

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 576
    move/from16 v20, v17

    move/from16 v21, v18

    add-int v20, v20, v21

    move/from16 v17, v20

    .line 577
    move-wide/from16 v20, v15

    move-wide/from16 v22, v10

    sub-double v20, v20, v22

    move-wide/from16 v15, v20

    .line 574
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 519
    :cond_4
    const/16 v20, 0x1

    move/from16 v12, v20

    .line 520
    move-wide/from16 v20, v3

    move-wide/from16 v8, v20

    .line 521
    const-wide/16 v20, 0x0

    move-wide/from16 v10, v20

    .line 522
    :goto_3
    move/from16 v20, v12

    if-eqz v20, :cond_2

    .line 523
    move-wide/from16 v20, v5

    move-wide/from16 v22, v8

    sub-double v20, v20, v22

    move-wide/from16 v13, v20

    .line 524
    move-wide/from16 v20, v13

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 525
    move-object/from16 v20, v2

    move-wide/from16 v21, v10

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/jjoe64/graphview/GridLabelRenderer;->humanRound(DZ)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 529
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 530
    move-wide/from16 v20, v8

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_6

    .line 532
    :goto_4
    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    sub-double v20, v20, v22

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_5

    .line 533
    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    sub-double v20, v20, v22

    move-wide/from16 v8, v20

    .line 534
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 536
    :cond_5
    move-wide/from16 v20, v10

    move/from16 v22, v15

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v8, v20

    .line 549
    :goto_5
    move-wide/from16 v20, v8

    move-wide/from16 v22, v3

    cmpl-double v20, v20, v22

    if-nez v20, :cond_8

    .line 550
    const/16 v20, 0x0

    move/from16 v12, v20

    .line 554
    :goto_6
    goto :goto_3

    .line 539
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 540
    :goto_7
    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    add-double v20, v20, v22

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_7

    .line 541
    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    add-double v20, v20, v22

    move-wide/from16 v8, v20

    .line 542
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 544
    :cond_7
    move-wide/from16 v20, v10

    move/from16 v22, v15

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    mul-double v20, v20, v22

    move-wide/from16 v8, v20

    goto :goto_5

    .line 552
    :cond_8
    move-wide/from16 v20, v8

    move-wide/from16 v3, v20

    goto :goto_6

    .line 568
    :cond_9
    move-object/from16 v20, v2

    new-instance v21, Ljava/util/LinkedHashMap;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move/from16 v23, v7

    invoke-direct/range {v22 .. v23}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVertical:Ljava/util/Map;

    goto/16 :goto_1

    .line 580
    :cond_a
    const/16 v20, 0x1

    move/from16 v2, v20

    goto/16 :goto_0
.end method

.method protected adjustVerticalSecondScale()Z
    .locals 27

    .prologue
    .line 435
    move-object/from16 v2, p0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 436
    const/16 v20, 0x0

    move/from16 v2, v20

    .line 485
    :goto_0
    return v2

    .line 438
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 439
    const/16 v20, 0x1

    move/from16 v2, v20

    goto :goto_0

    .line 442
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/SecondScale;->getMinY()D

    move-result-wide v20

    move-wide/from16 v3, v20

    .line 443
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/SecondScale;->getMaxY()D

    move-result-wide v20

    move-wide/from16 v5, v20

    .line 446
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mNumVerticalLabels:I

    move/from16 v20, v0

    move/from16 v7, v20

    .line 451
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/SecondScale;->isYAxisBoundsManual()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 452
    move-wide/from16 v20, v3

    move-wide/from16 v8, v20

    .line 453
    move-wide/from16 v20, v5

    move-wide/from16 v22, v8

    sub-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 454
    move-wide/from16 v20, v12

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 460
    move-wide/from16 v20, v8

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 470
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVerticalSecondScale:Ljava/util/Map;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 471
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVerticalSecondScale:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    .line 475
    :goto_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v20

    move/from16 v14, v20

    .line 476
    move-wide/from16 v20, v12

    move-wide/from16 v15, v20

    .line 477
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v20

    move/from16 v17, v20

    .line 478
    move/from16 v20, v14

    move/from16 v21, v7

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    div-int v20, v20, v21

    move/from16 v18, v20

    .line 479
    const/16 v20, 0x0

    move/from16 v19, v20

    :goto_2
    move/from16 v20, v19

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 480
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVerticalSecondScale:Ljava/util/Map;

    move-object/from16 v20, v0

    move/from16 v21, v17

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-wide/from16 v22, v15

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 481
    move/from16 v20, v17

    move/from16 v21, v18

    add-int v20, v20, v21

    move/from16 v17, v20

    .line 482
    move-wide/from16 v20, v15

    move-wide/from16 v22, v10

    sub-double v20, v20, v22

    move-wide/from16 v15, v20

    .line 479
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 457
    :cond_2
    new-instance v20, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string v22, "Not yet implemented"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 473
    :cond_3
    move-object/from16 v20, v2

    new-instance v21, Ljava/util/LinkedHashMap;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move/from16 v23, v7

    invoke-direct/range {v22 .. v23}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVerticalSecondScale:Ljava/util/Map;

    goto/16 :goto_1

    .line 485
    :cond_4
    const/16 v20, 0x1

    move/from16 v2, v20

    goto/16 :goto_0
.end method

.method protected calcLabelHorizontalSize(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 810
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v11}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v11

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v13

    sub-double/2addr v11, v13

    const-wide v13, 0x3fe90e5604189375L    # 0.783

    mul-double/2addr v11, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v13

    add-double/2addr v11, v13

    move-wide v2, v11

    .line 811
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-wide v12, v2

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 812
    move-object v11, v4

    if-nez v11, :cond_0

    .line 813
    const-string v11, ""

    move-object v4, v11

    .line 815
    :cond_0
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v11

    .line 816
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v12, v4

    const/4 v13, 0x0

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    move-object v15, v5

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 817
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalWidth:Ljava/lang/Integer;

    .line 819
    move-object v11, v0

    iget-boolean v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeightFixed:Z

    if-nez v11, :cond_3

    .line 820
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    .line 823
    const/4 v11, 0x1

    move v6, v11

    .line 824
    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    array-length v11, v11

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    :goto_0
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_2

    move-object v11, v7

    move v12, v9

    aget-byte v11, v11, v12

    move v10, v11

    .line 825
    move v11, v10

    const/16 v12, 0xa

    if-ne v11, v12, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 824
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 827
    :cond_2
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v13, v6

    mul-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    .line 829
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->textSize:F

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    .line 833
    :cond_3
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->labelsSpace:I

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    .line 834
    return-void
.end method

.method protected calcLabelVerticalSecondScaleSize(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 782
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    iget-object v11, v11, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    if-nez v11, :cond_0

    .line 783
    move-object v11, v0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleWidth:Ljava/lang/Integer;

    .line 784
    move-object v11, v0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleHeight:Ljava/lang/Integer;

    .line 802
    :goto_0
    return-void

    .line 789
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    iget-object v11, v11, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    invoke-virtual {v11}, Lcom/jjoe64/graphview/SecondScale;->getMaxY()D

    move-result-wide v11

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    iget-object v13, v13, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    invoke-virtual {v13}, Lcom/jjoe64/graphview/SecondScale;->getMinY()D

    move-result-wide v13

    sub-double/2addr v11, v13

    const-wide v13, 0x3fe90e5604189375L    # 0.783

    mul-double/2addr v11, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    iget-object v13, v13, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    invoke-virtual {v13}, Lcom/jjoe64/graphview/SecondScale;->getMinY()D

    move-result-wide v13

    add-double/2addr v11, v13

    move-wide v2, v11

    .line 790
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    iget-object v11, v11, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    invoke-virtual {v11}, Lcom/jjoe64/graphview/SecondScale;->getLabelFormatter()Lcom/jjoe64/graphview/LabelFormatter;

    move-result-object v11

    move-wide v12, v2

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 791
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v11

    .line 792
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v12, v4

    const/4 v13, 0x0

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    move-object v15, v5

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 793
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleWidth:Ljava/lang/Integer;

    .line 794
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleHeight:Ljava/lang/Integer;

    .line 797
    const/4 v11, 0x1

    move v6, v11

    .line 798
    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    array-length v11, v11

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    :goto_1
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_2

    move-object v11, v7

    move v12, v9

    aget-byte v11, v11, v12

    move v10, v11

    .line 799
    move v11, v10

    const/16 v12, 0xa

    if-ne v11, v12, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 798
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 801
    :cond_2
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleHeight:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v13, v6

    mul-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleHeight:Ljava/lang/Integer;

    .line 802
    goto/16 :goto_0
.end method

.method protected calcLabelVerticalSize(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 748
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v10}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v10

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 749
    move-object v9, v2

    if-nez v9, :cond_0

    const-string v9, ""

    move-object v2, v9

    .line 751
    :cond_0
    new-instance v9, Landroid/graphics/Rect;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v9

    .line 752
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move-object v13, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 753
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    .line 754
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalHeight:Ljava/lang/Integer;

    .line 756
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v10}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v10

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 757
    move-object v9, v2

    if-nez v9, :cond_1

    const-string v9, ""

    move-object v2, v9

    .line 759
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move-object v13, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 760
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    .line 763
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x6

    add-int/lit8 v10, v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    .line 766
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->labelsSpace:I

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    .line 769
    const/4 v9, 0x1

    move v4, v9

    .line 770
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_3

    move-object v9, v5

    move v10, v7

    aget-byte v9, v9, v10

    move v8, v9

    .line 771
    move v9, v8

    const/16 v10, 0xa

    if-ne v9, v10, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 770
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 773
    :cond_3
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalHeight:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v11, v4

    mul-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalHeight:Ljava/lang/Integer;

    .line 774
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 842
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 843
    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalWidth:Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 844
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->calcLabelHorizontalSize(Landroid/graphics/Canvas;)V

    .line 845
    const/4 v3, 0x1

    move v2, v3

    .line 847
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 848
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->calcLabelVerticalSize(Landroid/graphics/Canvas;)V

    .line 849
    const/4 v3, 0x1

    move v2, v3

    .line 851
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleWidth:Ljava/lang/Integer;

    if-nez v3, :cond_2

    .line 852
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->calcLabelVerticalSecondScaleSize(Landroid/graphics/Canvas;)V

    .line 853
    const/4 v3, 0x1

    move v2, v3

    .line 855
    :cond_2
    move v3, v2

    if-eqz v3, :cond_3

    .line 857
    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 876
    :goto_0
    return-void

    .line 861
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mIsAdjusted:Z

    if-nez v3, :cond_4

    .line 862
    move-object v3, v0

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GridLabelRenderer;->adjust()V

    .line 865
    :cond_4
    move-object v3, v0

    iget-boolean v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mIsAdjusted:Z

    if-eqz v3, :cond_5

    .line 866
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->drawVerticalSteps(Landroid/graphics/Canvas;)V

    .line 867
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->drawVerticalStepsSecondScale(Landroid/graphics/Canvas;)V

    .line 868
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->drawHorizontalSteps(Landroid/graphics/Canvas;)V

    .line 874
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->drawHorizontalAxisTitle(Landroid/graphics/Canvas;)V

    .line 875
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->drawVerticalAxisTitle(Landroid/graphics/Canvas;)V

    .line 876
    goto :goto_0

    .line 871
    :cond_5
    goto :goto_0
.end method

.method protected drawHorizontalAxisTitle(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 884
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GridLabelRenderer;->mHorizontalAxisTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GridLabelRenderer;->mHorizontalAxisTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 885
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintAxisTitle:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GridLabelRenderer;->getHorizontalAxisTitleColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 886
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintAxisTitle:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GridLabelRenderer;->getHorizontalAxisTitleTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 887
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move v2, v4

    .line 888
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v5, v5, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move v3, v4

    .line 889
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/GridLabelRenderer;->mHorizontalAxisTitle:Ljava/lang/String;

    move v6, v2

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintAxisTitle:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 891
    :cond_0
    return-void
.end method

.method protected drawHorizontalSteps(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 943
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/jjoe64/graphview/GridLabelRenderer;->getHorizontalLabelsColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 944
    const/4 v9, 0x0

    move v2, v9

    .line 945
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsHorizontal:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_0
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v4, v9

    .line 947
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-boolean v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->highlightZeroLines:Z

    if-eqz v9, :cond_0

    .line 948
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_5

    .line 949
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLine:Landroid/graphics/Paint;

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 954
    :cond_0
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->gridStyle:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->drawVertical()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 955
    move-object v9, v1

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v11}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v11

    int-to-float v11, v11

    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v13

    move-object v14, v0

    iget-object v14, v14, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object v14, v0

    iget-object v14, v14, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 959
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GridLabelRenderer;->isHorizontalLabelsVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 960
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 961
    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsHorizontal:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_2

    .line 962
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 963
    :cond_2
    move v9, v2

    if-nez v9, :cond_3

    .line 964
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 967
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 968
    move-object v9, v5

    if-nez v9, :cond_4

    .line 969
    const-string v9, ""

    move-object v5, v9

    .line 971
    :cond_4
    move-object v9, v5

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 972
    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move-object v10, v6

    array-length v10, v10

    if-ge v9, v10, :cond_6

    .line 974
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/jjoe64/graphview/GridLabelRenderer;->getHorizontalAxisTitleHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move-object v10, v6

    array-length v10, v10

    move v11, v7

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    move-object v11, v0

    invoke-virtual {v11}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v11

    mul-float/2addr v10, v11

    const v11, 0x3f8ccccd    # 1.1f

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v10, v10, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->labelsSpace:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    move v8, v9

    .line 975
    move-object v9, v1

    move-object v10, v6

    move v11, v7

    aget-object v10, v10, v11

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 972
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 951
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLine:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_1

    .line 978
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 979
    goto/16 :goto_0

    .line 980
    :cond_7
    return-void
.end method

.method protected drawVerticalAxisTitle(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 899
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GridLabelRenderer;->mVerticalAxisTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GridLabelRenderer;->mVerticalAxisTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 900
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintAxisTitle:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalAxisTitleColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintAxisTitle:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalAxisTitleTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 902
    move-object v4, v0

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalAxisTitleWidth()I

    move-result v4

    int-to-float v4, v4

    move v2, v4

    .line 903
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move v3, v4

    .line 904
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 905
    move-object v4, v1

    const/high16 v5, -0x3d4c0000    # -90.0f

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 906
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/GridLabelRenderer;->mVerticalAxisTitle:Ljava/lang/String;

    move v6, v2

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintAxisTitle:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 907
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 909
    :cond_0
    return-void
.end method

.method protected drawVerticalSteps(Landroid/graphics/Canvas;)V
    .locals 19

    .prologue
    .line 1027
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v13

    int-to-float v13, v13

    move v3, v13

    .line 1028
    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v14, v1

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalLabelsColor()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1029
    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v14, v1

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1030
    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVertical:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v4, v13

    :goto_0
    move-object v13, v4

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v13, v4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    move-object v5, v13

    .line 1032
    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-boolean v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->highlightZeroLines:Z

    if-eqz v13, :cond_0

    .line 1033
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_4

    .line 1034
    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLine:Landroid/graphics/Paint;

    const/high16 v14, 0x40a00000    # 5.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1039
    :cond_0
    :goto_1
    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->gridStyle:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->drawHorizontal()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1040
    move-object v13, v2

    move v14, v3

    move-object v15, v5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-float v15, v15

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v17, v5

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLine:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1044
    :cond_1
    move-object v13, v1

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GridLabelRenderer;->isVerticalLabelsVisible()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1045
    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move v6, v13

    .line 1046
    const/4 v13, 0x0

    move v7, v13

    .line 1047
    move-object v13, v1

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v13

    sget-object v14, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v13, v14, :cond_5

    .line 1048
    move v13, v6

    move v7, v13

    .line 1049
    move v13, v7

    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v14, v14, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->labelsSpace:I

    sub-int/2addr v13, v14

    move v7, v13

    .line 1053
    :cond_2
    :goto_2
    move v13, v7

    move-object v14, v1

    iget-object v14, v14, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v14, v14, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    move-object v15, v1

    invoke-virtual {v15}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalAxisTitleWidth()I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    move v7, v13

    .line 1055
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    move v8, v13

    .line 1057
    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v14, v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const/16 v16, 0x0

    invoke-interface/range {v13 .. v16}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 1058
    move-object v13, v9

    if-nez v13, :cond_3

    .line 1059
    const-string v13, ""

    move-object v9, v13

    .line 1061
    :cond_3
    move-object v13, v9

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 1062
    move v13, v8

    move-object v14, v10

    array-length v14, v14

    int-to-float v14, v14

    move-object v15, v1

    invoke-virtual {v15}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v15

    mul-float/2addr v14, v15

    const v15, 0x3f8ccccd    # 1.1f

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move v8, v13

    .line 1063
    const/4 v13, 0x0

    move v11, v13

    :goto_3
    move v13, v11

    move-object v14, v10

    array-length v14, v14

    if-ge v13, v14, :cond_6

    .line 1065
    move v13, v8

    move-object v14, v10

    array-length v14, v14

    move v15, v11

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    int-to-float v14, v14

    move-object v15, v1

    invoke-virtual {v15}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v15

    mul-float/2addr v14, v15

    const v15, 0x3f8ccccd    # 1.1f

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    move v12, v13

    .line 1066
    move-object v13, v2

    move-object v14, v10

    move v15, v11

    aget-object v14, v14, v15

    move v15, v7

    int-to-float v15, v15

    move/from16 v16, v12

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1063
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1036
    :cond_4
    move-object v13, v1

    iget-object v13, v13, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLine:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_1

    .line 1050
    :cond_5
    move-object v13, v1

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v13

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v13, v14, :cond_2

    .line 1051
    move v13, v6

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    move v7, v13

    goto/16 :goto_2

    .line 1069
    :cond_6
    goto/16 :goto_0

    .line 1070
    :cond_7
    return-void
.end method

.method protected drawVerticalStepsSecondScale(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 989
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    iget-object v11, v11, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    if-nez v11, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 994
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v11}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v12}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    move v2, v11

    .line 995
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalLabelsSecondScaleColor()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 996
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalLabelsSecondScaleAlign()Landroid/graphics/Paint$Align;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 997
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mStepsVerticalSecondScale:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v3, v11

    :goto_1
    move-object v11, v3

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    move-object v4, v11

    .line 999
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleWidth:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v5, v11

    .line 1000
    move v11, v2

    float-to-int v11, v11

    move v6, v11

    .line 1001
    move-object v11, v0

    invoke-virtual {v11}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalLabelsSecondScaleAlign()Landroid/graphics/Paint$Align;

    move-result-object v11

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v11, v12, :cond_2

    .line 1002
    move v11, v6

    move v12, v5

    add-int/2addr v11, v12

    move v6, v11

    .line 1007
    :cond_1
    :goto_2
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    move v7, v11

    .line 1009
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    iget-object v11, v11, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    iget-object v11, v11, Lcom/jjoe64/graphview/SecondScale;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 1010
    move v11, v7

    move-object v12, v8

    array-length v12, v12

    int-to-float v12, v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v13

    mul-float/2addr v12, v13

    const v13, 0x3f8ccccd    # 1.1f

    mul-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    move v7, v11

    .line 1011
    const/4 v11, 0x0

    move v9, v11

    :goto_3
    move v11, v9

    move-object v12, v8

    array-length v12, v12

    if-ge v11, v12, :cond_3

    .line 1013
    move v11, v7

    move-object v12, v8

    array-length v12, v12

    move v13, v9

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v13

    mul-float/2addr v12, v13

    const v13, 0x3f8ccccd    # 1.1f

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move v10, v11

    .line 1014
    move-object v11, v1

    move-object v12, v8

    move v13, v9

    aget-object v12, v12, v13

    move v13, v6

    int-to-float v13, v13

    move v14, v10

    move-object v15, v0

    iget-object v15, v15, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1011
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1003
    :cond_2
    move-object v11, v0

    invoke-virtual {v11}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalLabelsSecondScaleAlign()Landroid/graphics/Paint$Align;

    move-result-object v11

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v11, v12, :cond_1

    .line 1004
    move v11, v6

    move v12, v5

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v6, v11

    goto :goto_2

    .line 1016
    :cond_3
    goto/16 :goto_1

    .line 1017
    :cond_4
    goto/16 :goto_0
.end method

.method public getGridColor()I
    .locals 2

    .prologue
    .line 1166
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->gridColor:I

    move v0, v1

    return v0
.end method

.method public getGridStyle()Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;
    .locals 2

    .prologue
    .line 1440
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->gridStyle:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    move-object v0, v1

    return-object v0
.end method

.method public getHorizontalAxisTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1256
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mHorizontalAxisTitle:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getHorizontalAxisTitleColor()I
    .locals 2

    .prologue
    .line 1326
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalAxisTitleColor:I

    move v0, v1

    return v0
.end method

.method public getHorizontalAxisTitleHeight()I
    .locals 2

    .prologue
    .line 916
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mHorizontalAxisTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mHorizontalAxisTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 917
    move-object v1, v0

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GridLabelRenderer;->getHorizontalAxisTitleTextSize()F

    move-result v1

    float-to-int v1, v1

    move v0, v1

    .line 919
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getHorizontalAxisTitleTextSize()F
    .locals 2

    .prologue
    .line 1312
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalAxisTitleTextSize:F

    move v0, v1

    return v0
.end method

.method public getHorizontalLabelsColor()I
    .locals 2

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalLabelsColor:I

    move v0, v1

    return v0
.end method

.method public getLabelFormatter()Lcom/jjoe64/graphview/LabelFormatter;
    .locals 2

    .prologue
    .line 1240
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v0, v1

    return-object v0
.end method

.method public getLabelHorizontalHeight()I
    .locals 2

    .prologue
    .line 1146
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GridLabelRenderer;->isHorizontalLabelsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLabelVerticalSecondScaleWidth()I
    .locals 2

    .prologue
    .line 1369
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleWidth:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLabelVerticalWidth()I
    .locals 2

    .prologue
    .line 1125
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GridLabelRenderer;->isVerticalLabelsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLabelsSpace()I
    .locals 2

    .prologue
    .line 1456
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->labelsSpace:I

    move v0, v1

    return v0
.end method

.method public getNumHorizontalLabels()I
    .locals 2

    .prologue
    .line 1425
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mNumHorizontalLabels:I

    move v0, v1

    return v0
.end method

.method public getNumVerticalLabels()I
    .locals 2

    .prologue
    .line 1409
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mNumVerticalLabels:I

    move v0, v1

    return v0
.end method

.method public getPadding()I
    .locals 2

    .prologue
    .line 1180
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    move v0, v1

    return v0
.end method

.method public getStyles()Lcom/jjoe64/graphview/GridLabelRenderer$Styles;
    .locals 2

    .prologue
    .line 1117
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v0, v1

    return-object v0
.end method

.method public getTextSize()F
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->textSize:F

    move v0, v1

    return v0
.end method

.method public getVerticalAxisTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1270
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mVerticalAxisTitle:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getVerticalAxisTitleColor()I
    .locals 2

    .prologue
    .line 1298
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalAxisTitleColor:I

    move v0, v1

    return v0
.end method

.method public getVerticalAxisTitleTextSize()F
    .locals 2

    .prologue
    .line 1284
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalAxisTitleTextSize:F

    move v0, v1

    return v0
.end method

.method public getVerticalAxisTitleWidth()I
    .locals 2

    .prologue
    .line 928
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mVerticalAxisTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mVerticalAxisTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 929
    move-object v1, v0

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GridLabelRenderer;->getVerticalAxisTitleTextSize()F

    move-result v1

    float-to-int v1, v1

    move v0, v1

    .line 931
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getVerticalLabelsAlign()Landroid/graphics/Paint$Align;
    .locals 2

    .prologue
    .line 383
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsAlign:Landroid/graphics/Paint$Align;

    move-object v0, v1

    return-object v0
.end method

.method public getVerticalLabelsColor()I
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsColor:I

    move v0, v1

    return v0
.end method

.method public getVerticalLabelsSecondScaleAlign()Landroid/graphics/Paint$Align;
    .locals 2

    .prologue
    .line 1340
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsSecondScaleAlign:Landroid/graphics/Paint$Align;

    move-object v0, v1

    return-object v0
.end method

.method public getVerticalLabelsSecondScaleColor()I
    .locals 2

    .prologue
    .line 1354
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsSecondScaleColor:I

    move v0, v1

    return v0
.end method

.method protected humanRound(DZ)D
    .locals 11

    .prologue
    .line 1082
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    const/4 v5, 0x0

    move v4, v5

    .line 1083
    :goto_0
    move-wide v5, v1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_0

    .line 1084
    move-wide v5, v1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    move-wide v1, v5

    .line 1085
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1087
    :cond_0
    :goto_1
    move-wide v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 1088
    move-wide v5, v1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v7

    move-wide v1, v5

    .line 1089
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1091
    :cond_1
    move v5, v3

    if-eqz v5, :cond_6

    .line 1092
    move-wide v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    .line 1110
    :cond_2
    :goto_2
    move-wide v5, v1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    move v9, v4

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    move-wide v0, v5

    return-wide v0

    .line 1093
    :cond_3
    move-wide v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_4

    .line 1094
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    move-wide v1, v5

    goto :goto_2

    .line 1095
    :cond_4
    move-wide v5, v1

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_5

    .line 1096
    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    move-wide v1, v5

    goto :goto_2

    .line 1097
    :cond_5
    move-wide v5, v1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 1098
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-wide v1, v5

    goto :goto_2

    .line 1101
    :cond_6
    move-wide v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_7

    goto :goto_2

    .line 1102
    :cond_7
    move-wide v5, v1

    const-wide v7, 0x401399999999999aL    # 4.9

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_8

    .line 1103
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    move-wide v1, v5

    goto :goto_2

    .line 1104
    :cond_8
    move-wide v5, v1

    const-wide v7, 0x4023cccccccccccdL    # 9.9

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_9

    .line 1105
    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    move-wide v1, v5

    goto :goto_2

    .line 1106
    :cond_9
    move-wide v5, v1

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 1107
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-wide v1, v5

    goto :goto_2
.end method

.method public invalidate(ZZ)V
    .locals 5

    .prologue
    .line 411
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_0

    .line 412
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mIsAdjusted:Z

    .line 414
    :cond_0
    move v3, v1

    if-nez v3, :cond_2

    .line 415
    move-object v3, v0

    iget-boolean v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidthFixed:Z

    if-nez v3, :cond_1

    .line 416
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    .line 418
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalHeight:Ljava/lang/Integer;

    .line 419
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleWidth:Ljava/lang/Integer;

    .line 420
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalSecondScaleHeight:Ljava/lang/Integer;

    .line 423
    :cond_2
    return-void
.end method

.method public isHighlightZeroLines()Z
    .locals 2

    .prologue
    .line 1173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-boolean v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->highlightZeroLines:Z

    move v0, v1

    return v0
.end method

.method public isHorizontalLabelsVisible()Z
    .locals 2

    .prologue
    .line 1377
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-boolean v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalLabelsVisible:Z

    move v0, v1

    return v0
.end method

.method public isVerticalLabelsVisible()Z
    .locals 2

    .prologue
    .line 1393
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget-boolean v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsVisible:Z

    move v0, v1

    return v0
.end method

.method public reloadStyles()V
    .locals 5

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLine:Landroid/graphics/Paint;

    .line 353
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLine:Landroid/graphics/Paint;

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->gridColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLine:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    .line 357
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintLabel:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 359
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintAxisTitle:Landroid/graphics/Paint;

    .line 360
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintAxisTitle:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 361
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/GridLabelRenderer;->mPaintAxisTitle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 362
    return-void
.end method

.method public resetStyles()V
    .locals 15

    .prologue
    .line 295
    move-object v0, p0

    new-instance v8, Landroid/util/TypedValue;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v8

    .line 296
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v8}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x1010042

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    .line 303
    const/4 v8, 0x0

    move-object v6, v8

    .line 305
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v8}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v9, v1

    iget v9, v9, Landroid/util/TypedValue;->data:I

    const/4 v10, 0x4

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v6, v8

    .line 310
    move-object v8, v6

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    move v2, v8

    .line 311
    move-object v8, v6

    const/4 v9, 0x1

    const v10, -0x777778

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    move v3, v8

    .line 312
    move-object v8, v6

    const/4 v9, 0x2

    const/16 v10, 0x14

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    move v4, v8

    .line 313
    move-object v8, v6

    const/4 v9, 0x3

    const/16 v10, 0x14

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    move v5, v8

    .line 314
    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v9, v2

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsColor:I

    .line 323
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v9, v2

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsSecondScaleColor:I

    .line 324
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v9, v2

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalLabelsColor:I

    .line 325
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v9, v3

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->gridColor:I

    .line 326
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v9, v4

    int-to-float v9, v9

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->textSize:F

    .line 327
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v9, v5

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    .line 328
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->textSize:F

    float-to-int v9, v9

    const/4 v10, 0x5

    div-int/lit8 v9, v9, 0x5

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->labelsSpace:I

    .line 330
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsAlign:Landroid/graphics/Paint$Align;

    .line 331
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsSecondScaleAlign:Landroid/graphics/Paint$Align;

    .line 332
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->highlightZeroLines:Z

    .line 334
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsColor:I

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalAxisTitleColor:I

    .line 335
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalLabelsColor:I

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalAxisTitleColor:I

    .line 336
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->textSize:F

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalAxisTitleTextSize:F

    .line 337
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    iget v9, v9, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->textSize:F

    iput v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalAxisTitleTextSize:F

    .line 339
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalLabelsVisible:Z

    .line 340
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsVisible:Z

    .line 342
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    sget-object v9, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    iput-object v9, v8, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->gridStyle:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    .line 344
    move-object v8, v0

    invoke-virtual {v8}, Lcom/jjoe64/graphview/GridLabelRenderer;->reloadStyles()V

    .line 345
    return-void

    .line 315
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 316
    const/high16 v8, -0x1000000

    move v2, v8

    .line 317
    const v8, -0x777778

    move v3, v8

    .line 318
    const/16 v8, 0x14

    move v4, v8

    .line 319
    const/16 v8, 0x14

    move v5, v8

    goto/16 :goto_0

    .line 305
    :array_0
    .array-data 4
        0x1010036
        0x1010038
        0x1010095
        0x101023f
    .end array-data
.end method

.method public setGridColor(I)V
    .locals 4

    .prologue
    .line 1217
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->gridColor:I

    .line 1218
    return-void
.end method

.method public setGridStyle(Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;)V
    .locals 4

    .prologue
    .line 1449
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->gridStyle:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    .line 1450
    return-void
.end method

.method public setHighlightZeroLines(Z)V
    .locals 4

    .prologue
    .line 1225
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->highlightZeroLines:Z

    .line 1226
    return-void
.end method

.method public setHorizontalAxisTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1263
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mHorizontalAxisTitle:Ljava/lang/String;

    .line 1264
    return-void
.end method

.method public setHorizontalAxisTitleColor(I)V
    .locals 4

    .prologue
    .line 1333
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalAxisTitleColor:I

    .line 1334
    return-void
.end method

.method public setHorizontalAxisTitleTextSize(F)V
    .locals 4

    .prologue
    .line 1319
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalAxisTitleTextSize:F

    .line 1320
    return-void
.end method

.method public setHorizontalLabelsColor(I)V
    .locals 4

    .prologue
    .line 1210
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalLabelsColor:I

    .line 1211
    return-void
.end method

.method public setHorizontalLabelsVisible(Z)V
    .locals 4

    .prologue
    .line 1385
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->horizontalLabelsVisible:Z

    .line 1386
    return-void
.end method

.method public setLabelFormatter(Lcom/jjoe64/graphview/LabelFormatter;)V
    .locals 4

    .prologue
    .line 1248
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    .line 1249
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jjoe64/graphview/LabelFormatter;->setViewport(Lcom/jjoe64/graphview/Viewport;)V

    .line 1250
    return-void
.end method

.method public setLabelHorizontalHeight(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 1158
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    .line 1159
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeight:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelHorizontalHeightFixed:Z

    .line 1160
    return-void

    .line 1159
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setLabelVerticalWidth(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 1137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    .line 1138
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidth:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mLabelVerticalWidthFixed:Z

    .line 1139
    return-void

    .line 1138
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setLabelsSpace(I)V
    .locals 4

    .prologue
    .line 1465
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->labelsSpace:I

    .line 1466
    return-void
.end method

.method public setNumHorizontalLabels(I)V
    .locals 4

    .prologue
    .line 1433
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mNumHorizontalLabels:I

    .line 1434
    return-void
.end method

.method public setNumVerticalLabels(I)V
    .locals 4

    .prologue
    .line 1417
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mNumVerticalLabels:I

    .line 1418
    return-void
.end method

.method public setPadding(I)V
    .locals 4

    .prologue
    .line 1232
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->padding:I

    .line 1233
    return-void
.end method

.method public setTextSize(F)V
    .locals 4

    .prologue
    .line 1189
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->textSize:F

    .line 1190
    return-void
.end method

.method public setVerticalAxisTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mVerticalAxisTitle:Ljava/lang/String;

    .line 1278
    return-void
.end method

.method public setVerticalAxisTitleColor(I)V
    .locals 4

    .prologue
    .line 1305
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalAxisTitleColor:I

    .line 1306
    return-void
.end method

.method public setVerticalAxisTitleTextSize(F)V
    .locals 4

    .prologue
    .line 1291
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalAxisTitleTextSize:F

    .line 1292
    return-void
.end method

.method public setVerticalLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 4

    .prologue
    .line 1196
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsAlign:Landroid/graphics/Paint$Align;

    .line 1197
    return-void
.end method

.method public setVerticalLabelsColor(I)V
    .locals 4

    .prologue
    .line 1203
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsColor:I

    .line 1204
    return-void
.end method

.method public setVerticalLabelsSecondScaleAlign(Landroid/graphics/Paint$Align;)V
    .locals 4

    .prologue
    .line 1347
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsSecondScaleAlign:Landroid/graphics/Paint$Align;

    .line 1348
    return-void
.end method

.method public setVerticalLabelsSecondScaleColor(I)V
    .locals 4

    .prologue
    .line 1361
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsSecondScaleColor:I

    .line 1362
    return-void
.end method

.method public setVerticalLabelsVisible(Z)V
    .locals 4

    .prologue
    .line 1401
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/GridLabelRenderer;->mStyles:Lcom/jjoe64/graphview/GridLabelRenderer$Styles;

    move v3, v1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->verticalLabelsVisible:Z

    .line 1402
    return-void
.end method

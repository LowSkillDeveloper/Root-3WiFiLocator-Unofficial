.class public Lcom/jjoe64/graphview/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field protected mCompleteRange:Landroid/graphics/RectF;

.field protected mCurrentViewport:Landroid/graphics/RectF;

.field private mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeEffectBottomActive:Z

.field private mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeEffectLeftActive:Z

.field private mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeEffectRightActive:Z

.field private mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeEffectTopActive:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final mGraphView:Lcom/jjoe64/graphview/GraphView;

.field private mIsScalable:Z

.field private mIsScrollable:Z

.field private mPaint:Landroid/graphics/Paint;

.field protected mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field protected mScalingActive:Z

.field protected mScalingBeginLeft:F

.field protected mScalingBeginWidth:F

.field protected mScroller:Landroid/widget/OverScroller;

.field private mScrollerStartViewport:Landroid/graphics/RectF;

.field protected mScrollingReferenceX:F

.field private mXAxisBoundsManual:Z

.field private mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

.field private mYAxisBoundsManual:Z

.field private mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 8

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v2, v0

    new-instance v3, Lcom/jjoe64/graphview/Viewport$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/jjoe64/graphview/Viewport$1;-><init>(Lcom/jjoe64/graphview/Viewport;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 148
    move-object v2, v0

    new-instance v3, Lcom/jjoe64/graphview/Viewport$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/jjoe64/graphview/Viewport$2;-><init>(Lcom/jjoe64/graphview/Viewport;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 297
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    .line 304
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    .line 392
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mScrollerStartViewport:Landroid/graphics/RectF;

    .line 398
    move-object v2, v0

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v2, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    .line 432
    move-object v2, v0

    new-instance v3, Landroid/widget/OverScroller;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mScroller:Landroid/widget/OverScroller;

    .line 433
    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 434
    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 435
    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 436
    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 437
    move-object v2, v0

    new-instance v3, Landroid/view/GestureDetector;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v4, v5, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mGestureDetector:Landroid/view/GestureDetector;

    .line 438
    move-object v2, v0

    new-instance v3, Landroid/view/ScaleGestureDetector;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v4, v5, v6}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 440
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 441
    move-object v2, v0

    sget-object v3, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 442
    move-object v2, v0

    sget-object v3, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 443
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    .line 444
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mPaint:Landroid/graphics/Paint;

    .line 445
    return-void
.end method

.method static synthetic access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Lcom/jjoe64/graphview/Viewport;)Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/Viewport;->mIsScalable:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1000(Lcom/jjoe64/graphview/Viewport;)Landroid/support/v4/widget/EdgeEffectCompat;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1102(Lcom/jjoe64/graphview/Viewport;Z)Z
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRightActive:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$202(Lcom/jjoe64/graphview/Viewport;Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$300(Lcom/jjoe64/graphview/Viewport;)Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/Viewport;->mIsScrollable:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Lcom/jjoe64/graphview/Viewport;)V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/jjoe64/graphview/Viewport;->releaseEdgeEffects()V

    return-void
.end method

.method static synthetic access$500(Lcom/jjoe64/graphview/Viewport;)Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/Viewport;->mScrollerStartViewport:Landroid/graphics/RectF;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Lcom/jjoe64/graphview/Viewport;)Landroid/support/v4/widget/EdgeEffectCompat;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$702(Lcom/jjoe64/graphview/Viewport;Z)Z
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeftActive:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$800(Lcom/jjoe64/graphview/Viewport;)Landroid/support/v4/widget/EdgeEffectCompat;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$902(Lcom/jjoe64/graphview/Viewport;Z)Z
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectBottomActive:Z

    move v0, v2

    return v0
.end method

.method private drawEdgeEffectsUnclipped(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 817
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 819
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 820
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    move v3, v4

    .line 821
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v5

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 822
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 823
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 824
    const/4 v4, 0x1

    move v2, v4

    .line 826
    :cond_0
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 840
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 841
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    move v3, v4

    .line 842
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v5

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v7}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 843
    move-object v4, v1

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 844
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 845
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 846
    const/4 v4, 0x1

    move v2, v4

    .line 848
    :cond_2
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 851
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_5

    .line 852
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    move v3, v4

    .line 853
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 854
    move-object v4, v1

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 855
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 856
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 857
    const/4 v4, 0x1

    move v2, v4

    .line 859
    :cond_4
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 862
    :cond_5
    move v4, v2

    if-eqz v4, :cond_6

    .line 863
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 865
    :cond_6
    return-void
.end method

.method private fling(II)V
    .locals 20

    .prologue
    .line 714
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v8, 0x0

    move v3, v8

    .line 715
    move-object v8, v1

    invoke-direct {v8}, Lcom/jjoe64/graphview/Viewport;->releaseEdgeEffects()V

    .line 717
    move-object v8, v1

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mScrollerStartViewport:Landroid/graphics/RectF;

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 718
    move-object v8, v1

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v8, v9

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v9

    sub-int/2addr v8, v9

    move v4, v8

    .line 719
    move-object v8, v1

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v8, v9

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v9

    sub-int/2addr v8, v9

    move v5, v8

    .line 720
    move-object v8, v1

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v8, v9

    float-to-int v8, v8

    move v9, v4

    mul-int/2addr v8, v9

    move v6, v8

    .line 721
    move-object v8, v1

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    move-object v9, v1

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v8, v9

    float-to-int v8, v8

    move v9, v5

    mul-int/2addr v8, v9

    move v7, v8

    .line 722
    move-object v8, v1

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mScroller:Landroid/widget/OverScroller;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 723
    move-object v8, v1

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mScroller:Landroid/widget/OverScroller;

    move v9, v6

    move v10, v7

    move v11, v2

    move v12, v3

    const/4 v13, 0x0

    move v14, v4

    const/4 v15, 0x0

    move/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v17, v0

    .line 730
    invoke-virtual/range {v17 .. v17}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v17

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    .line 731
    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    .line 723
    invoke-virtual/range {v8 .. v18}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 732
    move-object v8, v1

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 733
    return-void
.end method

.method private releaseEdgeEffects()V
    .locals 7

    .prologue
    .line 700
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRightActive:Z

    iput-boolean v2, v1, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeftActive:Z

    .line 703
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    .line 704
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    .line 705
    return-void
.end method


# virtual methods
.method public calcCompleteRange()V
    .locals 15

    .prologue
    .line 518
    move-object v0, p0

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GraphView;->getSeries()Ljava/util/List;

    move-result-object v9

    move-object v1, v9

    .line 519
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 520
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    move-object v9, v1

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 521
    move-object v9, v1

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->getLowestValueX()D

    move-result-wide v9

    move-wide v2, v9

    .line 522
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_0
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    move-object v5, v9

    .line 523
    move-object v9, v5

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    move-wide v9, v2

    move-object v11, v5

    invoke-interface {v11}, Lcom/jjoe64/graphview/series/Series;->getLowestValueX()D

    move-result-wide v11

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 524
    move-object v9, v5

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->getLowestValueX()D

    move-result-wide v9

    move-wide v2, v9

    .line 526
    :cond_0
    goto :goto_0

    .line 527
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-wide v10, v2

    double-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->left:F

    .line 529
    move-object v9, v1

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->getHighestValueX()D

    move-result-wide v9

    move-wide v2, v9

    .line 530
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_1
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    move-object v5, v9

    .line 531
    move-object v9, v5

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    move-wide v9, v2

    move-object v11, v5

    invoke-interface {v11}, Lcom/jjoe64/graphview/series/Series;->getHighestValueX()D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    .line 532
    move-object v9, v5

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->getHighestValueX()D

    move-result-wide v9

    move-wide v2, v9

    .line 534
    :cond_2
    goto :goto_1

    .line 535
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-wide v10, v2

    double-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->right:F

    .line 537
    move-object v9, v1

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->getLowestValueY()D

    move-result-wide v9

    move-wide v2, v9

    .line 538
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_2
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    move-object v5, v9

    .line 539
    move-object v9, v5

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    move-wide v9, v2

    move-object v11, v5

    invoke-interface {v11}, Lcom/jjoe64/graphview/series/Series;->getLowestValueY()D

    move-result-wide v11

    cmpl-double v9, v9, v11

    if-lez v9, :cond_4

    .line 540
    move-object v9, v5

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->getLowestValueY()D

    move-result-wide v9

    move-wide v2, v9

    .line 542
    :cond_4
    goto :goto_2

    .line 543
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-wide v10, v2

    double-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    .line 545
    move-object v9, v1

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->getHighestValueY()D

    move-result-wide v9

    move-wide v2, v9

    .line 546
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_3
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    move-object v5, v9

    .line 547
    move-object v9, v5

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    move-wide v9, v2

    move-object v11, v5

    invoke-interface {v11}, Lcom/jjoe64/graphview/series/Series;->getHighestValueY()D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_6

    .line 548
    move-object v9, v5

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/Series;->getHighestValueY()D

    move-result-wide v9

    move-wide v2, v9

    .line 550
    :cond_6
    goto :goto_3

    .line 551
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-wide v10, v2

    double-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->top:F

    .line 555
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    sget-object v10, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    if-ne v9, v10, :cond_9

    .line 556
    move-object v9, v0

    sget-object v10, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v10, v9, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 558
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    sget-object v10, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    if-ne v9, v10, :cond_a

    .line 559
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iput v10, v9, Landroid/graphics/RectF;->top:F

    .line 560
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    .line 563
    :cond_a
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    sget-object v10, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    if-ne v9, v10, :cond_b

    .line 564
    move-object v9, v0

    sget-object v10, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v10, v9, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 566
    :cond_b
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    sget-object v10, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    if-ne v9, v10, :cond_f

    .line 567
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iput v10, v9, Landroid/graphics/RectF;->left:F

    .line 568
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iput v10, v9, Landroid/graphics/RectF;->right:F

    .line 600
    :cond_c
    :goto_4
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_d

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/graphics/RectF;->right:F

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->right:F

    .line 601
    :cond_d
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_e

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/graphics/RectF;->top:F

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->top:F

    .line 602
    :cond_e
    return-void

    .line 569
    :cond_f
    move-object v9, v0

    iget-boolean v9, v9, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsManual:Z

    if-eqz v9, :cond_c

    move-object v9, v0

    iget-boolean v9, v9, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsManual:Z

    if-nez v9, :cond_c

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_c

    .line 572
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v2, v9

    .line 573
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_5
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    move-object v5, v9

    .line 574
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    move-object v12, v0

    iget-object v12, v12, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    float-to-double v12, v12

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/jjoe64/graphview/series/Series;->getValues(DD)Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    .line 575
    :goto_6
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 576
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v9

    move-wide v7, v9

    .line 577
    move-wide v9, v2

    move-wide v11, v7

    cmpl-double v9, v9, v11

    if-lez v9, :cond_10

    .line 578
    move-wide v9, v7

    move-wide v2, v9

    .line 580
    :cond_10
    goto :goto_6

    .line 581
    :cond_11
    goto :goto_5

    .line 583
    :cond_12
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-wide v10, v2

    double-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    .line 586
    const-wide/16 v9, 0x1

    move-wide v2, v9

    .line 587
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_7
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/Series;

    move-object v5, v9

    .line 588
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    move-object v12, v0

    iget-object v12, v12, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    float-to-double v12, v12

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/jjoe64/graphview/series/Series;->getValues(DD)Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    .line 589
    :goto_8
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 590
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v9

    move-wide v7, v9

    .line 591
    move-wide v9, v2

    move-wide v11, v7

    cmpg-double v9, v9, v11

    if-gez v9, :cond_13

    .line 592
    move-wide v9, v7

    move-wide v2, v9

    .line 594
    :cond_13
    goto :goto_8

    .line 595
    :cond_14
    goto :goto_7

    .line 596
    :cond_15
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-wide v10, v2

    double-to-float v10, v10

    iput v10, v9, Landroid/graphics/RectF;->top:F

    goto/16 :goto_4
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 894
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/jjoe64/graphview/Viewport;->drawEdgeEffectsUnclipped(Landroid/graphics/Canvas;)V

    .line 895
    return-void
.end method

.method public drawFirst(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 876
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    if-eqz v2, :cond_0

    .line 877
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 878
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 879
    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v3

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 880
    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 881
    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 882
    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v7}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/Viewport;->mPaint:Landroid/graphics/Paint;

    .line 878
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 886
    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 901
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    move v0, v1

    return v0
.end method

.method public getMaxX(Z)D
    .locals 4

    .prologue
    .line 623
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 624
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    move-wide v0, v2

    .line 626
    :goto_0
    return-wide v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public getMaxY(Z)D
    .locals 4

    .prologue
    .line 649
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 650
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    move-wide v0, v2

    .line 652
    :goto_0
    return-wide v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public getMinX(Z)D
    .locals 4

    .prologue
    .line 610
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 611
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    move-wide v0, v2

    .line 613
    :goto_0
    return-wide v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public getMinY(Z)D
    .locals 4

    .prologue
    .line 636
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 637
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v2

    move-wide v0, v2

    .line 639
    :goto_0
    return-wide v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public getXAxisBoundsStatus()Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    .locals 2

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v0, v1

    return-object v0
.end method

.method public getYAxisBoundsStatus()Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    .locals 2

    .prologue
    .line 509
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v0, v1

    return-object v0
.end method

.method public isScalable()Z
    .locals 2

    .prologue
    .line 916
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/Viewport;->mIsScalable:Z

    move v0, v1

    return v0
.end method

.method public isScrollable()Z
    .locals 2

    .prologue
    .line 488
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/Viewport;->mIsScrollable:Z

    move v0, v1

    return v0
.end method

.method public isXAxisBoundsManual()Z
    .locals 2

    .prologue
    .line 942
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsManual:Z

    move v0, v1

    return v0
.end method

.method public isYAxisBoundsManual()Z
    .locals 2

    .prologue
    .line 961
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsManual:Z

    move v0, v1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 455
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    move v2, v3

    .line 456
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/Viewport;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 457
    move v3, v2

    move v0, v3

    return v0
.end method

.method public scrollToEnd()V
    .locals 5

    .prologue
    .line 985
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsManual:Z

    if-eqz v2, :cond_0

    .line 986
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move v1, v2

    .line 987
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 988
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 989
    move-object v2, v0

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v2, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    .line 990
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    const-string v2, "GraphView"

    const-string v3, "scrollToEnd works only with manual x axis bounds"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 909
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    .line 910
    return-void
.end method

.method public setMaxX(D)V
    .locals 6

    .prologue
    .line 683
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-wide v4, v1

    double-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 684
    return-void
.end method

.method public setMaxY(D)V
    .locals 6

    .prologue
    .line 663
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-wide v4, v1

    double-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 664
    return-void
.end method

.method public setMinX(D)V
    .locals 6

    .prologue
    .line 693
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-wide v4, v1

    double-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 694
    return-void
.end method

.method public setMinY(D)V
    .locals 6

    .prologue
    .line 673
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-wide v4, v1

    double-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 674
    return-void
.end method

.method public setScalable(Z)V
    .locals 4

    .prologue
    .line 926
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/Viewport;->mIsScalable:Z

    .line 927
    move v2, v1

    if-eqz v2, :cond_0

    .line 928
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/Viewport;->mIsScrollable:Z

    .line 931
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/Viewport;->setXAxisBoundsManual(Z)V

    .line 934
    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 4

    .prologue
    .line 495
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/Viewport;->mIsScrollable:Z

    .line 496
    return-void
.end method

.method public setXAxisBoundsManual(Z)V
    .locals 4

    .prologue
    .line 951
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsManual:Z

    .line 952
    move v2, v1

    if-eqz v2, :cond_0

    .line 953
    move-object v2, v0

    sget-object v3, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->FIX:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 955
    :cond_0
    return-void
.end method

.method public setXAxisBoundsStatus(Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)V
    .locals 4

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 470
    return-void
.end method

.method public setYAxisBoundsManual(Z)V
    .locals 4

    .prologue
    .line 970
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsManual:Z

    .line 971
    move v2, v1

    if-eqz v2, :cond_0

    .line 972
    move-object v2, v0

    sget-object v3, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->FIX:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 974
    :cond_0
    return-void
.end method

.method public setYAxisBoundsStatus(Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)V
    .locals 4

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 482
    return-void
.end method

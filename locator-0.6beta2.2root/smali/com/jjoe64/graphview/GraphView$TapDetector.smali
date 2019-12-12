.class Lcom/jjoe64/graphview/GraphView$TapDetector;
.super Ljava/lang/Object;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapDetector"
.end annotation


# instance fields
.field private lastDown:J

.field private lastPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/jjoe64/graphview/GraphView;


# direct methods
.method private constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GraphView$TapDetector;->this$0:Lcom/jjoe64/graphview/GraphView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jjoe64/graphview/GraphView;Lcom/jjoe64/graphview/GraphView$1;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/jjoe64/graphview/GraphView$TapDetector;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    move-object v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastDown:J

    .line 93
    move-object v2, v0

    new-instance v3, Landroid/graphics/PointF;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, v2, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastPoint:Landroid/graphics/PointF;

    .line 104
    :cond_0
    :goto_0
    const/4 v2, 0x0

    move v0, v2

    :goto_1
    return v0

    .line 94
    :cond_1
    move-object v2, v0

    iget-wide v2, v2, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastDown:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 95
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    move-object v2, v1

    .line 96
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 97
    :cond_2
    move-object v2, v0

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastDown:J

    goto :goto_0

    .line 99
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v4, v0

    iget-wide v4, v4, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastDown:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 101
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1
.end method

.class Lcom/jjoe64/graphview/Viewport$1;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjoe64/graphview/Viewport;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Viewport;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 14

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    move v2, v8

    .line 67
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move v3, v8

    .line 68
    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v9

    div-float/2addr v8, v9

    move v2, v8

    .line 69
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move v9, v3

    move v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 70
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    move v10, v2

    add-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 73
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v8

    double-to-float v8, v8

    move v4, v8

    .line 74
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move v9, v4

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 75
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move v9, v4

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 76
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    move v10, v2

    add-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 80
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v8

    double-to-float v8, v8

    move v5, v8

    .line 81
    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    .line 82
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move v9, v5

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 84
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move v9, v2

    add-float/2addr v8, v9

    move v9, v5

    sub-float/2addr v8, v9

    float-to-double v8, v8

    move-wide v6, v8

    .line 85
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 87
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-double v8, v8

    move-wide v10, v6

    sub-double/2addr v8, v10

    move v10, v4

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    .line 88
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/graphics/RectF;->left:F

    float-to-double v9, v9

    move-wide v11, v6

    sub-double/2addr v9, v11

    double-to-float v9, v9

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 89
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v9, v9, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    move v10, v2

    add-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 98
    :cond_2
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v8}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 100
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v8}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 102
    const/4 v8, 0x1

    move v0, v8

    return v0

    .line 92
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move v9, v4

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 93
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v8, v8, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move v9, v5

    iput v9, v8, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v2}, Lcom/jjoe64/graphview/Viewport;->access$100(Lcom/jjoe64/graphview/Viewport;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iput v3, v2, Lcom/jjoe64/graphview/Viewport;->mScalingBeginWidth:F

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Lcom/jjoe64/graphview/Viewport;->mScalingBeginLeft:F

    .line 116
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/Viewport;->mScalingActive:Z

    .line 117
    const/4 v2, 0x1

    move v0, v2

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jjoe64/graphview/Viewport;->mScalingActive:Z

    .line 134
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    sget-object v3, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->READJUST_AFTER_SCALE:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    invoke-static {v2, v3}, Lcom/jjoe64/graphview/Viewport;->access$202(Lcom/jjoe64/graphview/Viewport;Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-result-object v2

    .line 136
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v2, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    .line 139
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v2}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 141
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$1;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v2}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 142
    return-void
.end method

.class Lcom/jjoe64/graphview/Viewport$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Viewport.java"


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
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v2}, Lcom/jjoe64/graphview/Viewport;->access$300(Lcom/jjoe64/graphview/Viewport;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-boolean v2, v2, Lcom/jjoe64/graphview/Viewport;->mScalingActive:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 160
    :goto_0
    return v0

    .line 155
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v2}, Lcom/jjoe64/graphview/Viewport;->access$400(Lcom/jjoe64/graphview/Viewport;)V

    .line 156
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v2}, Lcom/jjoe64/graphview/Viewport;->access$500(Lcom/jjoe64/graphview/Viewport;)Landroid/graphics/RectF;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v3, v3, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 158
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 159
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v2}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 160
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    const/4 v5, 0x1

    move v0, v5

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 19

    .prologue
    .line 165
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v15}, Lcom/jjoe64/graphview/Viewport;->access$300(Lcom/jjoe64/graphview/Viewport;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-boolean v15, v15, Lcom/jjoe64/graphview/Viewport;->mScalingActive:Z

    if-eqz v15, :cond_1

    :cond_0
    const/4 v15, 0x0

    move v1, v15

    .line 239
    :goto_0
    return v1

    .line 167
    :cond_1
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget v15, v15, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 168
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    .line 179
    :cond_2
    move v15, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    mul-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move v6, v15

    .line 180
    move v15, v5

    neg-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    mul-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move v7, v15

    .line 182
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    div-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    move v8, v15

    .line 183
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    div-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    move v9, v15

    .line 185
    move v15, v8

    int-to-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v17, v6

    add-float v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    .line 187
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    div-float v15, v15, v16

    float-to-int v15, v15

    move v10, v15

    .line 188
    move v15, v9

    int-to-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v17, v7

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    .line 190
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    div-float v15, v15, v16

    float-to-int v15, v15

    move v11, v15

    .line 191
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_3

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_b

    :cond_3
    const/4 v15, 0x1

    :goto_1
    move v12, v15

    .line 193
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_4

    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_c

    :cond_4
    const/4 v15, 0x1

    :goto_2
    move v13, v15

    .line 196
    move v15, v12

    if-eqz v15, :cond_6

    .line 197
    move v15, v6

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_d

    .line 198
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    move/from16 v16, v6

    add-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v14, v15

    .line 199
    move v15, v14

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    .line 200
    move v15, v6

    move/from16 v16, v14

    sub-float v15, v15, v16

    move v6, v15

    .line 208
    :cond_5
    :goto_3
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v17, v6

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/RectF;->left:F

    .line 209
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move/from16 v17, v6

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/RectF;->right:F

    .line 211
    :cond_6
    move v15, v13

    if-eqz v15, :cond_7

    .line 216
    :cond_7
    move v15, v12

    if-eqz v15, :cond_8

    move v15, v10

    if-gez v15, :cond_8

    .line 217
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v15}, Lcom/jjoe64/graphview/Viewport;->access$600(Lcom/jjoe64/graphview/Viewport;)Landroid/support/v4/widget/EdgeEffectCompat;

    move-result-object v15

    move/from16 v16, v10

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v15

    .line 218
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/jjoe64/graphview/Viewport;->access$702(Lcom/jjoe64/graphview/Viewport;Z)Z

    move-result v15

    .line 220
    :cond_8
    move v15, v13

    if-eqz v15, :cond_9

    move v15, v11

    if-gez v15, :cond_9

    .line 221
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v15}, Lcom/jjoe64/graphview/Viewport;->access$800(Lcom/jjoe64/graphview/Viewport;)Landroid/support/v4/widget/EdgeEffectCompat;

    move-result-object v15

    move/from16 v16, v11

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v15

    .line 222
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/jjoe64/graphview/Viewport;->access$902(Lcom/jjoe64/graphview/Viewport;Z)Z

    move-result v15

    .line 224
    :cond_9
    move v15, v12

    if-eqz v15, :cond_a

    move v15, v10

    move/from16 v16, v8

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 225
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v15}, Lcom/jjoe64/graphview/Viewport;->access$1000(Lcom/jjoe64/graphview/Viewport;)Landroid/support/v4/widget/EdgeEffectCompat;

    move-result-object v15

    move/from16 v16, v10

    move/from16 v17, v8

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v17, v0

    .line 226
    invoke-static/range {v17 .. v17}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    .line 225
    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v15

    .line 227
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/jjoe64/graphview/Viewport;->access$1102(Lcom/jjoe64/graphview/Viewport;Z)Z

    move-result v15

    .line 236
    :cond_a
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v15}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 238
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    invoke-static {v15}, Lcom/jjoe64/graphview/Viewport;->access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v15

    invoke-static {v15}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 239
    const/4 v15, 0x1

    move v1, v15

    goto/16 :goto_0

    .line 191
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 193
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 203
    :cond_d
    move-object v15, v1

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    iget-object v15, v15, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    move/from16 v16, v6

    add-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport$2;->this$0:Lcom/jjoe64/graphview/Viewport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v14, v15

    .line 204
    move v15, v14

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_5

    .line 205
    move v15, v6

    move/from16 v16, v14

    sub-float v15, v15, v16

    move v6, v15

    goto/16 :goto_3
.end method

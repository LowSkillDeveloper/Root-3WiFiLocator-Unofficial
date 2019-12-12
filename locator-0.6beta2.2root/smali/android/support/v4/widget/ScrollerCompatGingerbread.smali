.class Landroid/support/v4/widget/ScrollerCompatGingerbread;
.super Ljava/lang/Object;
.source "ScrollerCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortAnimation(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 68
    return-void
.end method

.method public static computeScrollOffset(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/OverScroller;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    new-instance v2, Landroid/widget/OverScroller;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static fling(Ljava/lang/Object;IIIIIIII)V
    .locals 18

    .prologue
    .line 57
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    check-cast v9, Landroid/widget/OverScroller;

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 58
    return-void
.end method

.method public static fling(Ljava/lang/Object;IIIIIIIIII)V
    .locals 22

    .prologue
    .line 62
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v11, v0

    check-cast v11, Landroid/widget/OverScroller;

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v11 .. v21}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 64
    return-void
.end method

.method public static getCurrX(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getCurrY(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getFinalX(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getFinalY(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isOverScrolled(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .locals 8

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    check-cast v4, Landroid/widget/OverScroller;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 73
    return-void
.end method

.method public static notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    check-cast v4, Landroid/widget/OverScroller;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 77
    return-void
.end method

.method public static startScroll(Ljava/lang/Object;IIII)V
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    check-cast v5, Landroid/widget/OverScroller;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 48
    return-void
.end method

.method public static startScroll(Ljava/lang/Object;IIIII)V
    .locals 12

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    check-cast v6, Landroid/widget/OverScroller;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 53
    return-void
.end method

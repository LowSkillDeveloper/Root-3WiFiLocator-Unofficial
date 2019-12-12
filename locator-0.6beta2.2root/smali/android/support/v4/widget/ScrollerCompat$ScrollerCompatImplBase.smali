.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 113
    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-eqz v3, :cond_0

    new-instance v3, Landroid/widget/Scroller;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    new-instance v3, Landroid/widget/Scroller;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
    .locals 19

    .prologue
    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v1

    check-cast v10, Landroid/widget/Scroller;

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-virtual/range {v10 .. v18}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 102
    return-void
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
    .locals 21

    .prologue
    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v12, v1

    check-cast v12, Landroid/widget/Scroller;

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v12 .. v20}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 108
    return-void
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
    .locals 11

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v1

    check-cast v6, Landroid/widget/Scroller;

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 90
    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .locals 13

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v1

    check-cast v7, Landroid/widget/Scroller;

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 96
    return-void
.end method

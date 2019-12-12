.class public Landroid/support/v4/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;,
        Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;,
        Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;,
        Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# instance fields
.field mScroller:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 240
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 241
    move v1, v0

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 242
    new-instance v1, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_0
    move v1, v0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 244
    new-instance v1, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 7

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 259
    move-object v3, v0

    sget-object v4, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;
    .locals 3

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;
    .locals 7

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/widget/ScrollerCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/ScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 3

    .prologue
    .line 419
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->abortAnimation(Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 3

    .prologue
    .line 323
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 19

    .prologue
    .line 382
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    sget-object v9, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-interface/range {v9 .. v18}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->fling(Ljava/lang/Object;IIIIIIII)V

    .line 383
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 23

    .prologue
    .line 410
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

    sget-object v11, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-interface/range {v11 .. v22}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->fling(Ljava/lang/Object;IIIIIIIIII)V

    .line 412
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 314
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrVelocity(Ljava/lang/Object;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getCurrX()I
    .locals 3

    .prologue
    .line 277
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrX(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getCurrY()I
    .locals 3

    .prologue
    .line 286
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrY(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getFinalX()I
    .locals 3

    .prologue
    .line 293
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalX(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getFinalY()I
    .locals 3

    .prologue
    .line 300
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalY(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public isFinished()Z
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->isFinished(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isOverScrolled()Z
    .locals 3

    .prologue
    .line 471
    move-object v0, p0

    sget-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->isOverScrolled(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 9

    .prologue
    .line 437
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    sget-object v4, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->notifyHorizontalEdgeReached(Ljava/lang/Object;III)V

    .line 438
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 9

    .prologue
    .line 454
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    sget-object v4, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->notifyVerticalEdgeReached(Ljava/lang/Object;III)V

    .line 455
    return-void
.end method

.method public startScroll(IIII)V
    .locals 11

    .prologue
    .line 341
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget-object v5, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface/range {v5 .. v10}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->startScroll(Ljava/lang/Object;IIII)V

    .line 342
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 13

    .prologue
    .line 358
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    sget-object v6, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-interface/range {v6 .. v12}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->startScroll(Ljava/lang/Object;IIIII)V

    .line 359
    return-void
.end method

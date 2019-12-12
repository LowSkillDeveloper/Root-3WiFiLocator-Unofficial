.class Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;
.super Ljava/lang/Object;
.source "GravityCompat.java"

# interfaces
.implements Landroid/support/v4/view/GravityCompat$GravityCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GravityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GravityCompatImplJellybeanMr1"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 17

    .prologue
    .line 77
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move v9, v1

    move v10, v2

    move v11, v3

    move-object v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    move/from16 v16, v8

    invoke-static/range {v9 .. v16}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    .line 79
    return-void
.end method

.method public apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 13

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 72
    return-void
.end method

.method public applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 9

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 84
    return-void
.end method

.method public getAbsoluteGravity(II)I
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->getAbsoluteGravity(II)I

    move-result v3

    move v0, v3

    return v0
.end method

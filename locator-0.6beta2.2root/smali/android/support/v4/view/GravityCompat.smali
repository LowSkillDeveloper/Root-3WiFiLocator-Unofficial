.class public Landroid/support/v4/view/GravityCompat;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;,
        Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;,
        Landroid/support/v4/view/GravityCompat$GravityCompatImpl;
    }
.end annotation


# static fields
.field public static final END:I = 0x800005

.field static final IMPL:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final START:I = 0x800003


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 90
    move v1, v0

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 91
    new-instance v1, Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;-><init>()V

    sput-object v1, Landroid/support/v4/view/GravityCompat;->IMPL:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v1, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/view/GravityCompat;->IMPL:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 17

    .prologue
    .line 162
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    sget-object v8, Landroid/support/v4/view/GravityCompat;->IMPL:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    move v9, v0

    move v10, v1

    move v11, v2

    move-object v12, v3

    move v13, v4

    move v14, v5

    move-object v15, v6

    move/from16 v16, v7

    invoke-interface/range {v8 .. v16}, Landroid/support/v4/view/GravityCompat$GravityCompatImpl;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    .line 163
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 13

    .prologue
    .line 132
    move v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    sget-object v6, Landroid/support/v4/view/GravityCompat;->IMPL:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    move v7, v0

    move v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    invoke-interface/range {v6 .. v12}, Landroid/support/v4/view/GravityCompat$GravityCompatImpl;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 133
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 9

    .prologue
    .line 186
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    sget-object v4, Landroid/support/v4/view/GravityCompat;->IMPL:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    move v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/support/v4/view/GravityCompat$GravityCompatImpl;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 187
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 5

    .prologue
    .line 201
    move v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/GravityCompat;->IMPL:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    move v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/GravityCompat$GravityCompatImpl;->getAbsoluteGravity(II)I

    move-result v2

    move v0, v2

    return v0
.end method

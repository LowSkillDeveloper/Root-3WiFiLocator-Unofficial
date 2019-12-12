.class public Landroid/support/v4/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
    }
.end annotation


# static fields
.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field static final IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 109
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 5

    .prologue
    .line 201
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    const/16 v2, 0x8

    shr-int/lit8 v1, v1, 0x8

    move v0, v1

    return v0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    move v0, v1

    return v0
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 5

    .prologue
    .line 228
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    move v0, v2

    return v0
.end method

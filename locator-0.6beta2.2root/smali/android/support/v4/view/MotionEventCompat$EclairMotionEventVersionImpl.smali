.class Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/MotionEventCompatEclair;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/MotionEventCompatEclair;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/MotionEventCompatEclair;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/MotionEventCompatEclair;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    move v0, v3

    return v0
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/MotionEventCompatEclair;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    move v0, v3

    return v0
.end method

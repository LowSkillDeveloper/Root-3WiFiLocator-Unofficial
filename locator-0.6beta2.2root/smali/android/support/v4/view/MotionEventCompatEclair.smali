.class Landroid/support/v4/view/MotionEventCompatEclair;
.super Ljava/lang/Object;
.source "MotionEventCompatEclair.java"


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

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move v0, v2

    return v0
.end method

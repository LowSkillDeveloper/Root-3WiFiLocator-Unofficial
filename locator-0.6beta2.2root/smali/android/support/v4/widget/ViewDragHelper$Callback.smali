.class public abstract Landroid/support/v4/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 5

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 5

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public getOrderedChildIndex(I)I
    .locals 3

    .prologue
    .line 249
    move-object v0, p0

    move v1, p1

    move v2, v1

    move v0, v2

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onEdgeLock(I)Z
    .locals 3

    .prologue
    .line 226
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public abstract tryCaptureView(Landroid/view/View;I)Z
.end method

.class Landroid/support/v4/view/KeyEventCompatEclair;
.super Ljava/lang/Object;
.source "KeyEventCompatEclair.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTracking(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static startTracking(Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->startTracking()V

    .line 25
    return-void
.end method

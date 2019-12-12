.class Landroid/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;
.super Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isTracking(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/KeyEventCompatEclair;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public startTracking(Landroid/view/KeyEvent;)V
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/KeyEventCompatEclair;->startTracking(Landroid/view/KeyEvent;)V

    .line 107
    return-void
.end method

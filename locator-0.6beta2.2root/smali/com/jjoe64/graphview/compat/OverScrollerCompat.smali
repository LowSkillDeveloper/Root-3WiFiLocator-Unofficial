.class public Lcom/jjoe64/graphview/compat/OverScrollerCompat;
.super Ljava/lang/Object;
.source "OverScrollerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getCurrVelocity(Landroid/widget/OverScroller;)F
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 41
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    move v0, v1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

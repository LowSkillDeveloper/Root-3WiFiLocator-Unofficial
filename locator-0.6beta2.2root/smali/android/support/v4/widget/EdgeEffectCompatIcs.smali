.class Landroid/support/v4/widget/EdgeEffectCompatIcs;
.super Ljava/lang/Object;
.source "EdgeEffectCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/EdgeEffect;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static finish(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 43
    return-void
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    new-instance v1, Landroid/widget/EdgeEffect;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method public static onAbsorb(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/EdgeEffect;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 58
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public static onPull(Ljava/lang/Object;F)Z
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/EdgeEffect;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 47
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public static onRelease(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    move-object v2, v0

    check-cast v2, Landroid/widget/EdgeEffect;

    move-object v1, v2

    .line 52
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 53
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static setSize(Ljava/lang/Object;II)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    check-cast v3, Landroid/widget/EdgeEffect;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 35
    return-void
.end method

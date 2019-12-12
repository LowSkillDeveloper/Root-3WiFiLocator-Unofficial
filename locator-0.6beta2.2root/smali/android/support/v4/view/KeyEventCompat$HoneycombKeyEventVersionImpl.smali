.class Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;
.super Landroid/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasModifiers(II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public metaStateHasNoModifiers(I)Z
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasNoModifiers(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public normalizeMetaState(I)I
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->normalizeMetaState(I)I

    move-result v2

    move v0, v2

    return v0
.end method

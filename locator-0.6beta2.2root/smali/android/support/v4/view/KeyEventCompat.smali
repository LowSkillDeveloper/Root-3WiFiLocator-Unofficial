.class public Landroid/support/v4/view/KeyEventCompat;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;,
        Landroid/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;,
        Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;,
        Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 141
    new-instance v0, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static hasModifiers(Landroid/view/KeyEvent;I)Z
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isTracking(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 5

    .prologue
    .line 154
    move v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    move v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 3

    .prologue
    .line 158
    move v0, p0

    sget-object v1, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    move v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static normalizeMetaState(I)I
    .locals 3

    .prologue
    .line 150
    move v0, p0

    sget-object v1, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    move v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static startTracking(Landroid/view/KeyEvent;)V
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->startTracking(Landroid/view/KeyEvent;)V

    .line 171
    return-void
.end method

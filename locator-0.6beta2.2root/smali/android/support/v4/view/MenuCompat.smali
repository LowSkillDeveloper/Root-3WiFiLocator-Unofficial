.class public Landroid/support/v4/view/MenuCompat;
.super Ljava/lang/Object;
.source "MenuCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;,
        Landroid/support/v4/view/MenuCompat$BaseMenuVersionImpl;,
        Landroid/support/v4/view/MenuCompat$MenuVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/MenuCompat$MenuVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 61
    new-instance v0, Landroid/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuCompat;->IMPL:Landroid/support/v4/view/MenuCompat$MenuVersionImpl;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/support/v4/view/MenuCompat$BaseMenuVersionImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/MenuCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuCompat;->IMPL:Landroid/support/v4/view/MenuCompat$MenuVersionImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)Z
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/MenuCompat;->IMPL:Landroid/support/v4/view/MenuCompat$MenuVersionImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/MenuCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

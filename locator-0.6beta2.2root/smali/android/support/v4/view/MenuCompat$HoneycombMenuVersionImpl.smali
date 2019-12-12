.class Landroid/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;
.source "MenuCompat.java"

# interfaces
.implements Landroid/support/v4/view/MenuCompat$MenuVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombMenuVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setShowAsAction(Landroid/view/MenuItem;I)Z
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 51
    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

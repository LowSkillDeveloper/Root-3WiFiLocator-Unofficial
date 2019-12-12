.class Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;
.super Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;
.source "IntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/IntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentCompatImplHC"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/content/IntentCompatHoneycomb;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/content/IntentCompatHoneycomb;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

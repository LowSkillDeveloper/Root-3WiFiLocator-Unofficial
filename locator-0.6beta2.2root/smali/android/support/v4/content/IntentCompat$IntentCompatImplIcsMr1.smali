.class Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;
.super Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;
.source "IntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/IntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentCompatImplIcsMr1"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V

    return-void
.end method


# virtual methods
.method public makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/content/IntentCompatIcsMr1;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

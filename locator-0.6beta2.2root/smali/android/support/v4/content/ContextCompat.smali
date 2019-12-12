.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move v3, v4

    .line 90
    move v4, v3

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 91
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 92
    const/4 v4, 0x1

    move v0, v4

    .line 97
    :goto_0
    return v0

    .line 93
    :cond_0
    move v4, v3

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 94
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V

    .line 95
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 97
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.class Landroid/support/v4/app/NavUtils$NavUtilsImplJB;
.super Landroid/support/v4/app/NavUtils$NavUtilsImplBase;
.source "NavUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavUtilsImplJB"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/NavUtilsJB;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 102
    move-object v3, v2

    if-nez v3, :cond_0

    .line 103
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;->superGetParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 105
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-static {v4}, Landroid/support/v4/app/NavUtilsJB;->getParentActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 125
    move-object v4, v3

    if-nez v4, :cond_0

    .line 126
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;->getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 128
    :cond_0
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/app/NavUtilsJB;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/app/NavUtilsJB;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method superGetParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

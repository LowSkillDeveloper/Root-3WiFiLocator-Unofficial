.class Landroid/support/v4/app/NavUtilsJB;
.super Ljava/lang/Object;
.source "NavUtilsJB.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getParentActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v2

    .line 34
    return-void
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

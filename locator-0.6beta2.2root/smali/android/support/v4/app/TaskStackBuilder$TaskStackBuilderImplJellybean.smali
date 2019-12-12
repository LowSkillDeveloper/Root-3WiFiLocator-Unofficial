.class Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplJellybean;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"

# interfaces
.implements Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/TaskStackBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskStackBuilderImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 13

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v2

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v9, 0x1000c000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v8

    aput-object v8, v6, v7

    .line 103
    move-object v6, v1

    move v7, v3

    move-object v8, v2

    move v9, v4

    move-object v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v4/app/TaskStackBuilderJellybean;->getActivitiesPendingIntent(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

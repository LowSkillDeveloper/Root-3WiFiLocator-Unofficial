.class Landroid/support/v4/app/NotificationCompatHoneycomb;
.super Ljava/lang/Object;
.source "NotificationCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 16

    .prologue
    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    new-instance v11, Landroid/app/Notification$Builder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object v12, v1

    iget-wide v12, v12, Landroid/app/Notification;->when:J

    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget v12, v12, Landroid/app/Notification;->icon:I

    move-object v13, v1

    iget v13, v13, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object v13, v5

    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object v13, v1

    iget v13, v13, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget v12, v12, Landroid/app/Notification;->ledARGB:I

    move-object v13, v1

    iget v13, v13, Landroid/app/Notification;->ledOnMS:I

    move-object v14, v1

    iget v14, v14, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget v12, v12, Landroid/app/Notification;->flags:I

    const/4 v13, 0x2

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget v12, v12, Landroid/app/Notification;->flags:I

    const/16 v13, 0x8

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget v12, v12, Landroid/app/Notification;->flags:I

    const/16 v13, 0x10

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget v12, v12, Landroid/app/Notification;->defaults:I

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v8

    move-object v13, v1

    iget v13, v13, Landroid/app/Notification;->flags:I

    const/16 v14, 0x80

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object v10, v11

    .line 52
    move-object v11, v10

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    move-object v0, v11

    return-object v0

    .line 30
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3
.end method

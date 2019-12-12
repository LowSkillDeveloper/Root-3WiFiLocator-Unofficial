.class Landroid/support/v4/app/NotificationCompatIceCreamSandwich;
.super Ljava/lang/Object;
.source "NotificationCompatIceCreamSandwich.java"


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

.method static add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;
    .locals 21

    .prologue
    .line 31
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    new-instance v16, Landroid/app/Notification$Builder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v18}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    invoke-virtual/range {v16 .. v18}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x2

    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x8

    and-int/lit8 v17, v17, 0x8

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    :goto_1
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x10

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    :goto_2
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v10

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x80

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_3
    invoke-virtual/range {v16 .. v18}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v16

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v16

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    invoke-virtual/range {v16 .. v19}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v15, v16

    .line 54
    move-object/from16 v16, v15

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v2, v16

    return-object v2

    .line 31
    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    :cond_3
    const/16 v18, 0x0

    goto :goto_3
.end method

.class Landroid/support/v4/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# instance fields
.field private b:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V
    .locals 25

    .prologue
    .line 33
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object/from16 v19, v2

    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v22, v8

    invoke-virtual/range {v20 .. v22}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    move/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x2

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_0

    const/16 v21, 0x1

    :goto_0
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x8

    and-int/lit8 v21, v21, 0x8

    if-eqz v21, :cond_1

    const/16 v21, 0x1

    :goto_1
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x10

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    :goto_2
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v22, v0

    const/16 v23, 0x80

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    :goto_3
    invoke-virtual/range {v20 .. v22}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v20

    move/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v20

    move/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v20

    move/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v20

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v23, v15

    invoke-virtual/range {v20 .. v23}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatJellybean;->b:Landroid/app/Notification$Builder;

    .line 59
    return-void

    .line 34
    :cond_0
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_1
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_3
    const/16 v22, 0x0

    goto :goto_3
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompatJellybean;->b:Landroid/app/Notification$Builder;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 63
    return-void
.end method

.method public addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 12

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    new-instance v8, Landroid/app/Notification$BigPictureStyle;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/NotificationCompatJellybean;->b:Landroid/app/Notification$Builder;

    invoke-direct {v9, v10}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v8

    move-object v7, v8

    .line 81
    move v8, v6

    if-eqz v8, :cond_0

    .line 82
    move-object v8, v7

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v8

    .line 84
    :cond_0
    move v8, v2

    if-eqz v8, :cond_1

    .line 85
    move-object v8, v7

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v8

    .line 87
    :cond_1
    return-void
.end method

.method public addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 10

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/NotificationCompatJellybean;->b:Landroid/app/Notification$Builder;

    invoke-direct {v7, v8}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    move-object v5, v6

    .line 70
    move v6, v2

    if-eqz v6, :cond_0

    .line 71
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 73
    :cond_0
    return-void
.end method

.method public addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    new-instance v8, Landroid/app/Notification$InboxStyle;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/NotificationCompatJellybean;->b:Landroid/app/Notification$Builder;

    invoke-direct {v9, v10}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v8

    move-object v5, v8

    .line 93
    move v8, v2

    if-eqz v8, :cond_0

    .line 94
    move-object v8, v5

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v8

    .line 96
    :cond_0
    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    move-object v7, v8

    .line 97
    move-object v8, v5

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v8

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompatJellybean;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

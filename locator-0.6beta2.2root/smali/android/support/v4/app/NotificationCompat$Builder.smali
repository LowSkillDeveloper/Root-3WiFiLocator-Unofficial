.class public Landroid/support/v4/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mStyle:Landroid/support/v4/app/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mUseChronometer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 202
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 204
    move-object v2, v0

    new-instance v3, Landroid/app/Notification;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 218
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 221
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 222
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->audioStreamType:I

    .line 223
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 224
    return-void
.end method

.method private setFlag(IZ)V
    .locals 8

    .prologue
    .line 520
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 521
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/app/Notification;->flags:I

    move v5, v1

    or-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/app/Notification;->flags:I

    move v5, v1

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 11

    .prologue
    .line 560
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/support/v4/app/NotificationCompat$Action;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 561
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 595
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->access$000()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->access$000()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 497
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, 0x10

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 498
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 343
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 324
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 356
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 292
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 284
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 512
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v3, v1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 513
    move v2, v1

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 514
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/app/Notification;->flags:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 516
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 368
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 385
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 386
    move-object v3, v0

    const/16 v4, 0x80

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 387
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 415
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8

    .prologue
    .line 456
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v6, v1

    iput v6, v5, Landroid/app/Notification;->ledARGB:I

    .line 457
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v6, v2

    iput v6, v5, Landroid/app/Notification;->ledOnMS:I

    .line 458
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v6, v3

    iput v6, v5, Landroid/app/Notification;->ledOffMS:I

    .line 459
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->ledOnMS:I

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->ledOffMS:I

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 460
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    move v7, v4

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v6, v7

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 462
    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 459
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 460
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    .line 316
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 477
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 478
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 486
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, 0x8

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 487
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 539
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 540
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 332
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    .line 333
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    .line 334
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 335
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v3, v1

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 260
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 274
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v4, v1

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 275
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v4, v2

    iput v4, v3, Landroid/app/Notification;->iconLevel:I

    .line 276
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 422
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 423
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->audioStreamType:I

    .line 424
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v4, v1

    iput-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 435
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v4, v2

    iput v4, v3, Landroid/app/Notification;->audioStreamType:I

    .line 436
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 574
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    .line 575
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v2, :cond_0

    .line 576
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Style;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 579
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 306
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 396
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v4, v1

    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 406
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 407
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 248
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->vibrate:[J

    .line 447
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 231
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-wide v4, v1

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 232
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

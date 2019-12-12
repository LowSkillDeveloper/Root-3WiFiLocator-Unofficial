.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 9

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v2, v3

    .line 88
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 91
    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    if-lez v3, :cond_0

    .line 92
    move-object v3, v2

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroid/app/Notification;->flags:I

    const/16 v5, 0x80

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 94
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

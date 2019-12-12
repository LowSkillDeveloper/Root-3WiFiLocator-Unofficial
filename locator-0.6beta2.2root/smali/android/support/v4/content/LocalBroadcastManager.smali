.class public Landroid/support/v4/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;,
        Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroid/support/v4/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 84
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 86
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 89
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 109
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 110
    move-object v2, v0

    new-instance v3, Landroid/support/v4/content/LocalBroadcastManager$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/support/v4/content/LocalBroadcastManager$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v3, v2, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/content/LocalBroadcastManager;)V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .locals 9

    .prologue
    .line 284
    move-object v0, p0

    :goto_0
    const/4 v5, 0x0

    move-object v1, v5

    .line 285
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 286
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 287
    move v5, v3

    if-gtz v5, :cond_0

    .line 288
    move-object v5, v2

    monitor-exit v5

    return-void

    .line 290
    :cond_0
    move v5, v3

    new-array v5, v5, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    move-object v1, v5

    .line 291
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 292
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 293
    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 295
    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 296
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move-object v6, v3

    iget-object v6, v6, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 297
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v5, v5, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 293
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5

    .line 294
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    :cond_2
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    sget-object v3, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 101
    :try_start_0
    sget-object v3, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v3, :cond_0

    .line 102
    new-instance v3, Landroid/support/v4/content/LocalBroadcastManager;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    .line 104
    :cond_0
    sget-object v3, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    return-object v0

    .line 105
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 15

    .prologue
    .line 134
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v3, v11

    monitor-enter v10

    .line 135
    :try_start_0
    new-instance v10, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    move-object v13, v1

    invoke-direct {v11, v12, v13}, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    move-object v4, v10

    .line 136
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move-object v5, v10

    .line 137
    move-object v10, v5

    if-nez v10, :cond_0

    .line 138
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v10

    .line 139
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 141
    :cond_0
    move-object v10, v5

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 142
    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move-object v11, v2

    invoke-virtual {v11}, Landroid/content/IntentFilter;->countActions()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 143
    move-object v10, v2

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 144
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move-object v8, v10

    .line 145
    move-object v10, v8

    if-nez v10, :cond_1

    .line 146
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v10

    .line 147
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object v11, v7

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 149
    :cond_1
    move-object v10, v8

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 151
    :cond_2
    move-object v10, v3

    monitor-exit v10

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v3

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v9

    throw v10
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 26

    .prologue
    .line 201
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v4, v19

    monitor-enter v18

    .line 202
    move-object/from16 v18, v3

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v5, v18

    .line 203
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, v18

    .line 205
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v7, v18

    .line 206
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, v18

    .line 207
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v9, v18

    .line 209
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v18

    const/16 v19, 0x8

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_4

    const/16 v18, 0x1

    :goto_0
    move/from16 v10, v18

    .line 211
    move/from16 v18, v10

    if-eqz v18, :cond_0

    const-string v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Resolving type "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " scheme "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " of intent "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 215
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v11, v18

    .line 216
    move-object/from16 v18, v11

    if-eqz v18, :cond_c

    .line 217
    move/from16 v18, v10

    if-eqz v18, :cond_1

    const-string v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Action list: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 219
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v12, v18

    .line 220
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_1
    move/from16 v18, v13

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 221
    move-object/from16 v18, v11

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    move-object/from16 v14, v18

    .line 222
    move/from16 v18, v10

    if-eqz v18, :cond_2

    const-string v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Matching against filter "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 224
    :cond_2
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 225
    move/from16 v18, v10

    if-eqz v18, :cond_3

    .line 226
    const-string v18, "LocalBroadcastManager"

    const-string v19, "  Filter\'s target already added"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 220
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 209
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 231
    :cond_5
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    move-object/from16 v23, v9

    const-string v24, "LocalBroadcastManager"

    invoke-virtual/range {v18 .. v24}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v18

    move/from16 v15, v18

    .line 233
    move/from16 v18, v15

    if-ltz v18, :cond_8

    .line 234
    move/from16 v18, v10

    if-eqz v18, :cond_6

    const-string v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  Filter matched!  match=0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v15

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 236
    :cond_6
    move-object/from16 v18, v12

    if-nez v18, :cond_7

    .line 237
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v18

    .line 239
    :cond_7
    move-object/from16 v18, v12

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 240
    move-object/from16 v18, v14

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_2

    .line 242
    :cond_8
    move/from16 v18, v10

    if-eqz v18, :cond_3

    .line 244
    move/from16 v18, v15

    packed-switch v18, :pswitch_data_0

    .line 249
    const-string v18, "unknown reason"

    move-object/from16 v16, v18

    .line 251
    :goto_3
    const-string v18, "LocalBroadcastManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  Filter did not match: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_2

    .line 245
    :pswitch_0
    const-string v18, "action"

    move-object/from16 v16, v18

    goto :goto_3

    .line 246
    :pswitch_1
    const-string v18, "category"

    move-object/from16 v16, v18

    goto :goto_3

    .line 247
    :pswitch_2
    const-string v18, "data"

    move-object/from16 v16, v18

    goto :goto_3

    .line 248
    :pswitch_3
    const-string v18, "type"

    move-object/from16 v16, v18

    goto :goto_3

    .line 256
    :cond_9
    move-object/from16 v18, v12

    if-eqz v18, :cond_c

    .line 257
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_4
    move/from16 v18, v13

    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 258
    move-object/from16 v18, v12

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 257
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 260
    :cond_a
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    invoke-direct/range {v20 .. v22}, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 261
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_b

    .line 262
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v18

    .line 264
    :cond_b
    const/16 v18, 0x1

    move-object/from16 v19, v4

    monitor-exit v19

    move/from16 v2, v18

    .line 268
    :goto_5
    return v2

    .line 267
    :cond_c
    move-object/from16 v18, v4

    monitor-exit v18

    .line 268
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_5

    .line 267
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v4

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v17

    throw v18

    .line 244
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 280
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 14

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    move-object v2, v12

    monitor-enter v11

    .line 165
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    move-object v3, v11

    .line 166
    move-object v11, v3

    if-nez v11, :cond_0

    .line 167
    move-object v11, v2

    monitor-exit v11

    .line 188
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v11, 0x0

    move v4, v11

    :goto_1
    move v11, v4

    move-object v12, v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 170
    move-object v11, v3

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter;

    move-object v5, v11

    .line 171
    const/4 v11, 0x0

    move v6, v11

    :goto_2
    move v11, v6

    move-object v12, v5

    invoke-virtual {v12}, Landroid/content/IntentFilter;->countActions()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 172
    move-object v11, v5

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 173
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    move-object v8, v11

    .line 174
    move-object v11, v8

    if-eqz v11, :cond_3

    .line 175
    const/4 v11, 0x0

    move v9, v11

    :goto_3
    move v11, v9

    move-object v12, v8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 176
    move-object v11, v8

    move v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v11, v11, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    move-object v12, v1

    if-ne v11, v12, :cond_1

    .line 177
    move-object v11, v8

    move v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    .line 178
    add-int/lit8 v9, v9, -0x1

    .line 175
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 181
    :cond_2
    move-object v11, v8

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_3

    .line 182
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 171
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 169
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 187
    :cond_5
    move-object v11, v2

    monitor-exit v11

    .line 188
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v10

    throw v11
.end method

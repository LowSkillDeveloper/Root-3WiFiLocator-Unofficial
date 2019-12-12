.class Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;
.super Ljava/lang/Thread;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootToolsTests/SanityCheckRootTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SanityCheckThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;


# direct methods
.method public constructor <init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Thread;-><init>()V

    .line 144
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    .line 145
    return-void
.end method

.method static synthetic access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    return-void
.end method

.method private visualUpdate(ILjava/lang/String;)V
    .locals 9

    .prologue
    .line 354
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    move-object v3, v5

    .line 355
    new-instance v5, Landroid/os/Bundle;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v4, v5

    .line 356
    move-object v5, v4

    const-string v6, "action"

    move v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    move-object v5, v4

    const-string v6, "text"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 359
    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v5

    .line 360
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 148
    move-object/from16 v0, p0

    move-object v7, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 162
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing getPath"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 163
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ getPath ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 166
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getPath()Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    .line 168
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 170
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :cond_0
    :goto_1
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing A ton of commands"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 178
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Ton of Commands ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 180
    const/4 v7, 0x0

    move v2, v7

    :goto_2
    move v7, v2

    const/16 v8, 0x64

    if-ge v7, v8, :cond_1

    .line 181
    const-string v7, "/system/xbin/busybox"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v7

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 174
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 184
    :cond_1
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing Find Binary"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    move v1, v7

    .line 186
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking Root ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 187
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 189
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing file exists"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 190
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking Exists() ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 191
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/sbin/["

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 193
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing Is Access Given"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v7

    move v1, v7

    .line 195
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking for Access to Root ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 196
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 198
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing Remount"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 199
    const-string v7, "/system"

    const-string v8, "rw"

    invoke-static {v7, v8}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move v1, v7

    .line 200
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Remounting System as RW ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 201
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 203
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing CheckUtil"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 204
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking busybox is setup ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 205
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "busybox"

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 207
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing getBusyBoxVersion"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 208
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking busybox version ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 209
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/bin/"

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 212
    move-object v7, v0

    const/4 v8, 0x4

    :try_start_1
    const-string v9, "Testing fixUtils"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 213
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking Utils ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 214
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x0

    const-string v13, "ls"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x1

    const-string v13, "rm"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x2

    const-string v13, "ln"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x3

    const-string v13, "dd"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x4

    const-string v13, "chmod"

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x5

    const-string v13, "mount"

    aput-object v13, v11, v12

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->fixUtils([Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_3
    move-object v7, v0

    const/4 v8, 0x4

    :try_start_2
    const-string v9, "Testing getSymlink"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 222
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking [[ for symlink ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 223
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/bin/[["

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 229
    :goto_4
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing getInode"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 230
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking Inodes ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 231
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/bin/busybox"

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 233
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing GetBusyBoxapplets"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 236
    move-object v7, v0

    const/4 v8, 0x3

    :try_start_3
    const-string v9, "[ Getting all available Busybox applets ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 237
    const-string v7, "/data/data/stericson.busybox.donate/files/bb"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :goto_5
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v3, v7

    .line 238
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 215
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 217
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 224
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 226
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 246
    :cond_2
    :goto_6
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing getFilePermissionsSymlinks"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 247
    const-string v7, "/system/bin/busybox"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v7

    move-object v2, v7

    .line 248
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking busybox permissions and symlink ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 250
    move-object v7, v2

    if-eqz v7, :cond_3

    .line 251
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Symlink: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/stericson/RootTools/containers/Permissions;->getSymlink()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 252
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Group Permissions: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/stericson/RootTools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 253
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Owner Permissions: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/stericson/RootTools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 254
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permissions: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 255
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/stericson/RootTools/containers/Permissions;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 256
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User Permissions: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/stericson/RootTools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 261
    :goto_7
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "JAVA"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 262
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Running some Java code ]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 266
    const/4 v7, 0x1

    :try_start_4
    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v7

    move-object v3, v7

    .line 267
    new-instance v7, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$1;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v0

    const/16 v10, 0x2b

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string v16, "com.stericson.RootToolsTests.NativeJavaClass"

    aput-object v16, v14, v15

    invoke-direct/range {v8 .. v13}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$1;-><init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;IZLandroid/content/Context;[Ljava/lang/String;)V

    move-object v4, v7

    .line 279
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v7

    .line 287
    :goto_8
    move-object v7, v0

    const/4 v8, 0x4

    const-string v9, "Testing df"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 288
    const-string v7, "/data"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getSpace(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v4, v7

    .line 289
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "[ Checking /data partition size]\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 290
    move-object v7, v0

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "k\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 293
    const/4 v7, 0x1

    :try_start_5
    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v7

    move-object v3, v7

    .line 295
    new-instance v7, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v0

    const/16 v10, 0x2a

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    const-string v15, "find /"

    aput-object v15, v13, v14

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;-><init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;IZ[Ljava/lang/String;)V

    move-object v6, v7

    .line 345
    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v7

    .line 351
    :goto_9
    return-void

    .line 241
    :catch_3
    move-exception v7

    move-object v2, v7

    .line 243
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 258
    :cond_3
    move-object v7, v0

    const/4 v8, 0x3

    const-string v9, "Permissions == null k\n\n"

    invoke-direct {v7, v8, v9}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 281
    :catch_4
    move-exception v7

    move-object v4, v7

    .line 284
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 347
    :catch_5
    move-exception v7

    move-object v6, v7

    .line 348
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

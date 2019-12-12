.class public Lcom/stericson/RootTools/internal/Runner;
.super Ljava/lang/Thread;
.source "Runner.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RootTools::Runner"


# instance fields
.field binaryName:Ljava/lang/String;

.field context:Landroid/content/Context;

.field parameter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Thread;-><init>()V

    .line 44
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/stericson/RootTools/internal/Runner;->context:Landroid/content/Context;

    .line 45
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/stericson/RootTools/internal/Runner;->binaryName:Ljava/lang/String;

    .line 46
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/stericson/RootTools/internal/Runner;->parameter:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private commandWait(Lcom/stericson/RootTools/execution/Command;)V
    .locals 9

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 72
    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->isFinished()Z

    move-result v5

    if-nez v5, :cond_0

    .line 73
    move-object v5, v1

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    :goto_0
    move-object v5, v2

    :try_start_1
    monitor-exit v5

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 76
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 50
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 52
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/stericson/RootTools/internal/Runner;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 59
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 61
    :try_start_1
    new-instance v3, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/stericson/RootTools/internal/Runner;->binaryName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/stericson/RootTools/internal/Runner;->parameter:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v2, v3

    .line 62
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v3

    .line 63
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/internal/Runner;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :cond_0
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 54
    sget-boolean v3, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v3, :cond_1

    .line 55
    const-string v3, "RootTools::Runner"

    const-string v4, "Problem occured while trying to locate private files directory!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 57
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 65
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_1
.end method

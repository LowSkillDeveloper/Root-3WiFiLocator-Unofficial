.class Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;
.super Ljava/lang/Thread;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/execution/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecutionMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/execution/Command;


# direct methods
.method private constructor <init>(Lcom/stericson/RootTools/execution/Command;)V
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootTools/execution/Command;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootTools/execution/Command;Lcom/stericson/RootTools/execution/Command$1;)V
    .locals 5

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;-><init>(Lcom/stericson/RootTools/execution/Command;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 272
    move-object v0, p0

    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootTools/execution/Command;

    iget-boolean v4, v4, Lcom/stericson/RootTools/execution/Command;->finished:Z

    if-nez v4, :cond_1

    .line 274
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootTools/execution/Command;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 276
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootTools/execution/Command;

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootTools/execution/Command;

    iget v5, v5, Lcom/stericson/RootTools/execution/Command;->timeout:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_1
    move-object v4, v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootTools/execution/Command;

    iget-boolean v4, v4, Lcom/stericson/RootTools/execution/Command;->finished:Z

    if-nez v4, :cond_0

    .line 281
    const-string v4, "Timeout Exception has occurred."

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 282
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootTools/execution/Command;

    const-string v5, "Timeout Exception"

    invoke-virtual {v4, v5}, Lcom/stericson/RootTools/execution/Command;->terminate(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_1

    .line 278
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    throw v4

    .line 285
    :cond_1
    return-void
.end method

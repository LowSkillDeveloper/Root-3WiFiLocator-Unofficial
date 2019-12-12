.class Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;
.super Lcom/stericson/RootTools/execution/CommandCapture;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _catch:Z

.field final synthetic this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;IZ[Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    move-object v5, v0

    move v6, v2

    move v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    .line 297
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->_catch:Z

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 10

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    iget-object v6, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 329
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->_catch:Z

    .line 331
    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    const/4 v7, 0x4

    const-string v8, "All tests complete."

    invoke-static {v6, v7, v8}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    .line 332
    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :goto_0
    move-object v6, v3

    :try_start_2
    monitor-exit v6

    .line 342
    return-void

    .line 336
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 338
    move-object v6, v4

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 301
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/stericson/RootTools/execution/CommandCapture;->commandOutput(ILjava/lang/String;)V

    .line 303
    move-object v3, v0

    iget-boolean v3, v3, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->_catch:Z

    if-eqz v3, :cond_0

    .line 304
    const-string v3, "CAUGHT!!!"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 10

    .prologue
    .line 310
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    iget-object v6, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 312
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->_catch:Z

    .line 313
    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    const/4 v7, 0x4

    const-string v8, "All tests complete."

    invoke-static {v6, v7, v8}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    .line 314
    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :goto_0
    move-object v6, v3

    :try_start_2
    monitor-exit v6

    .line 324
    return-void

    .line 318
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 320
    move-object v6, v4

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v5

    throw v6
.end method

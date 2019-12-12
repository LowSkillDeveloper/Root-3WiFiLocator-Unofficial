.class Lcom/stericson/RootTools/execution/Shell$2;
.super Ljava/lang/Thread;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/execution/Shell;->notifyThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/execution/Shell;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/execution/Shell;)V
    .locals 4

    .prologue
    .line 366
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/execution/Shell$2;->this$0:Lcom/stericson/RootTools/execution/Shell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 368
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/stericson/RootTools/execution/Shell$2;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 369
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/stericson/RootTools/execution/Shell$2;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 370
    move-object v3, v1

    monitor-exit v3

    .line 371
    return-void

    .line 370
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

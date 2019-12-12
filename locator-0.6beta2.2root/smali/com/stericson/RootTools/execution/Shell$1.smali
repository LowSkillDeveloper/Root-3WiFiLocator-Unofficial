.class Lcom/stericson/RootTools/execution/Shell$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/execution/Shell;
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
    .line 293
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 298
    move-object v0, p0

    :cond_0
    :goto_0
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 304
    :goto_1
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$200(Lcom/stericson/RootTools/execution/Shell;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 305
    const/4 v4, 0x0

    sput-boolean v4, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    .line 306
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 308
    :cond_1
    move-object v4, v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$400(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 315
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 317
    const-string v4, "Waiting for read and write to catch up before cleanup."

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 308
    :catchall_0
    move-exception v4

    move-object v2, v4

    move-object v4, v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v2

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 354
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 355
    move-object v4, v1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 359
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->access$302(Lcom/stericson/RootTools/execution/Shell;I)I

    move-result v4

    .line 360
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    .line 362
    :goto_3
    return-void

    .line 322
    :cond_2
    move-object v4, v0

    :try_start_6
    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$600(Lcom/stericson/RootTools/execution/Shell;)V

    .line 331
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 332
    const/4 v4, 0x1

    sput-boolean v4, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    .line 333
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stericson/RootTools/execution/Command;

    move-object v1, v4

    .line 334
    move-object v4, v1

    invoke-virtual {v4}, Lcom/stericson/RootTools/execution/Command;->startExecution()V

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 337
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\necho F*D^W@#FGF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$800(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " $?\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 339
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 340
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 341
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$308(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    .line 342
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$808(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    .line 343
    goto/16 :goto_0

    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$200(Lcom/stericson/RootTools/execution/Shell;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    const/4 v4, 0x0

    sput-boolean v4, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    .line 348
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    const-string v5, "\nexit 0\n"

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 349
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 350
    const-string v4, "Closing shell"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 359
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->access$302(Lcom/stericson/RootTools/execution/Shell;I)I

    move-result v4

    .line 360
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    goto/16 :goto_3

    .line 356
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 357
    move-object v4, v1

    :try_start_7
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 359
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->access$302(Lcom/stericson/RootTools/execution/Shell;I)I

    move-result v4

    .line 360
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    .line 361
    goto/16 :goto_3

    .line 359
    :catchall_1
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->access$302(Lcom/stericson/RootTools/execution/Shell;I)I

    move-result v4

    .line 360
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    move-object v4, v3

    throw v4
.end method

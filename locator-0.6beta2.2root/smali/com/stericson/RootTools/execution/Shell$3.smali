.class Lcom/stericson/RootTools/execution/Shell$3;
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
    .line 380
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 383
    move-object v0, p0

    const/4 v8, 0x0

    move-object v1, v8

    .line 385
    :cond_0
    :goto_0
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$200(Lcom/stericson/RootTools/execution/Shell;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 386
    const/4 v8, 0x0

    sput-boolean v8, Lcom/stericson/RootTools/execution/Shell;->isReading:Z

    .line 387
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$1000(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 388
    const/4 v8, 0x1

    sput-boolean v8, Lcom/stericson/RootTools/execution/Shell;->isReading:Z

    .line 393
    move-object v8, v2

    if-nez v8, :cond_3

    .line 458
    :cond_1
    :goto_1
    const-string v8, "Read all output"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 460
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$1200(Lcom/stericson/RootTools/execution/Shell;)Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v8

    .line 461
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$1200(Lcom/stericson/RootTools/execution/Shell;)Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 464
    :goto_2
    move-object v8, v0

    :try_start_2
    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    move-object v9, v0

    iget-object v9, v9, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    .line 465
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    move-object v9, v0

    iget-object v9, v9, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$1000(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/stericson/RootTools/execution/Shell;->access$1300(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Reader;)V

    .line 467
    const-string v8, "Shell destroyed"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 469
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 470
    move-object v8, v1

    if-nez v8, :cond_2

    .line 471
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stericson/RootTools/execution/Command;

    move-object v1, v8

    .line 473
    :cond_2
    move-object v8, v1

    const-string v9, "Unexpected Termination."

    invoke-virtual {v8, v9}, Lcom/stericson/RootTools/execution/Command;->terminated(Ljava/lang/String;)V

    .line 474
    const/4 v8, 0x0

    move-object v1, v8

    .line 475
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$508(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v8

    goto :goto_3

    .line 396
    :cond_3
    move-object v8, v1

    if-nez v8, :cond_5

    .line 397
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_4

    .line 398
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$200(Lcom/stericson/RootTools/execution/Shell;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 399
    goto/16 :goto_1

    .line 403
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stericson/RootTools/execution/Command;

    move-object v1, v8

    .line 411
    :cond_5
    move-object v8, v2

    const-string v9, "F*D^W@#FGF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    .line 414
    move v8, v3

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 418
    move-object v8, v1

    move-object v9, v1

    iget v9, v9, Lcom/stericson/RootTools/execution/Command;->id:I

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/stericson/RootTools/execution/Command;->output(ILjava/lang/String;)V

    .line 420
    :cond_6
    move v8, v3

    if-lez v8, :cond_7

    .line 424
    move-object v8, v1

    move-object v9, v1

    iget v9, v9, Lcom/stericson/RootTools/execution/Command;->id:I

    move-object v10, v2

    const/4 v11, 0x0

    move v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/stericson/RootTools/execution/Command;->output(ILjava/lang/String;)V

    .line 426
    :cond_7
    move v8, v3

    if-ltz v8, :cond_8

    .line 427
    move-object v8, v2

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 428
    move-object v8, v2

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 430
    move-object v8, v4

    array-length v8, v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_8

    move-object v8, v4

    const/4 v9, 0x1

    aget-object v8, v8, v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v8, :cond_8

    .line 431
    const/4 v8, 0x0

    move v5, v8

    .line 434
    move-object v8, v4

    const/4 v9, 0x1

    :try_start_3
    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    move v5, v8

    .line 438
    :goto_4
    const/4 v8, -0x1

    move v6, v8

    .line 441
    move-object v8, v4

    const/4 v9, 0x2

    :try_start_4
    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v8

    move v6, v8

    .line 445
    :goto_5
    move v8, v5

    move-object v9, v0

    :try_start_5
    iget-object v9, v9, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$1100(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 446
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Lcom/stericson/RootTools/execution/Command;->setExitCode(I)V

    .line 447
    move-object v8, v1

    invoke-virtual {v8}, Lcom/stericson/RootTools/execution/Command;->commandFinished()V

    .line 448
    const/4 v8, 0x0

    move-object v1, v8

    .line 450
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$508(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v8

    .line 451
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$1108(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v8

    .line 452
    goto/16 :goto_0

    .line 435
    :catch_0
    move-exception v8

    move-object v6, v8

    goto :goto_4

    .line 442
    :catch_1
    move-exception v8

    move-object v7, v8

    goto :goto_5

    .line 456
    :cond_8
    goto/16 :goto_0

    .line 462
    :catch_2
    move-exception v8

    move-object v2, v8

    goto/16 :goto_2

    .line 478
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/stericson/RootTools/execution/Shell;->access$502(Lcom/stericson/RootTools/execution/Shell;I)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v8

    .line 483
    :goto_6
    return-void

    .line 480
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 481
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    move-object v10, v1

    invoke-static {v8, v9, v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_6
.end method

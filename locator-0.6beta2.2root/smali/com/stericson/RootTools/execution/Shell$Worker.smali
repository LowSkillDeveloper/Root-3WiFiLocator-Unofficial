.class public Lcom/stericson/RootTools/execution/Shell$Worker;
.super Ljava/lang/Thread;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field public exit:I

.field public in:Ljava/io/BufferedReader;

.field public out:Ljava/io/OutputStreamWriter;

.field public proc:Ljava/lang/Process;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;)V
    .locals 6

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Thread;-><init>()V

    .line 565
    move-object v4, v0

    const/16 v5, -0x38f

    iput v5, v4, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    .line 572
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Shell$Worker;->proc:Ljava/lang/Process;

    .line 573
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Shell$Worker;->in:Ljava/io/BufferedReader;

    .line 574
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    .line 575
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/stericson/RootTools/execution/Shell$1;)V
    .locals 9

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/stericson/RootTools/execution/Shell$Worker;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method private setShellOom()V
    .locals 8

    .prologue
    .line 625
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$Worker;->proc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v1, v4

    .line 626
    const/4 v4, 0x0

    move-object v2, v4

    .line 628
    move-object v4, v1

    :try_start_1
    const-string v5, "pid"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v2, v4

    .line 632
    :goto_0
    move-object v4, v2

    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 633
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell$Worker;->proc:Ljava/lang/Process;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    .line 634
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(echo -17 > /proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/oom_adj) &> /dev/null\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 635
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    const-string v5, "(echo -17 > /proc/$$/oom_adj) &> /dev/null\n"

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 636
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 639
    :goto_1
    return-void

    .line 629
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 630
    move-object v4, v1

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 637
    :catch_1
    move-exception v4

    move-object v1, v4

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 590
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    const-string v3, "echo Started\n"

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 591
    move-object v2, v0

    iget-object v2, v2, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 594
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/stericson/RootTools/execution/Shell$Worker;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 595
    move-object v2, v1

    if-nez v2, :cond_0

    .line 596
    new-instance v2, Ljava/io/EOFException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 609
    move-object v2, v0

    const/16 v3, -0x2a

    iput v3, v2, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    .line 610
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 611
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/execution/Shell;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    :goto_1
    return-void

    .line 598
    :cond_0
    :try_start_1
    const-string v2, ""

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    goto :goto_0

    .line 600
    :cond_1
    const-string v2, "Started"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    .line 602
    move-object v2, v0

    invoke-direct {v2}, Lcom/stericson/RootTools/execution/Shell$Worker;->setShellOom()V

    .line 614
    goto :goto_1

    .line 606
    :cond_2
    const-string v2, "unkown error occured."

    invoke-static {v2}, Lcom/stericson/RootTools/execution/Shell;->access$1402(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 607
    goto :goto_0

    .line 613
    :cond_3
    const-string v2, "RootAccess denied?."

    invoke-static {v2}, Lcom/stericson/RootTools/execution/Shell;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

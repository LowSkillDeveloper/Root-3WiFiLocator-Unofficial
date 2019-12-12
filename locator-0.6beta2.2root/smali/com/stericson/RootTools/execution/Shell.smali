.class public Lcom/stericson/RootTools/execution/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/execution/Shell$Worker;
    }
.end annotation


# static fields
.field private static customShell:Lcom/stericson/RootTools/execution/Shell; = null

.field private static error:Ljava/lang/String; = null

.field public static isExecuting:Z = false

.field public static isReading:Z = false

.field private static rootShell:Lcom/stericson/RootTools/execution/Shell; = null

.field private static shell:Lcom/stericson/RootTools/execution/Shell; = null

.field private static shellTimeout:I = 0x0

.field private static final token:Ljava/lang/String; = "F*D^W@#FGF"


# instance fields
.field private close:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericson/RootTools/execution/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/BufferedReader;

.field private input:Ljava/lang/Runnable;

.field private isCleaning:Z

.field private maxCommands:I

.field private final out:Ljava/io/OutputStreamWriter;

.field private output:Ljava/lang/Runnable;

.field private final proc:Ljava/lang/Process;

.field private read:I

.field private totalExecuted:I

.field private totalRead:I

.field private write:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/execution/Shell;->error:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 50
    const/16 v0, 0x61a8

    sput v0, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stericson/RootTools/execution/Shell;->isReading:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    .line 42
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/stericson/RootTools/execution/Shell;->close:Z

    .line 54
    move-object v5, v0

    const/16 v6, 0x3e8

    iput v6, v5, Lcom/stericson/RootTools/execution/Shell;->maxCommands:I

    .line 55
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/stericson/RootTools/execution/Shell;->read:I

    .line 56
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/stericson/RootTools/execution/Shell;->write:I

    .line 57
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/stericson/RootTools/execution/Shell;->totalExecuted:I

    .line 58
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/stericson/RootTools/execution/Shell;->totalRead:I

    .line 59
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/stericson/RootTools/execution/Shell;->isCleaning:Z

    .line 293
    move-object v5, v0

    new-instance v6, Lcom/stericson/RootTools/execution/Shell$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/stericson/RootTools/execution/Shell$1;-><init>(Lcom/stericson/RootTools/execution/Shell;)V

    iput-object v6, v5, Lcom/stericson/RootTools/execution/Shell;->input:Ljava/lang/Runnable;

    .line 380
    move-object v5, v0

    new-instance v6, Lcom/stericson/RootTools/execution/Shell$3;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/stericson/RootTools/execution/Shell$3;-><init>(Lcom/stericson/RootTools/execution/Shell;)V

    iput-object v6, v5, Lcom/stericson/RootTools/execution/Shell;->output:Ljava/lang/Runnable;

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting shell: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 66
    move-object v5, v0

    new-instance v6, Ljava/lang/ProcessBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6

    iput-object v6, v5, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    .line 67
    move-object v5, v0

    new-instance v6, Ljava/io/BufferedReader;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/io/InputStreamReader;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v6, v5, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    .line 68
    move-object v5, v0

    new-instance v6, Ljava/io/OutputStreamWriter;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    .line 73
    new-instance v5, Lcom/stericson/RootTools/execution/Shell$Worker;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    move-object v8, v0

    iget-object v8, v8, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    move-object v9, v0

    iget-object v9, v9, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/stericson/RootTools/execution/Shell$Worker;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/stericson/RootTools/execution/Shell$1;)V

    move-object v2, v5

    .line 74
    move-object v5, v2

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Shell$Worker;->start()V

    .line 85
    move-object v5, v2

    :try_start_0
    sget v6, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/stericson/RootTools/execution/Shell$Worker;->join(J)V

    .line 90
    move-object v5, v2

    iget v5, v5, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, -0x38f

    if-ne v5, v6, :cond_0

    .line 93
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :goto_0
    move-object v5, v0

    move-object v6, v0

    :try_start_2
    iget-object v6, v6, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    invoke-direct {v5, v6}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    .line 97
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v6}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V

    .line 99
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    sget-object v7, Lcom/stericson/RootTools/execution/Shell;->error:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 135
    move-object v5, v2

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Shell$Worker;->interrupt()V

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 137
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v5

    .line 94
    :catch_1
    move-exception v5

    move-object v3, v5

    goto :goto_0

    .line 104
    :cond_0
    move-object v5, v2

    :try_start_3
    iget v5, v5, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v6, -0x2a

    if-ne v5, v6, :cond_1

    .line 107
    move-object v5, v0

    :try_start_4
    iget-object v5, v5, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 110
    :goto_1
    move-object v5, v0

    move-object v6, v0

    :try_start_5
    iget-object v6, v6, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    invoke-direct {v5, v6}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    .line 111
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v6}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V

    .line 113
    new-instance v5, Lcom/stericson/RootTools/exceptions/RootDeniedException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "Root Access Denied"

    invoke-direct {v6, v7}, Lcom/stericson/RootTools/exceptions/RootDeniedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :catch_2
    move-exception v5

    move-object v3, v5

    goto :goto_1

    .line 126
    :cond_1
    new-instance v5, Ljava/lang/Thread;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Lcom/stericson/RootTools/execution/Shell;->input:Ljava/lang/Runnable;

    const-string v8, "Shell Input"

    invoke-direct {v6, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v3, v5

    .line 127
    move-object v5, v3

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 128
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 130
    new-instance v5, Ljava/lang/Thread;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Lcom/stericson/RootTools/execution/Shell;->output:Ljava/lang/Runnable;

    const-string v8, "Shell Output"

    invoke-direct {v6, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v4, v5

    .line 131
    move-object v5, v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 132
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 139
    return-void
.end method

.method static synthetic access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/BufferedReader;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1100(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/stericson/RootTools/execution/Shell;->totalRead:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1108(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/stericson/RootTools/execution/Shell;->totalRead:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/stericson/RootTools/execution/Shell;->totalRead:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1200(Lcom/stericson/RootTools/execution/Shell;)Ljava/lang/Process;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1300(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Reader;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    return-void
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    sput-object v2, Lcom/stericson/RootTools/execution/Shell;->error:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Lcom/stericson/RootTools/execution/Shell;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/stericson/RootTools/execution/Shell;->close:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/stericson/RootTools/execution/Shell;->write:I

    move v0, v1

    return v0
.end method

.method static synthetic access$302(Lcom/stericson/RootTools/execution/Shell;I)I
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/stericson/RootTools/execution/Shell;->write:I

    move v0, v2

    return v0
.end method

.method static synthetic access$308(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/stericson/RootTools/execution/Shell;->write:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/stericson/RootTools/execution/Shell;->write:I

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/stericson/RootTools/execution/Shell;->maxCommands:I

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/stericson/RootTools/execution/Shell;->read:I

    move v0, v1

    return v0
.end method

.method static synthetic access$502(Lcom/stericson/RootTools/execution/Shell;I)I
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/stericson/RootTools/execution/Shell;->read:I

    move v0, v2

    return v0
.end method

.method static synthetic access$508(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/stericson/RootTools/execution/Shell;->read:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/stericson/RootTools/execution/Shell;->read:I

    move v0, v1

    return v0
.end method

.method static synthetic access$600(Lcom/stericson/RootTools/execution/Shell;)V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/stericson/RootTools/execution/Shell;->cleanCommands()V

    return-void
.end method

.method static synthetic access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$800(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/stericson/RootTools/execution/Shell;->totalExecuted:I

    move v0, v1

    return v0
.end method

.method static synthetic access$808(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/stericson/RootTools/execution/Shell;->totalExecuted:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/stericson/RootTools/execution/Shell;->totalExecuted:I

    move v0, v1

    return v0
.end method

.method static synthetic access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V

    return-void
.end method

.method private cleanCommands()V
    .locals 7

    .prologue
    .line 167
    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/stericson/RootTools/execution/Shell;->isCleaning:Z

    .line 168
    move-object v3, v0

    iget v3, v3, Lcom/stericson/RootTools/execution/Shell;->maxCommands:I

    move-object v4, v0

    iget v4, v4, Lcom/stericson/RootTools/execution/Shell;->maxCommands:I

    const/4 v5, 0x4

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move v1, v3

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 170
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 171
    move-object v3, v0

    iget-object v3, v3, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/stericson/RootTools/execution/Shell;->read:I

    .line 175
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/stericson/RootTools/execution/Shell;->write:I

    .line 176
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/stericson/RootTools/execution/Shell;->isCleaning:Z

    .line 177
    return-void
.end method

.method public static closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeShell()V

    .line 232
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeRootShell()V

    .line 233
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeCustomShell()V

    .line 234
    return-void
.end method

.method public static closeCustomShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Shell;->close()V

    .line 216
    goto :goto_0
.end method

.method private closeQuietly(Ljava/io/Reader;)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 182
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method private closeQuietly(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 190
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public static closeRootShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Shell;->close()V

    .line 222
    goto :goto_0
.end method

.method public static closeShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Shell;->close()V

    .line 228
    goto :goto_0
.end method

.method public static getOpenShell()Lcom/stericson/RootTools/execution/Shell;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 250
    :goto_0
    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v0, :cond_1

    .line 248
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0

    .line 250
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0
.end method

.method public static isAnyShellOpen()Z
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    .line 277
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v0, :cond_2

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 282
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomShellOpen()Z
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRootShellOpen()Z
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShellOpen()Z
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static runCommand(Lcom/stericson/RootTools/execution/Command;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 491
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v1

    .line 492
    return-void
.end method

.method public static runRootCommand(Lcom/stericson/RootTools/execution/Command;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 487
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v1

    .line 488
    return-void
.end method

.method public static startCustomShell(Ljava/lang/String;)Lcom/stericson/RootTools/execution/Shell;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 529
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lcom/stericson/RootTools/execution/Shell;->startCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static startCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    move v1, p1

    move v2, v1

    sput v2, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 535
    sget-object v2, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v2, :cond_0

    .line 536
    const-string v2, "Starting Custom Shell!"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 537
    new-instance v2, Lcom/stericson/RootTools/execution/Shell;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/execution/Shell;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 541
    :goto_0
    sget-object v2, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    move-object v0, v2

    return-object v0

    .line 539
    :cond_0
    const-string v2, "Using Existing Custom Shell!"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startRootShell()Lcom/stericson/RootTools/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 495
    const/16 v0, 0x4e20

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/stericson/RootTools/execution/Shell;->startRootShell(II)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startRootShell(I)Lcom/stericson/RootTools/execution/Shell;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 499
    move v0, p0

    move v1, v0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/stericson/RootTools/execution/Shell;->startRootShell(II)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static startRootShell(II)Lcom/stericson/RootTools/execution/Shell;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 504
    move v0, p0

    move v1, p1

    move v5, v0

    sput v5, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 506
    sget-object v5, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v5, :cond_2

    .line 507
    const-string v5, "Starting Root Shell!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 508
    const-string v5, "su"

    move-object v2, v5

    .line 510
    const/4 v5, 0x0

    move v3, v5

    .line 511
    :goto_0
    sget-object v5, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v5, :cond_1

    .line 513
    :try_start_0
    new-instance v5, Lcom/stericson/RootTools/execution/Shell;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/stericson/RootTools/execution/Shell;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    goto :goto_0

    .line 514
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 515
    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move v6, v1

    if-lt v5, v6, :cond_0

    .line 516
    const-string v5, "IOException, could not start shell"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 517
    move-object v5, v4

    throw v5

    .line 519
    :cond_0
    goto :goto_0

    .line 525
    :cond_1
    :goto_1
    sget-object v5, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    move-object v0, v5

    return-object v0

    .line 522
    :cond_2
    const-string v5, "Using Existing Root Shell!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static startShell()Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 545
    const/16 v0, 0x4e20

    invoke-static {v0}, Lcom/stericson/RootTools/execution/Shell;->startShell(I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startShell(I)Lcom/stericson/RootTools/execution/Shell;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 549
    move v0, p0

    move v2, v0

    sput v2, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 552
    :try_start_0
    sget-object v2, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v2, :cond_0

    .line 553
    const-string v2, "Starting Shell!"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 554
    new-instance v2, Lcom/stericson/RootTools/execution/Shell;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "/system/bin/sh"

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/execution/Shell;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    .line 557
    :goto_0
    sget-object v2, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    move-object v0, v2

    return-object v0

    .line 556
    :cond_0
    const-string v2, "Using Existing Shell!"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/stericson/RootTools/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 560
    new-instance v2, Ljava/io/IOException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v2
.end method


# virtual methods
.method public add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/stericson/RootTools/execution/Shell;->close:Z

    if-eqz v2, :cond_0

    .line 144
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unable to add commands to a closed shell"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/stericson/RootTools/execution/Shell;->isCleaning:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 153
    move-object v2, v0

    invoke-virtual {v2}, Lcom/stericson/RootTools/execution/Shell;->notifyThreads()V

    .line 155
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-object v3, v0

    sget-object v4, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-ne v3, v4, :cond_1

    .line 197
    const/4 v3, 0x0

    sput-object v3, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    .line 202
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 207
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lcom/stericson/RootTools/execution/Shell;->close:Z

    .line 208
    move-object v3, v0

    invoke-virtual {v3}, Lcom/stericson/RootTools/execution/Shell;->notifyThreads()V

    .line 209
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    return-void

    .line 198
    :cond_1
    move-object v3, v0

    sget-object v4, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-ne v3, v4, :cond_2

    .line 199
    const/4 v3, 0x0

    sput-object v3, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0

    .line 200
    :cond_2
    move-object v3, v0

    sget-object v4, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-ne v3, v4, :cond_0

    .line 201
    const/4 v3, 0x0

    sput-object v3, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getCommandQueuePosition(Lcom/stericson/RootTools/execution/Command;)I
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getCommandQueuePositionString(Lcom/stericson/RootTools/execution/Command;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command is in position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->getCommandQueuePosition(Lcom/stericson/RootTools/execution/Command;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currently executing command at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/stericson/RootTools/execution/Shell;->write:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected notifyThreads()V
    .locals 6

    .prologue
    .line 366
    move-object v0, p0

    new-instance v2, Lcom/stericson/RootTools/execution/Shell$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/execution/Shell$2;-><init>(Lcom/stericson/RootTools/execution/Shell;)V

    move-object v1, v2

    .line 374
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 375
    return-void
.end method

.method public useCWD(Landroid/content/Context;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, -0x1

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

    const-string v11, "cd "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v2

    .line 164
    return-void
.end method

.class public abstract Lcom/stericson/RootTools/execution/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/execution/Command$1;,
        Lcom/stericson/RootTools/execution/Command$CommandHandler;,
        Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;
    }
.end annotation


# instance fields
.field command:[Ljava/lang/String;

.field context:Landroid/content/Context;

.field executing:Z

.field executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

.field exitCode:I

.field finished:Z

.field handlerEnabled:Z

.field id:I

.field javaCommand:Z

.field mHandler:Landroid/os/Handler;

.field terminated:Z

.field timeout:I


# direct methods
.method public varargs constructor <init>(IIZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 125
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v5

    invoke-direct {v6, v7, v8, v9}, Lcom/stericson/RootTools/execution/Command;-><init>(II[Ljava/lang/String;)V

    .line 126
    move-object v6, v0

    move v7, v3

    iput-boolean v7, v6, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 127
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 128
    return-void
.end method

.method public varargs constructor <init>(II[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    .line 39
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    .line 40
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 42
    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 43
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 44
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 45
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 46
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    .line 47
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    .line 48
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    .line 49
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 50
    move-object v4, v0

    sget v5, Lcom/stericson/RootTools/RootTools;->default_Command_Timeout:I

    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 90
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 91
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 92
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 94
    move-object v4, v0

    sget-boolean v5, Lcom/stericson/RootTools/RootTools;->handlerEnabled:Z

    invoke-direct {v4, v5}, Lcom/stericson/RootTools/execution/Command;->createHandler(Z)V

    .line 95
    return-void
.end method

.method public varargs constructor <init>(IZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 103
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lcom/stericson/RootTools/execution/Command;-><init>(I[Ljava/lang/String;)V

    .line 104
    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 105
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public varargs constructor <init>(IZZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v5

    invoke-direct {v6, v7, v8, v9}, Lcom/stericson/RootTools/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 115
    move-object v6, v0

    move v7, v3

    iput-boolean v7, v6, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 116
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public varargs constructor <init>(IZ[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    .line 39
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    .line 40
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 42
    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 43
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 44
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 45
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 46
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    .line 47
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    .line 48
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    .line 49
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 50
    move-object v4, v0

    sget v5, Lcom/stericson/RootTools/RootTools;->default_Command_Timeout:I

    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 76
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 77
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 79
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Lcom/stericson/RootTools/execution/Command;->createHandler(Z)V

    .line 80
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    .line 39
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    .line 40
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 42
    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v3, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 44
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 45
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 46
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    .line 47
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    .line 48
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 50
    move-object v3, v0

    sget v4, Lcom/stericson/RootTools/RootTools;->default_Command_Timeout:I

    iput v4, v3, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 62
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 63
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 65
    move-object v3, v0

    sget-boolean v4, Lcom/stericson/RootTools/RootTools;->handlerEnabled:Z

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/execution/Command;->createHandler(Z)V

    .line 66
    return-void
.end method

.method private createHandler(Z)V
    .locals 8

    .prologue
    .line 158
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    .line 160
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "CommandHandler created"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 162
    move-object v2, v0

    new-instance v3, Lcom/stericson/RootTools/execution/Command$CommandHandler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/stericson/RootTools/execution/Command$CommandHandler;-><init>(Lcom/stericson/RootTools/execution/Command;Lcom/stericson/RootTools/execution/Command$1;)V

    iput-object v3, v2, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v2, "CommandHandler not created"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract commandCompleted(II)V
.end method

.method protected commandFinished()V
    .locals 9

    .prologue
    .line 137
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    if-nez v5, :cond_0

    .line 138
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v1, v6

    monitor-enter v5

    .line 139
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    if-eqz v5, :cond_1

    .line 140
    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    move-object v2, v5

    .line 141
    new-instance v5, Landroid/os/Bundle;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v3, v5

    .line 142
    move-object v5, v3

    const-string v6, "action"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v5

    .line 150
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/stericson/RootTools/execution/Command;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " finished."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 151
    move-object v5, v0

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->finishCommand()V

    .line 152
    move-object v5, v1

    monitor-exit v5

    .line 154
    :cond_0
    return-void

    .line 147
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/stericson/RootTools/execution/Command;->id:I

    move-object v7, v0

    iget v7, v7, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    invoke-virtual {v5, v6, v7}, Lcom/stericson/RootTools/execution/Command;->commandCompleted(II)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public abstract commandOutput(ILjava/lang/String;)V
.end method

.method public abstract commandTerminated(ILjava/lang/String;)V
.end method

.method protected finishCommand()V
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 132
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 133
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 134
    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 9

    .prologue
    .line 170
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 172
    move-object v4, v0

    iget-boolean v4, v4, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    if-eqz v4, :cond_1

    .line 173
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 174
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 179
    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dalvikvm -cp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/anbuild.dex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " com.android.internal.util.WithFramework"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " com.stericson.RootTools.containers.RootClass "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 184
    move-object v4, v1

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 188
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 189
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 190
    move-object v4, v1

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getExitCode()I
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    move v0, v1

    return v0
.end method

.method public isExecuting()Z
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/stericson/RootTools/execution/Command;->executing:Z

    move v0, v1

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/stericson/RootTools/execution/Command;->finished:Z

    move v0, v1

    return v0
.end method

.method public isHandlerEnabled()Z
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    move v0, v1

    return v0
.end method

.method protected output(ILjava/lang/String;)V
    .locals 9

    .prologue
    .line 257
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    if-eqz v5, :cond_0

    .line 258
    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    move-object v3, v5

    .line 259
    new-instance v5, Landroid/os/Bundle;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v4, v5

    .line 260
    move-object v5, v4

    const-string v6, "action"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    move-object v5, v4

    const-string v6, "text"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 263
    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v5

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/stericson/RootTools/execution/Command;->commandOutput(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected setExitCode(I)V
    .locals 7

    .prologue
    .line 213
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 214
    move-object v4, v0

    move v5, v1

    :try_start_0
    iput v5, v4, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    .line 215
    move-object v4, v2

    monitor-exit v4

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method protected startExecution()V
    .locals 7

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;-><init>(Lcom/stericson/RootTools/execution/Command;Lcom/stericson/RootTools/execution/Command$1;)V

    iput-object v2, v1, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    .line 220
    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->setPriority(I)V

    .line 221
    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    invoke-virtual {v1}, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->start()V

    .line 222
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 223
    return-void
.end method

.method public terminate(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeAll()V

    .line 228
    const-string v3, "Terminating all shells."

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 229
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/execution/Command;->terminated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method protected terminated(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    monitor-enter v6

    .line 237
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-boolean v6, v6, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    if-eqz v6, :cond_0

    .line 238
    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    move-object v3, v6

    .line 239
    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v4, v6

    .line 240
    move-object v6, v4

    const-string v7, "action"

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    move-object v6, v4

    const-string v7, "text"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 243
    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    .line 249
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/stericson/RootTools/execution/Command;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not finish because it was terminated. Termination reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 250
    move-object v6, v0

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/execution/Command;->setExitCode(I)V

    .line 251
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    .line 252
    move-object v6, v0

    invoke-virtual {v6}, Lcom/stericson/RootTools/execution/Command;->finishCommand()V

    .line 253
    move-object v6, v2

    monitor-exit v6

    .line 254
    return-void

    .line 246
    :cond_0
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/stericson/RootTools/execution/Command;->id:I

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/stericson/RootTools/execution/Command;->commandTerminated(ILjava/lang/String;)V

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

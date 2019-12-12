.class Lcom/stericson/RootTools/execution/Command$CommandHandler;
.super Landroid/os/Handler;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/execution/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandHandler"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final COMMAND_COMPLETED:I = 0x2

.field public static final COMMAND_OUTPUT:I = 0x1

.field public static final COMMAND_TERMINATED:I = 0x3

.field public static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/execution/Command;


# direct methods
.method private constructor <init>(Lcom/stericson/RootTools/execution/Command;)V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/execution/Command$CommandHandler;->this$0:Lcom/stericson/RootTools/execution/Command;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootTools/execution/Command;Lcom/stericson/RootTools/execution/Command$1;)V
    .locals 5

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/execution/Command$CommandHandler;-><init>(Lcom/stericson/RootTools/execution/Command;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 298
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 300
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 302
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Command$CommandHandler;->this$0:Lcom/stericson/RootTools/execution/Command;

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command$CommandHandler;->this$0:Lcom/stericson/RootTools/execution/Command;

    iget v5, v5, Lcom/stericson/RootTools/execution/Command;->id:I

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/stericson/RootTools/execution/Command;->commandOutput(ILjava/lang/String;)V

    .line 303
    goto :goto_0

    .line 305
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Command$CommandHandler;->this$0:Lcom/stericson/RootTools/execution/Command;

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command$CommandHandler;->this$0:Lcom/stericson/RootTools/execution/Command;

    iget v5, v5, Lcom/stericson/RootTools/execution/Command;->id:I

    move-object v6, v0

    iget-object v6, v6, Lcom/stericson/RootTools/execution/Command$CommandHandler;->this$0:Lcom/stericson/RootTools/execution/Command;

    iget v6, v6, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    invoke-virtual {v4, v5, v6}, Lcom/stericson/RootTools/execution/Command;->commandCompleted(II)V

    .line 306
    goto :goto_0

    .line 308
    :pswitch_2
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/execution/Command$CommandHandler;->this$0:Lcom/stericson/RootTools/execution/Command;

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/execution/Command$CommandHandler;->this$0:Lcom/stericson/RootTools/execution/Command;

    iget v5, v5, Lcom/stericson/RootTools/execution/Command;->id:I

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/stericson/RootTools/execution/Command;->commandTerminated(ILjava/lang/String;)V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

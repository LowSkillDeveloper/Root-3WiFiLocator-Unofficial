.class Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/MyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;)Lcom/example/WiFiPasswordSearcher/MyActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$L1000016()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 391
    :goto_0
    return-void

    .line 382
    :cond_0
    sget-object v5, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 384
    :cond_1
    new-instance v5, Landroid/app/ProgressDialog;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 385
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 386
    move-object v5, v3

    const-string v6, "Searching in 3WiFi..."

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 388
    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    invoke-static {v5}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$L1000012(Lcom/example/WiFiPasswordSearcher/MyActivity;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 389
    move-object v5, v3

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 391
    new-instance v5, Ljava/lang/Thread;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;Landroid/app/ProgressDialog;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

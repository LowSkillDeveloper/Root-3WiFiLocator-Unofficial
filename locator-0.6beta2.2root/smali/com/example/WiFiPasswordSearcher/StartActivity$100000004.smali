.class Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/StartActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;)Lcom/example/WiFiPasswordSearcher/StartActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

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

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroid/app/ProgressDialog;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 102
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 103
    move-object v5, v3

    const-string v6, "Signing in..."

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 104
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    move-object v5, v3

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 107
    new-instance v5, Ljava/lang/Thread;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;Landroid/app/ProgressDialog;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    return-void
.end method

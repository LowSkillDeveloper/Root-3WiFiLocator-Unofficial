.class Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;

.field private final val$dProccess:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;Landroid/app/ProgressDialog;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;->val$dProccess:Landroid/app/ProgressDialog;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;)Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;

    invoke-static {v2}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;)Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$1000043(Lcom/example/WiFiPasswordSearcher/MyActivity;)V

    .line 395
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005$100000004;->val$dProccess:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
